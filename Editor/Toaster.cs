#nullable enable

using System;
using System.Linq;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using Editor;
using Sandbox;
using Sandbox.UI;

public static class Toaster {
    static CompileNotice? current;

	public static void CompileStarted(string name = "Haxe", string? subtitle = null) {
		MainThread.Queue(() => {
			current = GetOrCreate(Key(name));
			current.SetCompiling(name, subtitle);

			if (subtitle != null)
				HaxeBox.logger.Info(subtitle);
		});
	}

	public static void CompileProgress(string name, string subtitle) {
		MainThread.Queue(() => {
			current = GetOrCreate(Key(name));
			current.SetProgress(subtitle);
		});
	}

	public static void CompileSucceeded(string name = "Haxe", string? subtitle = null, float removeAfterSeconds = 1.0f) {
		MainThread.Queue(() => {
			current = GetOrCreate(Key(name));
			current.SetSuccess(name, subtitle);
			RemoveCurrent(removeAfterSeconds);

			if (EditorPreferences.NotificationSounds)
				EditorUtility.PlayRawSound("sounds/editor/success.wav");

			if (subtitle != null)
				HaxeBox.logger.Info(subtitle);
		});
	}

	public static void CompileFailed(
		string name = "Haxe",
		IEnumerable<HaxeDiag>? diagnostics = null,
		string? subtitle = null,
		float? removeAfterSeconds = null) {
		MainThread.Queue(() => {
			current = GetOrCreate(Key(name));
			var timeout = removeAfterSeconds ?? EditorPreferences.ErrorNotificationTimeout;

			current.SetFailed(name, subtitle, diagnostics);

			RemoveCurrent(timeout);

			if (EditorPreferences.NotificationSounds)
				EditorUtility.PlayRawSound("sounds/editor/fail.wav");

			if (subtitle != null)
				HaxeBox.logger.Error(subtitle);

			if (diagnostics != null) {
				foreach (var d in diagnostics) {
					if (d.FilePath != null)
						HaxeBox.logger.Error($"{d.FilePath}:{d.Line}:{d.Column}: {d.Message}");
					else
						HaxeBox.logger.Error(d.Message);
				}
			}
		});
	}

	public static void CompileFailed(
		string name,
		IEnumerable<string> rawLines,
		string? subtitle = null,
		float? removeAfterSeconds = null,
		HaxeDiagSeverity severity = HaxeDiagSeverity.Error) {
		var diags = rawLines.Select(l => HaxeDiagParse.FromLine(l, severity));
		CompileFailed(name, diags, subtitle, removeAfterSeconds);
	}

    public static void RemoveCurrent(float after = 1.0f) {
        if (current != null)
            ToastManager.Remove(current, after);
    }

    private static string? ResolveForCodeEditor(string? path) {
        if (string.IsNullOrWhiteSpace(path))
            return null;

        path = path.Replace('\\', '/');

        if (path.Length >= 3 && char.IsLetter(path[0]) && path[1] == ':' && (path[2] == '/' || path[2] == '\\'))
            return path.Replace('/', System.IO.Path.DirectorySeparatorChar);

        if (path.StartsWith("/"))
            return path;

        var combined = System.IO.Path.Combine(HaxeBox.root, path);
        if (System.IO.File.Exists(combined))
            return combined;
            
        return path;
    }

	public enum HaxeDiagSeverity {
		Info,
		Warning,
		Error
	}

	public readonly record struct HaxeDiag(
		HaxeDiagSeverity Severity,
		string Message,
		string? FilePath = null,
		int Line = 0,
		int Column = 0
	);

	public static class HaxeDiagParse {
		// C:\proj\Main.hx:123: characters 5-12 : Unknown identifier foo
		private static readonly Regex RxCharacters =
			new(@"^(?<file>.+?):(?<line>\d+):\s*characters\s*(?<c1>\d+)-(?<c2>\d+)\s*:\s*(?<msg>.+)$",
				RegexOptions.Compiled);

		// /path/Main.hx:123:45: Something bad
		private static readonly Regex RxLineCol =
			new(@"^(?<file>.+?):(?<line>\d+):(?<col>\d+):\s*(?<msg>.+)$",
				RegexOptions.Compiled);

		// /path/Main.hx:123: Something bad (no col)
		private static readonly Regex RxLineOnly =
			new(@"^(?<file>.+?):(?<line>\d+):\s*(?<msg>.+)$",
				RegexOptions.Compiled);

		public static HaxeDiag FromLine(string line, HaxeDiagSeverity severity = HaxeDiagSeverity.Error) {
			if (string.IsNullOrWhiteSpace(line))
				return new HaxeDiag(severity, "");

			var m1 = RxCharacters.Match(line);
			if (m1.Success) {
				return new HaxeDiag(
					severity,
					m1.Groups["msg"].Value.Trim(),
					m1.Groups["file"].Value.Trim(),
					SafeInt(m1.Groups["line"].Value),
					SafeInt(m1.Groups["c1"].Value) + 1
				);
			}

			var m2 = RxLineCol.Match(line);
			if (m2.Success) {
				return new HaxeDiag(
					severity,
					m2.Groups["msg"].Value.Trim(),
					m2.Groups["file"].Value.Trim(),
					SafeInt(m2.Groups["line"].Value),
					SafeInt(m2.Groups["col"].Value)
				);
			}

			var m3 = RxLineOnly.Match(line);
			if (m3.Success) {
				return new HaxeDiag(
					severity,
					m3.Groups["msg"].Value.Trim(),
					m3.Groups["file"].Value.Trim(),
					SafeInt(m3.Groups["line"].Value),
					1
				);
			}

			return new HaxeDiag(severity, line.Trim());
		}

		private static int SafeInt(string s) {
			return int.TryParse(s, out var v) ? v : 0;
		}
	}

	// internals -----------------------------

	private static string Key(string name) => $"haxe_compile::{name}";

	private static CompileNotice GetOrCreate(string key) {
		var toast = ToastManager.All.OfType<CompileNotice>().FirstOrDefault(x => x.Key == key);
		if (toast is null)
			toast = new CompileNotice(key);
		return toast;
	}

	private sealed class CompileNotice : ToastWidget {
		public string Key { get; }

		private bool _isErrored;

		// Used for Shift+Click behavior (open all files)
		private readonly List<(string file, int line, int col)> _jumpTargets = new();

		public CompileNotice(string key) {
			Key = key;

			Icon = "build_circle";
			Position = 10;

			FixedWidth = 300;
			FixedHeight = 76;

			Reset();
		}

		protected override Vector2 SizeHint() => 1000;

		public override bool WantsVisible {
			get {
				if (EditorPreferences.CompileNotifications == EditorPreferences.NotificationLevel.ShowAlways)
					return true;

				if (EditorPreferences.CompileNotifications == EditorPreferences.NotificationLevel.ShowOnError)
					return _isErrored;

				return false;
			}
		}

		public override void Reset() {
			base.Reset();

			_isErrored = false;
			IsRunning = false;

			BorderColor = Theme.Primary;
			SetBodyWidget(null);

			FixedWidth = 300;
			FixedHeight = 76;

			_jumpTargets.Clear();
			ToolTip = null;
		}

		protected override void OnPaint() {
			if (!EditorPreferences.NotificationPopups) return;
			base.OnPaint();
		}

		protected override void OnMousePress(MouseEvent e) {
			base.OnMousePress(e);

			if (e.LeftMouseButton && e.HasShift) {
				foreach (var t in _jumpTargets)
					if (!string.IsNullOrWhiteSpace(t.file))
						CodeEditor.OpenFile(t.file, t.line, t.col);

				e.Accepted = true;
			}
		}

		public void SetCompiling(string name, string? subtitle) {
			Reset();

			Icon = "build_circle";
			Title = name;
			Subtitle = subtitle ?? "Compiling…";
			BorderColor = Theme.Primary;

			IsRunning = true;
		}

		public void SetProgress(string subtitle) {
			Subtitle = subtitle;
		}

		public void SetSuccess(string name, string? subtitle) {
			Reset();

			Icon = "check_circle";
			Title = name;
			Subtitle = subtitle ?? "Succeeded";
			BorderColor = Theme.Green;

			_isErrored = false;
			IsRunning = false;
		}

		public void SetFailed(string name, string? subtitle, IEnumerable<HaxeDiag>? diagnostics) {
			Reset();

			Icon = "error";
			Title = name;
			Subtitle = subtitle ?? "";
			BorderColor = Theme.Red;

			_isErrored = true;
			IsRunning = false;

			AddDiagnostics(diagnostics);
		}

		private void AddDiagnostics(IEnumerable<HaxeDiag>? diagnostics) {
			if (diagnostics == null) return;

			// up to 5
			var lines = diagnostics
				.Where(d => !string.IsNullOrWhiteSpace(d.Message))
				.Take(5)
				.ToArray();

			if (lines.Length == 0) return;

			// expand
			FixedWidth = 700;
			FixedHeight = 160;

			var body = new Widget(this) { Layout = Layout.Column() };

			foreach (var d in lines)
			{
				var w = body.Layout.Add(new DiagnosticLineWidget(d));

				if (d.FilePath != null && d.Line > 0)
					_jumpTargets.Add((d.FilePath, d.Line, Math.Max(1, d.Column)));
			}

			SetBodyWidget(body);

			// add tooltip
			ToolTip = string.Join("\n", lines.Select(d =>
				d.FilePath != null
					? $"{System.IO.Path.GetFileName(d.FilePath)}:{d.Line}:{Math.Max(1, d.Column)}  {d.Message}"
					: d.Message));
		}
	}

	private sealed class DiagnosticLineWidget : Widget {
		private readonly HaxeDiag _diag;

		public DiagnosticLineWidget(HaxeDiag diag) : base(null) {
			_diag = diag;

			FixedHeight = 18;
			MinimumWidth = 400;

			if (_diag.FilePath != null && _diag.Line > 0) {
				Cursor = CursorShape.Finger;
				ToolTip = $"{_diag.Message}\n{_diag.FilePath}:{_diag.Line}:{Math.Max(1, _diag.Column)}";
			} else {
				Cursor = CursorShape.Arrow;
				ToolTip = _diag.Message;
			}
		}

		protected override void OnPaint() {
			base.OnPaint();

			Paint.Antialiasing = true;
			Paint.TextAntialiasing = true;

			var rect = LocalRect;

			var severityColor = _diag.Severity switch {
				HaxeDiagSeverity.Warning => Theme.Yellow,
				HaxeDiagSeverity.Info => Theme.Primary,
				_ => Theme.Red
			};

			var textColor = Color.Lerp(Color.White, severityColor, 0.5f);

			if (IsUnderMouse && _diag.FilePath != null) {
				Paint.ClearPen();
				Paint.SetBrush(severityColor.WithAlpha(0.1f));
				Paint.DrawRect(rect);
			}

			rect = rect.Shrink(4, 0);

			// file:line
			string rhs = "";
			if (_diag.FilePath != null && _diag.Line > 0)
				rhs = $"{System.IO.Path.GetFileName(_diag.FilePath)}:{_diag.Line}";

			Paint.SetPen(textColor.WithAlpha(0.8f));
			var rhsRect = Paint.DrawText(rect, rhs, TextFlag.RightCenter);

			rect.Right -= rhsRect.Width;
			rect.Right -= 8;

			// message
			Paint.SetPen(textColor.WithAlpha(0.6f));
			Paint.DrawText(rect.Shrink(16, 0, 0, 0), _diag.Message, TextFlag.LeftCenter);

			// left dot indicator
			Paint.ClearPen();
			Paint.SetBrush(severityColor);
			Paint.DrawCircle(new Rect(0, 16).Shrink(2));
		}

		protected override void OnMouseClick(MouseEvent e) {
			if (e.LeftMouseButton && _diag.FilePath != null && _diag.Line > 0) {
				var p = ResolveForCodeEditor(_diag.FilePath);
                if (p != null)
                    CodeEditor.OpenFile(p, _diag.Line, Math.Max(1, _diag.Column - 1));
				e.Accepted = true;
				return;
			}
			base.OnMouseClick(e);
		}
	}
}

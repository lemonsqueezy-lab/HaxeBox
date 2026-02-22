#nullable enable

using System;
using System.IO;

sealed class Watcher : IDisposable {
    private readonly FileSystemWatcher watcher;
    private readonly Action<string> onChange;

    public Watcher(string path, string[] filters, Action<string> onChange) {
        this.onChange = onChange;
        Directory.CreateDirectory(path);

        watcher = new FileSystemWatcher(path) {
            IncludeSubdirectories = true,
            InternalBufferSize = 64 * 1024,
            NotifyFilter = NotifyFilters.FileName | NotifyFilters.LastWrite
        };

        foreach (var f in filters)
            watcher.Filters.Add(f);
        watcher.Changed += OnFs;
        watcher.Created += OnFs;
        watcher.Deleted += OnFs;
        watcher.Renamed += OnFs;
        watcher.Error += OnError;
    }

    public void Start() => watcher.EnableRaisingEvents = true;

    public void Stop() => watcher.EnableRaisingEvents = false;

    private void OnFs(object sender, FileSystemEventArgs e) => onChange(e.FullPath);

    private void OnError(object sender, ErrorEventArgs e) {
        var ex = e.GetException();
        if (ex is InternalBufferOverflowException) {
            HaxeBox.logger.Warning("Code watcher overflow, scheduling full rebuild");
            onChange(string.Empty);
            return;
        }

        HaxeBox.logger.Error("Code watcher error: " + ex.Message);
    }

    public void Dispose() {
        Stop();
        watcher.Changed -= OnFs;
        watcher.Created -= OnFs;
        watcher.Deleted -= OnFs;
        watcher.Renamed -= OnFs;
        watcher.Error -= OnError;
        watcher.Dispose();
    }
}

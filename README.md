# HaxeBox

HaxeBox is a library for developing s&box projects with Haxe.

s&box package: https://sbox.game/lemonsqueezy/haxebox

## What is included

- Sandbox API support with automatic extern type generation.
- Sandbox attribute support.
- Declarative UI markup directly in Haxe.
- Automatic `haxe` build with toast notifications.
- Hotloading.

## Installation

1. Install `s&box editor`.
2. Install [`Haxe`](https://haxe.org/download/).
3. Install the Haxe library [`hxcs`](https://lib.haxe.org/p/hxcs) (required to compile Haxe to C#).
4. Open s&box Editor.
5. Install [HaxeBox](https://sbox.game/lemonsqueezy/haxebox) via Library Manager.

## HaxeBox settings

Settings are applied per project. The config file is stored in the project root and is read by the editor plugin.

You can change settings in s&box editor preferences (`Edit -> Preferences -> HaxeBox`):

<img width="735" height="440" alt="image" src="https://github.com/user-attachments/assets/db313cfa-b807-471c-ba00-d8746748a05b" />

- `Build Server Port` - port for `haxe --wait/--connect`.
- `Hotload` - enables Haxe file watching and auto-build. Otherwise, build runs when the game starts in editor.
- `Haxe Path` - path to `haxe` (if empty, `haxe` from `PATH` is used).
- `Libraries` - Haxe libs for `-lib` (separators: `;` or `,`).
- `Source Path` - folder with Haxe code (default: `code`).
- `Out Path` - folder for generated C# code (default: `code/__haxe__`).
- `Exclude` - exclusions for `include(...)` (separators: `;` or `,`).

Buttons:
- `Generate Externs` - generates extern types from runtime.
- `Clear Output` - deletes generated HaxeBox files.
- `Save` - saves settings.

## Build

In addition to automatic build via hotload or at game start in editor, HaxeBox also runs build when project settings `Release Mode`, `Whitelist`, or `Define Constants` change, and during publish/export in `Release` mode.

During build, HaxeBox automatically rewrites `build.hxml` in the project root. Editing `build.hxml` manually is not useful, but you can still run build manually with `haxe build.hxml` in terminal.

## UI markup in Haxe

UI markup is available for classes that inherit directly (or indirectly) from `sandbox.ui.Panel` or `sandbox.PanelComponent`.

Such classes support special `ui` metadata:

- `@:ui.markup("...scss")` generates `BuildRenderTree` and automatically loads stylesheet.
- `@:ui.track(...)` generates `BuildHash` so the panel updates when dependencies change.
- `@:ui.attr` marks a field/property as a node attribute, so it can be set from markup (`@MyPanel(name = "...")`).

Example:

```haxe
class Profile extends sandbox.ui.Panel {
	@:ui.attr public var name:String;

	@:ui.markup("styles/Profile.scss")
	function render() {
		@label name;
	}
}

class Root extends sandbox.PanelComponent {
	@:ui.markup("styles/Root.scss")
	function render() {
		@Profile(name = "smoothie") {}
	}
}
```

## `@:ui.markup` syntax

```haxe
class MyPanel extends sandbox.ui.Panel {
	public var name:String = "player";

	@:ui.track(name)
	@:ui.markup("styles/MyPanel.scss")
	function render() {
		@button(~btn, -"button") @:text "b" + "t" + "n";

		for (i in 0...5) {
            var img = 'icon$i.png';
            @div(-"card", onclick = () -> onCardClick(i)) {
                @img(src = 'images/$img', alt = img) {}
                @label(-"title") '$name $i';
            }
		}
	}
}
```

Inside `render()`, a DSL is used with the following rules:
- nodes are opened with `@*node type*` (for example `@div` / `@button` / `@img`, etc.)
- node attributes are listed in parentheses right after node type: `(*key* = *value*, ...)`.
- child nodes are taken from the next expression (or expression block for multiple child nodes).
- to insert text content into a node, wrap expression with `@:text` or `@:content`

> **Note:** markup functions are removed and cannot be used in code!

For convenience, you can use shortcuts:
- `~name` - shortcut for element reference capture (`@ref="name"`).
- `-"cls-a cls-b"` - shortcut for `class =`.
- Some simple expressions (strings, identifiers, arrays) become text content without wrapping in `@:text` or `@:content`.

## Common problems

- `haxe` not found:
  - set `HaxePath` in HaxeBox settings.
- `HaxeBox and project paths are not defined`:
  - build was started with wrong `build.hxml` or without defines added by plugin.
- `ui.* metadata is ignored because class is not Panel/PanelComponent`:
  - base class must be `sandbox.ui.Panel` or `sandbox.PanelComponent`.
- Empty/outdated extern type database:
  - click `Generate Externs` and rebuild project.

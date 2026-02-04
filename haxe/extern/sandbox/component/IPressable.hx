package sandbox.component;

/** A component that can be pressed. Like a button. This could be by a player USE'ing it, or by a player walking on it, or by an NPC. A call to Press should ALWAYS call release afterwards. Generally this is done by the player, where holding E presses the button, and releasing E stops pressing it. You need to handle edge cases where the player dies while holding etc. */
@:native("Sandbox.Component.IPressable")
extern class IPressable {
    /** A player has stopped looking at this */
    function Blur(e:sandbox.component.ipressable.Event):Void;
    /** Return true if the press is possible right now */
    function CanPress(e:sandbox.component.ipressable.Event):Bool;
    /** Get a tooltip to show when looking at this pressable */
    function GetTooltip(e:sandbox.component.ipressable.Event):Null<sandbox.component.ipressable.Tooltip>;
    /** A player has started looking at this */
    function Hover(e:sandbox.component.ipressable.Event):Void;
    /** A player is still looking at this. Called every frame. */
    function Look(e:sandbox.component.ipressable.Event):Void;
    /** Pressed. Returns true on success, else false. If it returns true then you should call Release when the press finishes. Not everything expects it, but some stuff will. */
    function Press(e:sandbox.component.ipressable.Event):Bool;
    /** Still being pressed. Return true to allow the press to continue, false cancel the press */
    function Pressing(e:sandbox.component.ipressable.Event):Bool;
    /** To be called when the press finishes. You should only call this after a successful press - ie when Press hass returned true. */
    function Release(e:sandbox.component.ipressable.Event):Void;
}

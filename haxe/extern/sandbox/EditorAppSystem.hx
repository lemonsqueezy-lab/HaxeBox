package sandbox;

/** Used for sbox-dev editor */
@:native("Sandbox.EditorAppSystem")
extern class EditorAppSystem extends sandbox.AppSystem {
    function new():Void;
    /** Checks if a valid -project parameter was passed */
    @:protected function CheckProject():Bool;
    function Init():Void;
}

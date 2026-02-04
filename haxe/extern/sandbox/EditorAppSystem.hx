package sandbox;

/** Used for sbox-dev editor */
@:native("Sandbox.EditorAppSystem")
extern class EditorAppSystem {
    function new():Void;
    @:protected
    var log(null,null):sandbox.diagnostics.Logger;
    /** Checks if a valid -project parameter was passed */
    @:protected function CheckProject():Bool;
    function Init():Void;
}

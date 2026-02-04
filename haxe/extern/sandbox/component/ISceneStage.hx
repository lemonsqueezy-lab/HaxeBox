package sandbox.component;

/** Called on update start. This is the very first thing called. */
@:native("Sandbox.Component.ISceneStage")
extern class ISceneStage {
    function End():Void;
    function Start():Void;
}

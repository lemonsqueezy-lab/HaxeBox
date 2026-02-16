package sandbox;

/** Help to implement a component that completely overrides the transform. This is useful for scenarios where you will want to keep the local transform of a GameObject, but want to offset based on that for some reason. Having multiple of these on one GameObject is not supported, and will result in weirdness. */
@:native("Sandbox.TransformProxyComponent")
extern class TransformProxyComponent extends sandbox.Component {
    @:protected function new():Void;
    /** Override to provide the local transform */
    function GetLocalTransform():Transform;
    /** Override to provide the world transform. The default implementation will calculate it using GetLocalTransform() based on the parent. */
    function GetWorldTransform():Transform;
    /** Tell our other components, and our children that our transform has changed. This will update things like Renderers to update their render positions. */
    function MarkTransformChanged():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    function SetLocalTransform(value:Transform):Void;
    /** Called when the world transform is being set */
    function SetWorldTransform(value:Transform):Void;
}

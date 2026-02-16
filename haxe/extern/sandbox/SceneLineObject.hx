package sandbox;

/** A scene object which is used to draw lines */
@:native("Sandbox.SceneLineObject")
extern class SceneLineObject extends sandbox.SceneCustomObject {
    function new(sceneWorld:sandbox.SceneWorld):Void;
    var LineTexture(default,default):sandbox.Texture;
    var StartCap(default,default):sandbox.scenelineobject.CapStyle;
    var EndCap(default,default):sandbox.scenelineobject.CapStyle;
    var Face(default,default):sandbox.scenelineobject.FaceMode;
    var Wireframe(default,default):Bool;
    var Lighting(default,default):Bool;
    var Clamped(default,default):Bool;
    var SamplerState(default,default):sandbox.rendering.SamplerState;
    var Smoothness(default,default):Int;
    var Opaque(never,default):Bool;
    /** Number of tessellation subdivisions across the width of each line segment. 1 = no tessellation (just left and right), 2 = one subdivision in the middle, etc. Higher values create smoother curves and more detailed geometry but use more vertices. */
    var TessellationLevel(default,default):Int;
    var Material(default,default):sandbox.Material;
    overload function AddLinePoint(pos:Vector3, color:Color, width:Single):Void;
    overload function AddLinePoint(pos:Vector3, color:Color, width:Single, textureCoord:Single):Void;
    overload function AddLinePoint(pos:Vector3, normal:Vector3, color:Color, width:Single, textureCoord:Single):Void;
    function Clear():Void;
    function EndLine():Void;
    function RenderSceneObject():Void;
    function StartLine():Void;
}

package sandbox;

/** An editable polygon mesh with collision */
@:native("Sandbox.MeshComponent")
final extern class MeshComponent extends sandbox.Collider {
    function new():Void;
    var Mesh(default,default):sandbox.PolygonMesh;
    var Collision(default,default):sandbox.meshcomponent.CollisionType;
    var Color(default,default):Color;
    var SmoothingAngle(default,default):Single;
    var HideInGame(default,default):Bool;
    var RenderType(default,default):sandbox.modelrenderer.ShadowRenderType;
    var Model(default,never):sandbox.Model;
    @:protected function CreatePhysicsShapes(targetBody:sandbox.PhysicsBody, local:Transform):system.collections.generic.IEnumerable<sandbox.PhysicsShape>;
    function GetMaterial(triangle:Int):sandbox.Material;
    @:protected function OnDisabled():Void;
    @:protected function OnTagsChanged():Void;
    @:protected function OnUpdate():Void;
    function RebuildMesh():Void;
    function SetMaterial(material:sandbox.Material, triangle:Int):Void;
}

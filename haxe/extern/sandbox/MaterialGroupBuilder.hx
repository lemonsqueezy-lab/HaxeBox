package sandbox;

@:native("Sandbox.MaterialGroupBuilder")
final extern class MaterialGroupBuilder {
    /** The name of the material group. */
    var Name(default,never):String;
    /** Add a material to the group. */
    function AddMaterial(material:sandbox.Material):sandbox.MaterialGroupBuilder;
    /** Add a materials to the group. */
    function AddMaterials(materials:system.Span<sandbox.Material>):sandbox.MaterialGroupBuilder;
    function WithName(name:String):sandbox.MaterialGroupBuilder;
}

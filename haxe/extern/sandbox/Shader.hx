package sandbox;

/** A shader is a specialized and complex computer program that use world geometry, materials and textures to render graphics. */
@:native("Sandbox.Shader")
extern class Shader {
    var IsValid(default,never):Bool;
    /** Returns a schema representing the variables and combos in this shader. This is used by the material editor to show UI for editing shader parameters. */
    var Schema(default,never):sandbox.shader.ShaderSchema;
    /** ID of this resource, */
    @:protected
    var ResourceId(default,null):Int;
    /** Path to this resource. */
    @:protected
    var ResourcePath(default,null):String;
    /** File name of the resource without the extension. */
    @:protected
    var ResourceName(default,null):String;
    /** True if this resource has been changed but the changes aren't written to disk */
    var HasUnsavedChanges(default,never):Bool;
    /** Embedded data for this resource */
    var EmbeddedResource(default,default):Null<sandbox.resources.EmbeddedResource>;
    @:protected function Finalize():Void;
    /** Load a shader by file path. */
    static function Load(filename:String):sandbox.Shader;
}

package sandbox;

/** A shader is a specialized and complex computer program that use world geometry, materials and textures to render graphics. */
@:native("Sandbox.Shader")
extern class Shader extends sandbox.Resource {
    /** Returns a schema representing the variables and combos in this shader. This is used by the material editor to show UI for editing shader parameters. */
    var Schema(default,never):sandbox.shader.ShaderSchema;
    @:protected function Finalize():Void;
    /** Load a shader by file path. */
    static function Load(filename:String):sandbox.Shader;
}

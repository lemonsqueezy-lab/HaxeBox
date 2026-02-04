package sandbox.shader;

@:native("Sandbox.Shader.ShaderSchema")
extern class ShaderSchema {
    function new():Void;
    var Variables(default,default):system.collections.generic.List<sandbox.shader.VariableDescription>;
    var Combos(default,default):system.collections.generic.List<sandbox.shader.ComboDescription>;
}

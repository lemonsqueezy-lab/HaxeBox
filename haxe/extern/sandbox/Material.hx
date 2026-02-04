package sandbox;

/** A material. Uses several s and a with specific settings for more interesting visual effects. */
@:native("Sandbox.Material")
final extern class Material {
    var IsValid(default,never):Bool;
    /** Name (or path) of the material. */
    var Name(default,never):String;
    /** Access to all of the attributes of this material. */
    var Attributes(default,never):sandbox.RenderAttributes;
    /** Access flags on this material, which usually hint about the contents. These are generally added by the shader procedurally - but developers can add these in material editor too. */
    var Flags(default,never):sandbox.material.FlagsAccessor;
    /** Gets the underlying shader name for this material. */
    var ShaderName(default,never):String;
    /** Get thje first texture assigned to this material, if any. */
    var FirstTexture(default,never):sandbox.Texture;
    /** Gets the material's shader */
    var Shader(default,default):sandbox.Shader;
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
    /** Create a new empty material at runtime. */
    static function Create(materialName:String, shader:String, anonymous:Bool):sandbox.Material;
    /** Create a copy of this material */
    function CreateCopy():sandbox.Material;
    @:protected function Finalize():Void;
    /** Get an empty material based on the specified shader. This will cache the material so that subsequent calls will return the same material. */
    static overload function FromShader(path:String):sandbox.Material;
    static overload function FromShader(shader:sandbox.Shader):sandbox.Material;
    /** Get Color parameter, by name */
    function GetColor(name:String):Color;
    /** Get a feature flag on the material. This is usually used to enable/disable shader permutations. */
    function GetFeature(name:String):Int;
    /** Get texture parameter, by name */
    function GetTexture(name:String):sandbox.Texture;
    /** Get Vector4 parameter, by name */
    function GetVector4(name:String):Vector4;
    /** Load a material from disk. Has internal cache. */
    static function Load(filename:String):sandbox.Material;
    /** Load a material from disk. Has internal cache. */
    static function LoadAsync(filename:String):system.threading.tasks.Task1<sandbox.Material>;
    /** Overrides/Sets an bool within the material */
    overload function Set(param:String, value:Bool):Bool;
    overload function Set(param:String, value:Color):Bool;
    overload function Set(param:String, value:Int):Bool;
    overload function Set(param:String, value:Single):Bool;
    overload function Set(param:String, value:Vector2):Bool;
    overload function Set(param:String, value:Vector3):Bool;
    overload function Set(param:String, value:Vector4):Bool;
    overload function Set(param:String, texture:sandbox.Texture):Bool;
    /** Set a feature flag on the material. This is usually used to enable/disable shader permutations. This is kind of a define, also known as a combo. */
    function SetFeature(name:String, value:Int):Void;
}

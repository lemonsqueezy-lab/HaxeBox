package sandbox;

/** RenderAttributes are a set of values that are passed to the renderer. They can be a variety of primitive types, textures, samplers or buffers. You can access attributes in the shader by binding them to a variable: float4 CornerRadius < Attribute( "BorderRadius" ); >; Texture2D g_tColor 	< Attribute( "Texture" ); SrgbRead( false ); >; */
@:native("Sandbox.RenderAttributes")
extern class RenderAttributes {
    function new():Void;
    function Clear():Void;
    @:protected function Finalize():Void;
    function GetAngles(name:sandbox.StringToken, defaultValue:Angles):Angles;
    function GetBool(name:sandbox.StringToken, defaultValue:Bool):Bool;
    function GetComboBool(k:sandbox.StringToken, defaultValue:Bool):Bool;
    function GetComboEnum<T>(k:sandbox.StringToken, defaultValue:T):T;
    function GetComboInt(k:sandbox.StringToken, defaultValue:Int):Int;
    function GetFloat(name:sandbox.StringToken, defaultValue:Single):Single;
    function GetInt(name:sandbox.StringToken, defaultValue:Int):Int;
    function GetMatrix(name:sandbox.StringToken, defaultValue:Matrix):Matrix;
    overload function GetTexture(name:String, defaultValue:sandbox.Texture):sandbox.Texture;
    overload function GetTexture(name:sandbox.StringToken, defaultValue:sandbox.Texture):sandbox.Texture;
    function GetVector(name:sandbox.StringToken, defaultValue:Vector3):Vector3;
    function GetVector4(name:sandbox.StringToken, defaultValue:Vector4):Vector4;
    overload function Set(k:String, value:Angles):Void;
    overload function Set(k:String, value:Bool):Void;
    overload function Set(k:String, value:Float):Void;
    overload function Set(k:String, value:Int):Void;
    overload function Set(k:String, value:Matrix):Void;
    overload function Set(k:String, value:Single):Void;
    overload function Set(k:String, value:String):Void;
    overload function Set(k:String, value:Vector2):Void;
    overload function Set(k:String, value:Vector2Int):Void;
    overload function Set(k:String, value:Vector3):Void;
    overload function Set(k:String, value:Vector3Int):Void;
    overload function Set(k:String, value:Vector4):Void;
    overload function Set(k:sandbox.StringToken, value:Angles):Void;
    overload function Set(k:sandbox.StringToken, value:Bool):Void;
    overload function Set(k:sandbox.StringToken, value:Float):Void;
    overload function Set(k:sandbox.StringToken, value:Int):Void;
    overload function Set(k:sandbox.StringToken, value:Matrix):Void;
    overload function Set(k:sandbox.StringToken, value:Single):Void;
    overload function Set(k:sandbox.StringToken, value:String):Void;
    overload function Set(k:sandbox.StringToken, value:Vector2):Void;
    overload function Set(k:sandbox.StringToken, value:Vector2Int):Void;
    overload function Set(k:sandbox.StringToken, value:Vector3):Void;
    overload function Set(k:sandbox.StringToken, value:Vector3Int):Void;
    overload function Set(k:sandbox.StringToken, value:Vector4):Void;
    overload function Set(k:sandbox.StringToken, value:sandbox.GpuBuffer<Dynamic>):Void;
    overload function Set(k:sandbox.StringToken, value:sandbox.rendering.SamplerState):Void;
    overload function Set(k:String, value:sandbox.Texture, mip:Int):Void;
    overload function Set(k:sandbox.StringToken, value:sandbox.Texture, mip:Int):Void;
    overload function SetCombo(k:String, value:Bool):Void;
    overload function SetCombo(k:String, value:Int):Void;
    overload function SetCombo(k:String, value:system.Enum):Void;
    overload function SetCombo(k:sandbox.StringToken, value:Bool):Void;
    overload function SetCombo(k:sandbox.StringToken, value:Int):Void;
    function SetComboEnum<T>(k:sandbox.StringToken, value:T):Void;
    overload function SetData<T>(k:sandbox.StringToken, value:Array<T>):Void;
    overload function SetData<T>(k:sandbox.StringToken, value:T):Void;
    overload function SetData<T>(k:sandbox.StringToken, value:system.Span<T>):Void;
    overload function SetData<T>(k:sandbox.StringToken, value:system.collections.generic.List<T>):Void;
}

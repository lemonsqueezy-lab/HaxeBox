package sandbox.rendering.commandlist;

@:native("Sandbox.Rendering.CommandList.AttributeAccess")
extern class AttributeAccess {
    /** Get the actual render target by name. Useful for externals that need to access the render target directly. */
    function GetRenderTarget(name:String):sandbox.RenderTarget;
    /** Takes a copy of the current viewport's depth texture and stores it in targetName on renderAttributes. */
    function GrabDepthTexture(token:String):sandbox.rendering.RenderTargetHandle;
    /** Takes a copy of the current viewport's color texture and stores it in targetName on renderAttributes. */
    overload function GrabFrameTexture(token:String, withMips:Bool):sandbox.rendering.RenderTargetHandle;
    overload function GrabFrameTexture(token:String, downsampleMethod:sandbox.graphics.DownsampleMethod):sandbox.rendering.RenderTargetHandle;
    /** Set the color texture from this named render target to this attribute */
    overload function Set(token:sandbox.StringToken, b:Bool):Void;
    overload function Set(token:sandbox.StringToken, f:Float):Void;
    overload function Set(token:sandbox.StringToken, i:Int):Void;
    overload function Set(token:sandbox.StringToken, matrix:Matrix):Void;
    overload function Set(token:sandbox.StringToken, f:Single):Void;
    overload function Set(token:sandbox.StringToken, vector2:Vector2):Void;
    overload function Set(token:sandbox.StringToken, vector3:Vector3):Void;
    overload function Set(token:sandbox.StringToken, vector4:Vector4):Void;
    overload function Set(token:sandbox.StringToken, buffer:sandbox.GpuBuffer<Dynamic>):Void;
    overload function Set(token:sandbox.StringToken, samplerState:sandbox.rendering.SamplerState):Void;
    overload function Set(token:sandbox.StringToken, buffer:sandbox.rendering.rendertargethandle.ColorIndexRef):Void;
    overload function Set(token:sandbox.StringToken, texture:sandbox.Texture, mip:Int):Void;
    overload function Set(token:sandbox.StringToken, buffer:sandbox.rendering.rendertargethandle.ColorTextureRef, mip:Int):Void;
    overload function Set(token:sandbox.StringToken, size:sandbox.rendering.rendertargethandle.SizeHandle, inverse:Bool):Void;
    overload function SetCombo(token:sandbox.StringToken, value:Bool):Void;
    overload function SetCombo(token:sandbox.StringToken, value:Int):Void;
    overload function SetCombo<T>(token:sandbox.StringToken, t:T):Void;
    function SetData<T>(token:sandbox.StringToken, data:T):Void;
    /** Set a special value */
    function SetValue(token:sandbox.StringToken, value:sandbox.rendering.RenderValue):Void;
}

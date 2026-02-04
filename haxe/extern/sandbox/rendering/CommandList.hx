package sandbox.rendering;

@:native("Sandbox.Rendering.CommandList")
final extern class CommandList {
    overload function new():Void;
    overload function new(debugName:String):Void;
    /** These are the attributes for the current view. Setting a variable here will let you pass it down to other places in the render pipeline. */
    var GlobalAttributes(default,never):sandbox.rendering.commandlist.AttributeAccess;
    /** Access to the local attributes. What these are depends on where the command list is being called. If we're calling from a renderable, these are the attributes for that renderable. */
    var Attributes(default,never):sandbox.rendering.commandlist.AttributeAccess;
    var DebugName(default,default):String;
    var Enabled(default,default):Bool;
    var Flags(default,default):sandbox.rendering.commandlist.Flag;
    /** Access to simple 2D painting functions to draw shapes and text. */
    var Paint(default,never):sandbox.rendering.HudPainter;
    /** A handle to the viewport size */
    var ViewportSize(default,never):sandbox.rendering.rendertargethandle.SizeHandle;
    function Blit(material:sandbox.Material, attributes:sandbox.RenderAttributes):Void;
    /** Clear the current drawing context to given color. */
    function Clear(color:Color, clearColor:Bool, clearDepth:Bool, clearStencil:Bool):Void;
    /** Set the current render target. Setting this will bind the render target and change the viewport to match it. */
    function ClearRenderTarget():Void;
    /** Dispatch a compute shader */
    overload function DispatchCompute(compute:sandbox.ComputeShader, dimension:sandbox.rendering.rendertargethandle.SizeHandle):Void;
    overload function DispatchCompute(compute:sandbox.ComputeShader, threadsX:Int, threadsY:Int, threadsZ:Int):Void;
    function DispatchComputeIndirect(compute:sandbox.ComputeShader, indirectBuffer:sandbox.GpuBuffer<Dynamic>, indirectElementOffset:UInt):Void;
    function Draw<T>(vertexBuffer:sandbox.GpuBuffer<T>, material:sandbox.Material, startVertex:Int, vertexCount:Int, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    function DrawIndexed<T>(vertexBuffer:sandbox.GpuBuffer<T>, indexBuffer:sandbox.GpuBuffer<Dynamic>, material:sandbox.Material, startIndex:Int, indexCount:Int, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    /** Draws instanced indexed geometry using indirect draw arguments stored in a GPU buffer. */
    overload function DrawIndexedInstancedIndirect(indexBuffer:sandbox.GpuBuffer<Dynamic>, material:sandbox.Material, indirectBuffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:UInt, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    overload function DrawIndexedInstancedIndirect<T>(vertexBuffer:sandbox.GpuBuffer<T>, indexBuffer:sandbox.GpuBuffer<Dynamic>, material:sandbox.Material, indirectBuffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:UInt, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    /** Draws instanced geometry using a vertex buffer and indirect draw arguments stored in a GPU buffer. */
    overload function DrawInstancedIndirect(material:sandbox.Material, indirectBuffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:UInt, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    overload function DrawInstancedIndirect<T>(vertexBuffer:sandbox.GpuBuffer<T>, material:sandbox.Material, indirectBuffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:UInt, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    /** Draws a single model at the given Transform immediately. */
    function DrawModel(model:sandbox.Model, transform:Transform, attributes:sandbox.RenderAttributes):Void;
    /** Draws multiple instances of a model using GPU instancing. This is similar to , except the count is provided from the CPU rather than via a GPU buffer. Use `SV_InstanceID` semantic in shaders to access the rendered instance. */
    overload function DrawModelInstanced(model:sandbox.Model, count:Int, attributes:sandbox.RenderAttributes):Void;
    overload function DrawModelInstanced(model:sandbox.Model, transforms:system.Span<Transform>, attributes:sandbox.RenderAttributes):Void;
    /** Draws multiple instances of a model using GPU instancing with the number of instances being provided by indirect draw arguments. Use `SV_InstanceID` semantic in shaders to access the rendered instance. */
    function DrawModelInstancedIndirect(model:sandbox.Model, buffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:Int, attributes:sandbox.RenderAttributes):Void;
    function DrawQuad(rect:sandbox.Rect, material:sandbox.Material, color:Color):Void;
    function DrawReflection(camera:sandbox.CameraComponent, plane:sandbox.Plane, target:sandbox.rendering.RenderTargetHandle, reflectionSetup:sandbox.rendering.ReflectionSetup):Void;
    function DrawRefraction(camera:sandbox.CameraComponent, plane:sandbox.Plane, target:sandbox.rendering.RenderTargetHandle, refractionSetup:sandbox.rendering.RefractionSetup):Void;
    /** Render a with the specified overrides. */
    function DrawRenderer(renderer:sandbox.Renderer, rendererSetup:sandbox.rendering.RendererSetup):Void;
    function DrawScreenQuad(material:sandbox.Material, color:Color):Void;
    /** Renders the view from a camera to the specified render target. */
    function DrawView(camera:sandbox.CameraComponent, target:sandbox.rendering.RenderTargetHandle, viewSetup:sandbox.rendering.ViewSetup):Void;
    /** Generates a mip-map chain for the specified render target. This will generate mipmaps for the color texture of the render target. */
    overload function GenerateMipMaps(target:sandbox.RenderTarget, method:sandbox.graphics.DownsampleMethod):Void;
    overload function GenerateMipMaps(texture:sandbox.Texture, method:sandbox.graphics.DownsampleMethod):Void;
    overload function GenerateMipMaps(handle:sandbox.rendering.RenderTargetHandle, method:sandbox.graphics.DownsampleMethod):Void;
    /** Get a screen sized temporary render target. You should release the returned handle when you're done to return the textures to the pool. */
    overload function GetRenderTarget(name:String, format:sandbox.ImageFormat, numMips:Int, sizeFactor:Int):sandbox.rendering.RenderTargetHandle;
    overload function GetRenderTarget(name:String, sizeFactor:Int, colorFormat:sandbox.ImageFormat, depthFormat:sandbox.ImageFormat, msaa:sandbox.MultisampleAmount, numMips:Int):sandbox.rendering.RenderTargetHandle;
    overload function GetRenderTarget(name:String, width:Int, height:Int, colorFormat:sandbox.ImageFormat, depthFormat:sandbox.ImageFormat, msaa:sandbox.MultisampleAmount, numMips:Int):sandbox.rendering.RenderTargetHandle;
    /** Takes a copy of the depthbuffer and returns a handle to it */
    function GrabDepthTexture(token:String):sandbox.rendering.RenderTargetHandle;
    /** Takes a copy of the framebuffer and returns a handle to it */
    function GrabFrameTexture(token:String, withMips:Bool):sandbox.rendering.RenderTargetHandle;
    /** Run this CommandList here */
    function InsertList(otherBuffer:sandbox.rendering.CommandList):Void;
    /** We're no longer using this RT, return it to the pool */
    function ReleaseRenderTarget(handle:sandbox.rendering.RenderTargetHandle):Void;
    function Reset():Void;
    /** Executes a barrier transition for the given GPU Buffer Resource. Transitions the buffer resource to a new pipeline stage and access state. */
    overload function ResourceBarrierTransition(buffer:sandbox.GpuBuffer<Dynamic>, state:sandbox.rendering.ResourceState):Void;
    overload function ResourceBarrierTransition(buffer:sandbox.GpuBuffer<Dynamic>, before:sandbox.rendering.ResourceState, after:sandbox.rendering.ResourceState):Void;
    overload function ResourceBarrierTransition(texture:sandbox.Texture, state:sandbox.rendering.ResourceState, mip:Int):Void;
    overload function ResourceBarrierTransition(handle:sandbox.rendering.RenderTargetHandle, state:sandbox.rendering.ResourceState, mip:Int):Void;
    overload function ResourceBarrierTransition(texture:sandbox.rendering.rendertargethandle.ColorTextureRef, state:sandbox.rendering.ResourceState, mip:Int):Void;
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
    overload function Set(token:sandbox.StringToken, texture:sandbox.Texture):Void;
    overload function Set(token:sandbox.StringToken, buffer:sandbox.rendering.rendertargethandle.ColorTextureRef, mip:Int):Void;
    overload function SetCombo(token:sandbox.StringToken, value:Bool):Void;
    overload function SetCombo(token:sandbox.StringToken, value:Int):Void;
    overload function SetCombo<T>(token:sandbox.StringToken, t:T):Void;
    function SetConstantBuffer<T>(token:sandbox.StringToken, data:T):Void;
    /** Set the color texture from this named render target to this attribute */
    overload function SetGlobal(token:sandbox.StringToken, b:Bool):Void;
    overload function SetGlobal(token:sandbox.StringToken, f:Float):Void;
    overload function SetGlobal(token:sandbox.StringToken, i:Int):Void;
    overload function SetGlobal(token:sandbox.StringToken, matrix:Matrix):Void;
    overload function SetGlobal(token:sandbox.StringToken, f:Single):Void;
    overload function SetGlobal(token:sandbox.StringToken, vector2:Vector2):Void;
    overload function SetGlobal(token:sandbox.StringToken, vector3:Vector3):Void;
    overload function SetGlobal(token:sandbox.StringToken, vector4:Vector4):Void;
    overload function SetGlobal(token:sandbox.StringToken, buffer:sandbox.GpuBuffer<Dynamic>):Void;
    overload function SetGlobal(token:sandbox.StringToken, texture:sandbox.Texture):Void;
    overload function SetGlobal(token:sandbox.StringToken, buffer:sandbox.rendering.rendertargethandle.ColorIndexRef):Void;
    /** Set the current render target. Setting this will bind the render target and change the viewport to match it. */
    overload function SetRenderTarget(target:sandbox.RenderTarget):Void;
    overload function SetRenderTarget(handle:sandbox.rendering.RenderTargetHandle):Void;
}

package sandbox;

/** Used to render to the screen using your Graphics Card, or whatever you kids are using in your crazy future computers. Whatever it is I'm sure it isn't fungible and everyone has free money and no-one has to ever work. */
@:native("Sandbox.Graphics")
final extern class Graphics {
    /** If true then we're currently rendering and you are safe to use the contents of this class */
    static var IsActive(default,never):Bool;
    /** The current layer type. This is useful to tell whether you're meant to be drawing opaque, transparent or shadow. You mainly don't need to think about this, but when you do, it's here. */
    static var LayerType(default,never):sandbox.SceneLayerType;
    /** In pixel size, where are we rendering to? */
    static var Viewport(default,default):sandbox.Rect;
    /** Access to the current render context's attributes. These will be used to set attributes in materials/shaders. This is cleared at the end of the render block. */
    static var Attributes(default,never):sandbox.RenderAttributes;
    /** The camera transform of the currently rendering view */
    static var CameraTransform(default,never):Transform;
    /** The camera position of the currently rendering view */
    static var CameraPosition(default,never):Vector3;
    /** The camera rotation of the currently rendering view */
    static var CameraRotation(default,never):Rotation;
    /** The field of view of the currently rendering camera view, in degrees. */
    static var FieldOfView(default,never):Single;
    /** The frustum of the currently rendering camera view. */
    static var Frustum(default,never):sandbox.Frustum;
    /** Get or set the current render target. Setting this will bind the render target and change the viewport to match it. */
    static var RenderTarget(default,default):sandbox.RenderTarget;
    /** Draw a screen space quad using the passed material. Your material should be using a screenspace shader so it will actually render to the screen and not in worldspace at 0,0,0 */
    static function Blit(material:sandbox.Material, attributes:sandbox.RenderAttributes):Void;
    /** Clear the current drawing context to given color. */
    static overload function Clear(clearColor:Bool, clearDepth:Bool):Void;
    static overload function Clear(color:Color, clearColor:Bool, clearDepth:Bool, clearStencil:Bool):Void;
    /** Copies pixel data from one texture to another on the GPU. This does not automatically resize or scale the texture, format and size should be equal. */
    static overload function CopyTexture(srcTexture:sandbox.Texture, dstTexture:sandbox.Texture):Void;
    static overload function CopyTexture(srcTexture:sandbox.Texture, dstTexture:sandbox.Texture, srcMipSlice:Int, srcArraySlice:Int, dstMipSlice:Int, dstArraySlice:Int):Void;
    static overload function CopyTexture(srcTexture:sandbox.Texture, dstTexture:sandbox.Texture, srcMipSlice:Int, srcArraySlice:Int, srcMipLevels:Int, dstMipSlice:Int, dstArraySlice:Int, dstMipLevels:Int):Void;
    /** Draw a bunch of vertices */
    static overload function Draw(vertices:system.Span<sandbox.Vertex>, vertCount:Int, material:sandbox.Material, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    static overload function Draw(vertices:system.collections.generic.List<sandbox.Vertex>, vertCount:Int, material:sandbox.Material, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    static overload function Draw<T>(vertexBuffer:sandbox.GpuBuffer<T>, material:sandbox.Material, startVertex:Int, vertexCount:Int, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    static overload function Draw(vertices:system.Span<sandbox.Vertex>, vertCount:Int, indices:system.Span<Int>, indexCount:Int, material:sandbox.Material, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    static overload function Draw<T>(vertexBuffer:sandbox.GpuBuffer<T>, indexBuffer:sandbox.GpuBuffer<Dynamic>, material:sandbox.Material, startIndex:Int, indexCount:Int, attributes:sandbox.RenderAttributes, primitiveType:sandbox.graphics.PrimitiveType):Void;
    /** Calls DrawText with "Material Icons" font. You can get a list of icons here https://fonts.google.com/icons?selected=Material+Icons */
    static function DrawIcon(rect:sandbox.Rect, iconName:String, color:Color, fontSize:Single, alignment:sandbox.TextFlag):sandbox.Rect;
    /** Draws a single model at the given Transform immediately. */
    static function DrawModel(model:sandbox.Model, transform:Transform, attributes:sandbox.RenderAttributes):Void;
    /** Draws multiple instances of a model using GPU instancing. This is similar to , except the count is provided from the CPU rather than via a GPU buffer. Use `SV_InstanceID` semantic in shaders to access the rendered instance. */
    static overload function DrawModelInstanced(model:sandbox.Model, count:Int, attributes:sandbox.RenderAttributes):Void;
    static overload function DrawModelInstanced(model:sandbox.Model, transforms:system.Span<Transform>, attributes:sandbox.RenderAttributes):Void;
    /** Draws multiple instances of a model using GPU instancing with the number of instances being provided by indirect draw arguments. Use `SV_InstanceID` semantic in shaders to access the rendered instance. */
    static function DrawModelInstancedIndirect(model:sandbox.Model, buffer:sandbox.GpuBuffer<Dynamic>, bufferOffset:Int, attributes:sandbox.RenderAttributes):Void;
    static function DrawQuad(rect:sandbox.Rect, material:sandbox.Material, color:Color, attributes:sandbox.RenderAttributes):Void;
    static function DrawRoundedRectangle(rect:sandbox.Rect, color:Color, cornerRadius:Vector4, borderWidth:Vector4, borderColor:Color):Void;
    static overload function DrawText(position:sandbox.Rect, scope:sandbox.textrendering.Scope, flags:sandbox.TextFlag):sandbox.Rect;
    static overload function DrawText(position:Vector2, text:String, color:Color, fontFamily:String, fontSize:Single, fontWeight:Single):sandbox.Rect;
    static overload function DrawText(position:sandbox.Rect, text:String, color:Color, fontFamily:String, fontSize:Single, fontWeight:Single, flags:sandbox.TextFlag):sandbox.Rect;
    /** Forces the GPU to flush all pending commands and wait for completion. Useful when you need to ensure GPU work is finished before proceeding. Can be called outside of a render block. */
    static function FlushGPU():Void;
    /** Generate the mip maps for this texture. Obviously the texture needs to support mip maps. */
    static function GenerateMipMaps(texture:sandbox.Texture, downsampleMethod:sandbox.graphics.DownsampleMethod, initialMip:Int, numMips:Int):Void;
    /** Grabs the current depth texture and stores it in targetName on renderAttributes. */
    static function GrabDepthTexture(targetName:String, renderAttributes:sandbox.RenderAttributes):sandbox.RenderTarget;
    /** Grabs the current viewport's color texture and stores it in targetName on renderAttributes. */
    static overload function GrabFrameTexture(targetName:String, renderAttributes:sandbox.RenderAttributes, withMips:Bool):Void;
    static overload function GrabFrameTexture(targetName:String, renderAttributes:sandbox.RenderAttributes, downsampleMethod:sandbox.graphics.DownsampleMethod):sandbox.RenderTarget;
    static overload function MeasureText(position:sandbox.Rect, scope:sandbox.textrendering.Scope, flags:sandbox.TextFlag):sandbox.Rect;
    static overload function MeasureText(position:sandbox.Rect, text:String, fontFamily:String, fontSize:Single, fontWeight:Single, flags:sandbox.TextFlag):sandbox.Rect;
    /** Render a SceneObject */
    static function Render(obj:sandbox.SceneObject, transform:Null<Transform>, color:Null<Color>, material:sandbox.Material):Void;
    /** Render this camera to the specified texture target */
    static function RenderToTexture(camera:sandbox.SceneCamera, target:sandbox.Texture):Bool;
    /** Executes a barrier transition for the given GPU Buffer Resource. Transitions the buffer resource to a new pipeline stage and access state. */
    static overload function ResourceBarrierTransition(buffer:sandbox.GpuBuffer<Dynamic>, state:sandbox.rendering.ResourceState):Void;
    static overload function ResourceBarrierTransition<T>(buffer:sandbox.GpuBuffer<T>, state:sandbox.rendering.ResourceState):Void;
    static overload function ResourceBarrierTransition(buffer:sandbox.GpuBuffer<Dynamic>, before:sandbox.rendering.ResourceState, after:sandbox.rendering.ResourceState):Void;
    static overload function ResourceBarrierTransition(texture:sandbox.Texture, state:sandbox.rendering.ResourceState, mip:Int):Void;
    static overload function ResourceBarrierTransition<T>(buffer:sandbox.GpuBuffer<T>, before:sandbox.rendering.ResourceState, after:sandbox.rendering.ResourceState):Void;
    /** Setup the lighting attributes for this current object. Place them in the targetAttributes */
    static function SetupLighting(obj:sandbox.SceneObject, targetAttributes:sandbox.RenderAttributes):Void;
}

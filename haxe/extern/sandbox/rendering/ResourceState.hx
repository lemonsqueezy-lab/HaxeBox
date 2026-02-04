package sandbox.rendering;

/** Used to describe a GPU resources state for barrier transitions. */
@:native("Sandbox.Rendering.ResourceState")
extern enum abstract ResourceState(Int) {
    var Common;
    var Present;
    var VertexOrIndexBuffer;
    var RenderTarget;
    var UnorderedAccess;
    var DepthWrite;
    var DepthRead;
    var NonPixelShaderResource;
    var PixelShaderResource;
    var StreamOut;
    var IndirectArgument;
    var Predication;
    var CopyDestination;
    var CopySource;
    var ResolveDestination;
    var ResolveSource;
    var GenericRead;
    var AllShaderResource;
    var VertexAndConstantBuffer;
    var IndexBuffer;
}

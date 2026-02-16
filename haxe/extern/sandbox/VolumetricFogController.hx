package sandbox;

/** Internal component for storing the baked fog texture We don't need to expose the volumetric fog controller like we did previously with entities, But we need to be fetch the baked fog texture from the map file */
@:native("Sandbox.VolumetricFogController")
extern class VolumetricFogController extends sandbox.Component {
    function new():Void;
    var BakedFogTexture(default,default):sandbox.Texture;
    var GlobalScale(default,default):Single;
}

package sandbox;

/** For accessing assets from the cloud - from code */
@:native("Sandbox.Cloud")
final extern class Cloud {
    /** Returns the path of the asset referenced by this package */
    static function Asset(ident:String):String;
    /** Checks if a cloud package is installed. */
    static function IsInstalled(ident:String):Bool;
    /** Loads a cloud package asynchronously from the cloud by its identifier */
    static overload function Load(ident:String):system.threading.tasks.Task;
    static overload function Load<T>(ident:String, withCode:Bool):system.threading.tasks.Task1<T>;
    /** Loads a material from the cloud by its identifier. The asset is downloaded during code compilation, so it's treated like a local material since it's shipped along with your package. If you wish to load a material at runtime, use instead. */
    static function Material(ident:String):sandbox.Material;
    /** Loads a model from the cloud by its identifier. The asset is downloaded during code compilation, so it's treated like a local model since it's shipped along with your package. If you wish to load a model at runtime, use instead. */
    static function Model(ident:String):sandbox.Model;
    static function ParticleSystem(ident:String):sandbox.ParticleSystem;
    /** Resolve a primary asset to a loaded package */
    static function ResolvePrimaryAsset(assetPath:String):sandbox.Package;
    /** Given a json string, walk it and find paths, resolve them to packages */
    static overload function ResolvePrimaryAssetsFromJson(json:String):Array<sandbox.Package>;
    static overload function ResolvePrimaryAssetsFromJson(jso:system.text.json.nodes.JsonNode):Array<sandbox.Package>;
    /** Loads a shader from the cloud by its identifier. The asset is downloaded during code compilation, so it's treated like a local shader since it's shipped along with your package. If you wish to load a shader at runtime, use instead. */
    static function Shader(ident:String):sandbox.Shader;
    /** Loads a sound event from the cloud by its identifier. The asset is downloaded during code compilation, so it's treated like a local particle system since it's shipped along with your package. If you wish to load a sound event at runtime, use instead. */
    static function SoundEvent(ident:String):sandbox.SoundEvent;
}

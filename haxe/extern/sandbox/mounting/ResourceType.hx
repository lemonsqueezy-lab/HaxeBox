package sandbox.mounting;

/** What resource can come out of this file */
@:native("Sandbox.Mounting.ResourceType")
extern enum abstract ResourceType(Int) {
    var None;
    var Text;
    var Binary;
    var Model;
    var Scene;
    var Texture;
    var Sound;
    var Material;
    var PrefabFile;
}

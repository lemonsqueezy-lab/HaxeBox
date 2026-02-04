package sandbox;

@:native("Sandbox.ComponentFlags")
extern enum abstract ComponentFlags(Int) {
    var None;
    var Hidden;
    var NotSaved;
    var Error;
    var Loading;
    var Deserializing;
    var NotEditable;
    var NotNetworked;
    var Refreshing;
    var NotCloned;
    var ShowAdvancedProperties;
}

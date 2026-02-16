package sandbox;

/** Mark a boolean property as a feature toggle */
@:native("Sandbox.FeatureEnabledAttribute")
extern class FeatureEnabledAttribute extends sandbox.FeatureAttribute {
    function new(value:String):Void;
}

package sandbox.solutiongenerator;

@:native("Sandbox.SolutionGenerator.LaunchSettings")
extern class LaunchSettings {
    function new():Void;
    var Profiles(default,default):system.collections.generic.Dictionary<String,sandbox.solutiongenerator.launchsettings.Profile>;
}

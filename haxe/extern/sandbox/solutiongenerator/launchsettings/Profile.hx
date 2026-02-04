package sandbox.solutiongenerator.launchsettings;

@:native("Sandbox.SolutionGenerator.LaunchSettings.Profile")
extern class Profile {
    function new():Void;
    var CommandName(default,default):String;
    var ExecutablePath(default,default):String;
    var CommandLineArgs(default,default):String;
}

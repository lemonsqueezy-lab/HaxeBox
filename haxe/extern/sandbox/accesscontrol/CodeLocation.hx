package sandbox.accesscontrol;

@:native("Sandbox.AccessControl.CodeLocation")
final extern class CodeLocation {
    overload function new(text:String):Void;
    overload function new(location:microsoft.codeanalysis.Location):Void;
    var Text(default,set):String;

    private inline function set_Text(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Text = {1}", this, __value);
    }

    var RoslynLocation(default,set):microsoft.codeanalysis.Location;

    private inline function set_RoslynLocation(value:microsoft.codeanalysis.Location):microsoft.codeanalysis.Location {
        var __value:microsoft.codeanalysis.Location = cast value;
        return untyped __cs__("{0}.RoslynLocation = {1}", this, __value);
    }

}

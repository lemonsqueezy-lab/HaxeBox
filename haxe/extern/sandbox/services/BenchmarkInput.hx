package sandbox.services;

@:native("Sandbox.Services.BenchmarkInput")
final extern class BenchmarkInput {
    var Session(default,set):system.Guid;

    private inline function set_Session(value:system.Guid):system.Guid {
        var __value:system.Guid = cast value;
        return untyped __cs__("{0}.Session = {1}", this, __value);
    }

    var Package(default,set):String;

    private inline function set_Package(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Package = {1}", this, __value);
    }

    var Host(default,set):String;

    private inline function set_Host(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Host = {1}", this, __value);
    }

    var Version(default,set):String;

    private inline function set_Version(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Version = {1}", this, __value);
    }

    var VersionDate(default,set):system.DateTime;

    private inline function set_VersionDate(value:system.DateTime):system.DateTime {
        var __value:system.DateTime = cast value;
        return untyped __cs__("{0}.VersionDate = {1}", this, __value);
    }

    var System(default,set):cs.system.Object;

    private inline function set_System(value:cs.system.Object):cs.system.Object {
        var __value:cs.system.Object = cast value;
        return untyped __cs__("{0}.System = {1}", this, __value);
    }

    var Entries(default,set):Array<sandbox.services.BenchmarkRecord>;

    private inline function set_Entries(value:Array<sandbox.services.BenchmarkRecord>):Array<sandbox.services.BenchmarkRecord> {
        var __value:Array<sandbox.services.BenchmarkRecord> = cast value;
        return untyped __cs__("{0}.Entries = {1}", this, __value);
    }

}

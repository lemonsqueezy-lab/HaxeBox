package sandbox;

/** Some metadata we'll pack into a workshop submission when publishing. */
@:native("Sandbox.WorkshopItemMetaData")
final extern class WorkshopItemMetaData {
    var Title(default,set):String;

    private inline function set_Title(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Title = {1}", this, __value);
    }

    var PackageIdent(default,set):String;

    private inline function set_PackageIdent(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PackageIdent = {1}", this, __value);
    }

    var WorkshopId(default,set):system.UInt64;

    private inline function set_WorkshopId(value:system.UInt64):system.UInt64 {
        var __value:system.UInt64 = cast value;
        return untyped __cs__("{0}.WorkshopId = {1}", this, __value);
    }

}

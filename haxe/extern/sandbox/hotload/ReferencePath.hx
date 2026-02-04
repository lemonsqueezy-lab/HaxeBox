package sandbox.hotload;

@:native("Sandbox.Hotload.ReferencePath")
final extern class ReferencePath {
    var Parent(default,never):sandbox.hotload.ReferencePath;
    var Member(default,never):system.reflection.MemberInfo;
    var Root(default,never):sandbox.hotload.ReferencePath;
    var IsRoot(default,never):Bool;
    var Item(default,never):sandbox.hotload.ReferencePath;
    static function GetRoot(member:system.reflection.MemberInfo):sandbox.hotload.ReferencePath;
    function ToString():String;
}

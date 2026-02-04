package sandbox;

@:native("Sandbox.MemberEqualityComparer")
extern class MemberEqualityComparer {
    function new():Void;
    function AllMembersEqual(x:cs.system.Type, y:cs.system.Type):Bool;
    function Equals(x:system.reflection.MemberInfo, y:system.reflection.MemberInfo):Bool;
    function GetHashCode(obj:system.reflection.MemberInfo):Int;
}

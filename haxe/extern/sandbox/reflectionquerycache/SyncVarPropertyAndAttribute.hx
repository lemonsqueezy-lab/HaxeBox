package sandbox.reflectionquerycache;

@:native("Sandbox.ReflectionQueryCache.SyncVarPropertyAndAttribute")
extern class SyncVarPropertyAndAttribute {
    function new(Property:system.reflection.PropertyInfo, Attribute:sandbox.SyncAttribute):Void;
    @:protected
    var EqualityContract(null,never):cs.system.Type;
    var Property(default,default):system.reflection.PropertyInfo;
    var Attribute(default,default):sandbox.SyncAttribute;
    function Deconstruct(Property:system.reflection.PropertyInfo, Attribute:sandbox.SyncAttribute):Void;
    overload function Equals(obj:cs.system.Object):Bool;
    overload function Equals(other:sandbox.reflectionquerycache.SyncVarPropertyAndAttribute):Bool;
    function GetHashCode():Int;
    @:protected function PrintMembers(builder:system.text.StringBuilder):Bool;
    function ToString():String;
}

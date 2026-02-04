package sandbox;

/** Interface for types that reference a , to provide convenience method for accessing that list. */
@:native("Sandbox.IComponentLister")
extern class IComponentLister {
    var Components(default,never):sandbox.ComponentList;
    function Create<T>(startEnabled:Bool):T;
    function Get<T>(search:sandbox.FindMode):T;
    function GetAll<T>(search:sandbox.FindMode):system.collections.generic.IEnumerable<T>;
    function GetOrCreate<T>(flags:sandbox.FindMode):T;
    function TryGet<T>(component:T, search:sandbox.FindMode):Bool;
}

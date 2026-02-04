package sandbox;

@:native("Sandbox.ComponentList")
extern class ComponentList {
    /** Amount of components - including disabled */
    var Count(default,never):Int;
    /** Add a component of this type */
    overload function Create<T>(startEnabled:Bool):T;
    overload function Create(type:sandbox.TypeDescription, startEnabled:Bool):sandbox.Component;
    /** Allows linq style queries */
    function FirstOrDefault(value:system.Func2<sandbox.Component,Bool>):sandbox.Component;
    overload function ForEach(name:String, includeDisabled:Bool, action:system.Action1<sandbox.Component>):Void;
    overload function ForEach<T>(name:String, includeDisabled:Bool, action:system.Action1<T>):Void;
    /** Find component on this gameobject with the specified id */
    overload function Get(id:system.Guid):sandbox.Component;
    overload function Get<T>(includeDisabled:Bool):T;
    overload function Get<T>(search:sandbox.FindMode):T;
    overload function Get(type:cs.system.Type, find:sandbox.FindMode):sandbox.Component;
    /** Get all components, including disabled ones */
    overload function GetAll():system.collections.generic.IEnumerable<sandbox.Component>;
    overload function GetAll(find:sandbox.FindMode):system.collections.generic.IEnumerable<sandbox.Component>;
    overload function GetAll<T>(find:sandbox.FindMode):system.collections.generic.IEnumerable<T>;
    overload function GetAll(type:cs.system.Type, find:sandbox.FindMode):system.collections.generic.IEnumerable<sandbox.Component>;
    /** Find component on this gameobject's ancestors */
    function GetInAncestors<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's ancestors or on self */
    function GetInAncestorsOrSelf<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's immediate children */
    function GetInChildren<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's immediate children or on self */
    function GetInChildrenOrSelf<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's decendants */
    function GetInDescendants<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's decendants or on self */
    function GetInDescendantsOrSelf<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's parent */
    function GetInParent<T>(includeDisabled:Bool):T;
    /** Find component on this gameobject's parent or on self */
    function GetInParentOrSelf<T>(includeDisabled:Bool):T;
    /** Find this component, if it doesn't exist - create it. */
    function GetOrCreate<T>(flags:sandbox.FindMode):T;
    /** Move the position of the component in the list by delta (-1 means up one, 1 means down one) */
    function Move(baseComponent:sandbox.Component, delta:Int):Void;
    function TryGet<T>(component:T, search:sandbox.FindMode):Bool;
}

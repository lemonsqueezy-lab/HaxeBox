package sandbox.hotload;

@:native("Sandbox.Hotload.InstanceUpgrader")
extern class InstanceUpgrader {
    @:protected
    var DefaultUpgrader(null,never):sandbox.upgraders.DefaultUpgrader;
    @:protected
    var CachedUpgrader(null,never):sandbox.upgraders.CachedUpgrader;
    var IsInitialized(default,never):Bool;
    var TracePaths(default,never):Bool;
    var CurrentPath(default,default):sandbox.hotload.ReferencePath;
    var CurrentSrcField(default,default):system.reflection.FieldInfo;
    var CurrentDstField(default,default):system.reflection.FieldInfo;
    /** A mapping of assembles to swap with new versions. */
    @:protected
    var Swaps(null,never):system.collections.generic.IReadOnlyDictionary<system.reflection.Assembly,system.reflection.Assembly>;
    @:protected function AddCachedInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Void;
    @:protected function AreEqualTypes(a:cs.system.Type, b:cs.system.Type):Bool;
    @:protected function AreEquivalentTypes(oldType:cs.system.Type, newType:cs.system.Type):Bool;
    @:protected overload function FindScopeMethod(declaringType:cs.system.Type, scopeMethodOrdinal:Int):system.reflection.MethodBase;
    @:protected overload function FindScopeMethod(declaringType:cs.system.Type, scopeMethodName:String, scopeMethodOrdinal:Int):system.reflection.MethodBase;
    @:protected function GetAssemblyDefinition(asm:system.reflection.Assembly):mono.cecil.AssemblyDefinition;
    @:protected function GetMethodDefinition(method:system.reflection.MethodBase):mono.cecil.MethodDefinition;
    /** Returns an upgraded version of the given object, replacing any types from a swapped-out assembly with their new up-to-date types. The result is cached, so if you pass the same object to this method multiple times it will always return the same instance. Fields inside the new instance may not be initialized until later in the hotload. */
    @:protected overload function GetNewInstance(oldInstance:cs.system.Object):cs.system.Object;
    @:protected overload function GetNewInstance<T>(oldInstance:T):T;
    /** When hotswapping this will switch types from the old assembly into the type from the new assembly. */
    @:protected function GetNewType(oldType:cs.system.Type):cs.system.Type;
    @:protected function GetScopeMethodOrdinal(scopeMethod:system.reflection.MethodBase):Int;
    @:protected function GetTypeDefinition(type:cs.system.Type):mono.cecil.TypeDefinition;
    @:protected function GetUpgrader<TUpgrader>():TUpgrader;
    @:protected function GetUpgraderOrDefault<TUpgrader>():TUpgrader;
    @:protected function IsAssemblyIgnored(asm:system.reflection.Assembly):Bool;
    @:protected function IsSwappedType(type:cs.system.Type):Bool;
    /** Logs a message in the current hotload. */
    @:protected overload function Log(type:sandbox.HotloadEntryType, message:String, member:system.reflection.MemberInfo):Void;
    @:protected overload function Log(exception:system.Exception, message:String, member:system.reflection.MemberInfo):Void;
    /** Called between hotloads, should clear up any cached resources that won't be needed in future hotloads. */
    @:protected function OnClearCache():Void;
    @:protected function OnHotloadComplete():Void;
    @:protected function OnHotloadStart():Void;
    /** Called when this upgrader has been added to a instance. */
    @:protected function OnInitialize():Void;
    /** Perform extra field processing on a new instance that has previously been created by this upgrader in . This is a good place to discover any other instances that should be upgraded that are stored in , which can be upgraded by calling . */
    @:protected function OnProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Int;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    /** Called immediately after if it returned true, or on instances from fields that can't be re-assigned (see ). This method determines what kind of extra processing is required for the given replacement. */
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Int;
    @:protected function ScheduleLateProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Void;
    @:protected function ScheduleProcessInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Void;
    /** Check to see if this upgrader can possibly handle the given type. */
    function ShouldProcessType(type:cs.system.Type):Bool;
    @:protected function SuppressFinalize(oldInstance:cs.system.Object, newInstance:cs.system.Object):Void;
    function TryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function TryGetDefaultValue(field:system.reflection.FieldInfo, value:cs.system.Object):Bool;
    @:protected function TryGetUpgrader<TUpgrader>(upgrader:TUpgrader):Bool;
    function TryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
}

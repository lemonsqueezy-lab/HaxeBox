package sandbox.upgraders;

@:native("Sandbox.Upgraders.DelegateUpgrader")
extern class DelegateUpgrader extends sandbox.hotload.InstanceUpgrader {
    function new():Void;
    function GetMatchingLambdaMethod(oldMethod:system.reflection.MethodInfo):system.reflection.MethodInfo;
    static overload function IsCompilerGenerated(methodName:String):Bool;
    static overload function IsCompilerGenerated(type:cs.system.Type):Bool;
    static overload function IsCompilerGenerated(methodRef:mono.cecil.MethodReference):Bool;
    static overload function IsCompilerGenerated(method:system.reflection.MethodInfo):Bool;
    @:protected function OnTryCreateNewInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object):Bool;
    @:protected function OnTryUpgradeInstance(oldInstance:cs.system.Object, newInstance:cs.system.Object, createdElsewhere:Bool):Bool;
    function ShouldProcessType(type:cs.system.Type):Bool;
}

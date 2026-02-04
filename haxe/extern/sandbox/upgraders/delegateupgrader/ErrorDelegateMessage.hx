package sandbox.upgraders.delegateupgrader;

@:native("Sandbox.Upgraders.DelegateUpgrader.ErrorDelegateMessage")
extern enum abstract ErrorDelegateMessage(Int) {
    var NoDeclaringType;
    var NoMatchStatic;
    var NoMatchLambda;
    var NoRetroactiveCapture;
    var LambdaSignatureChanged;
    var TargetTypeRemoved;
}

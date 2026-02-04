package sandbox;

@:native("Sandbox.ConVarFlags")
extern enum abstract ConVarFlags(Int) {
    var None;
    var Saved;
    var Replicated;
    var Cheat;
    var UserInfo;
    var Hidden;
    var ChangeNotice;
    var Protected;
    var Server;
    var Admin;
    var GameSetting;
}

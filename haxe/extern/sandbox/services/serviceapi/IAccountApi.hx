package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IAccountApi")
extern class IAccountApi {
    function Activity(activity:cs.system.Object):system.threading.tasks.Task;
    function GetAuthToken(session:String, package:String, service:String):system.threading.tasks.Task1<String>;
    function GetService(service:String):system.threading.tasks.Task1<sandbox.services.ServiceToken>;
    function Login(logindata:cs.system.Object):system.threading.tasks.Task1<sandbox.services.LoginResult>;
    function SubmitEvents(activity:cs.system.Object):system.threading.tasks.Task;
}

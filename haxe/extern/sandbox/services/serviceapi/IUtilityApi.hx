package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IUtilityApi")
extern class IUtilityApi {
    function RandomAvatars():system.threading.tasks.Task1<Array<String>>;
    function Translate(language:String, input:String):system.threading.tasks.Task1<String>;
}

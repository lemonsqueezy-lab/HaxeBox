package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IAchievementApi")
extern class IAchievementApi {
    function GetList(package:String):system.threading.tasks.Task1<Array<sandbox.services.AchievementDto>>;
    function Unlock(package:String, achievement:String):system.threading.tasks.Task;
}

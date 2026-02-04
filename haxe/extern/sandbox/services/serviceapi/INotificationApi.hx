package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.INotificationApi")
extern class INotificationApi {
    function Get(take:Int):system.threading.tasks.Task1<Array<sandbox.services.NotificationDto>>;
    function GetCount():system.threading.tasks.Task1<Int>;
    function MarkRead():system.threading.tasks.Task1<Int>;
}

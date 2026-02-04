package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IVersionApi")
extern class IVersionApi {
    function GetList(packageIdent:String):system.threading.tasks.Task1<Array<sandbox.services.PackageVersion>>;
}

package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.INewsApi")
extern class INewsApi {
    function GetNews(take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.NewsPostDto>>;
    function GetOrganizationNews(org:String, take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.NewsPostDto>>;
    function GetPackageNews(package:String, take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.NewsPostDto>>;
    function GetPlatformNews(take:Int, skip:Int):system.threading.tasks.Task1<Array<sandbox.services.NewsPostDto>>;
}

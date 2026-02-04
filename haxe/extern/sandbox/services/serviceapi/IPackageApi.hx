package sandbox.services.serviceapi;

@:native("Sandbox.Services.ServiceApi.IPackageApi")
extern class IPackageApi {
    function Find(q:String, take:Int, skip:Int):system.threading.tasks.Task1<sandbox.services.PackageFindResult>;
    function Get(packageIdent:String):system.threading.tasks.Task1<sandbox.services.PackageDto>;
    function GetList(id:String):system.threading.tasks.Task1<sandbox.services.PackageGroups>;
    function GetReview(packageIdent:String, steamid:haxe.Int64):system.threading.tasks.Task1<sandbox.services.PackageReviewDto>;
    function GetReviews(packageIdent:String, skip:Int, take:Int):system.threading.tasks.Task1<sandbox.services.PackageReviewList>;
    function PostReview(packageIdent:String, text:String, rating:Int):system.threading.tasks.Task;
    function PublishManifest(manifest:sandbox.services.PublishManifest):system.threading.tasks.Task1<sandbox.services.PublishManifestResult>;
    function SetFavourite(packageIdent:String, state:Bool):system.threading.tasks.Task1<sandbox.services.PackageFavouriteResult>;
    function SetRating(packageIdent:String, rating:Int):system.threading.tasks.Task1<sandbox.services.PackageRateResult>;
    function Update(packageIdent:String, key:String, value:String):system.threading.tasks.Task1<sandbox.services.PackageDto>;
    function UploadFile(file:sandbox.services.FileUploadRequest):system.threading.tasks.Task1<sandbox.services.FileUploadResult>;
    function UploadVideo(file:sandbox.services.VideoUploadRequest):system.threading.tasks.Task1<sandbox.services.FileUploadResult>;
}

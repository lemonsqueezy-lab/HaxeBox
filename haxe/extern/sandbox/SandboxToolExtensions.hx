package sandbox;

@:native("Sandbox.SandboxToolExtensions")
final extern class SandboxToolExtensions {
    /** Create a feasible title from the current selection */
    static function ConstructTitle(sys:sandbox.SelectionSystem):String;
    /** Tries to find the path from a or to this property. Returns if not found. */
    static function FindPathInScene(prop:sandbox.SerializedProperty):sandbox.sandboxtoolextensions.PropertyPath;
    /** Bind the Left hand side to the value of the given console variable. */
    static function FromConsoleVariable(self:sandbox.bind.Builder, name:String):sandbox.bind.Link;
    /** Bind the Left hand side to the value of the given console variable as an integer. */
    static function FromConsoleVariableInt(self:sandbox.bind.Builder, name:String):sandbox.bind.Link;
    /** Get all assets in this project */
    static function GetAssets(project:sandbox.Project):Array<editor.Asset>;
    /** Tries to find the that contains the given property. Returns if not found. */
    static function GetContainingGameObject(prop:sandbox.SerializedProperty):sandbox.GameObject;
    /** Shortcut for EditorTypeLibrary.GetSerializedObject( x ) */
    static function GetSerialized(self:cs.system.Object):sandbox.SerializedObject;
    /** Render this camera to the target widget. Once you do this the target widget becomes "externally painted", so you won't be able to paint on it anymore with Qt's Paint stuff. */
    static overload function RenderToPixmap(camera:sandbox.CameraComponent, targetPixmap:editor.Pixmap, async:Bool):Bool;
    static overload function RenderToPixmap(scene:sandbox.Scene, targetPixmap:editor.Pixmap, async:Bool):Bool;
    static overload function RenderToPixmap(camera:sandbox.SceneCamera, targetPixmap:editor.Pixmap, async:Bool):Bool;
    /** Render this camera to the target widget. Once you do this the target widget becomes "externally painted", so you won't be able to paint on it anymore with Qt's Paint stuff. */
    static function RenderToVideo(camera:sandbox.SceneCamera, videoWriter:sandbox.VideoWriter, time:Null<system.TimeSpan>):Bool;
    /** Render this camera to the target widget. Once you do this the target widget becomes "externally painted", so you won't be able to paint on it anymore with Qt's Paint stuff. */
    static function RenderToVideoAsync(camera:sandbox.SceneCamera, videoWriter:sandbox.VideoWriter, time:Null<system.TimeSpan>):system.threading.tasks.Task1<Bool>;
    /** Mark this package as a favourite */
    static function SetFavouriteAsync(package:sandbox.Package, state:Bool):system.threading.tasks.Task;
    /** Add your vote for this package */
    static function SetVoteAsync(package:sandbox.Package, up:Bool):system.threading.tasks.Task;
    /** Update a value on this package */
    static function UpdateValue(package:sandbox.Package, key:String, value:String, token:system.threading.CancellationToken):system.threading.tasks.Task;
    /** Upload a file used by this package */
    static overload function UploadFile(package:sandbox.Package, contents:Array<Int>, relativePath:String, progress:sandbox.utility.dataprogress.Callback, token:system.threading.CancellationToken):system.threading.tasks.Task1<Bool>;
    static overload function UploadFile(package:sandbox.Package, absolutePath:String, relativePath:String, progress:sandbox.utility.dataprogress.Callback, token:system.threading.CancellationToken):system.threading.tasks.Task1<Bool>;
    /** Upload a video for this package */
    static function UploadVideo(asset:editor.Asset, contents:Array<Int>, isThumbVideo:Bool, hidden:Bool, tag:String, progress:sandbox.utility.dataprogress.Callback, token:system.threading.CancellationToken):system.threading.tasks.Task1<Bool>;
}

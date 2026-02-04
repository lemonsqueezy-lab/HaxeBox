package sandbox.ui;

@:native("Sandbox.UI.StyleSheet")
extern class StyleSheet {
    function new():Void;
    static var Loaded(default,never):system.collections.generic.List<sandbox.ui.StyleSheet>;
    var Nodes(default,default):system.collections.generic.List<sandbox.ui.StyleBlock>;
    var FileName(default,never):String;
    var IncludedFiles(default,default):system.collections.generic.List<String>;
    var Variables(default,default):system.collections.generic.Dictionary<String,String>;
    var KeyFrames(default,default):system.collections.generic.Dictionary<String,sandbox.ui.KeyFrames>;
    var Mixins(default,default):system.collections.generic.Dictionary<String,sandbox.ui.MixinDefinition>;
    function AddKeyFrames(frames:sandbox.ui.KeyFrames):Void;
    static function FromFile(filename:String, variables:system.collections.generic.IEnumerable<system.ValueTuple2<String,String>>, failSilently:Bool):sandbox.ui.StyleSheet;
    static function FromString(styles:String, filename:String, variables:system.collections.generic.IEnumerable<system.ValueTuple2<String,String>>):sandbox.ui.StyleSheet;
    /** Get a mixin by name or null if not found. */
    function GetMixin(name:String):sandbox.ui.MixinDefinition;
    function GetVariable(name:String, defaultValue:String):String;
    /** Releases the filesystem watcher so we won't get file changed events. */
    function Release():Void;
    function ReplaceVariables(str:String):String;
    /** Register a mixin definition. */
    function SetMixin(mixin:sandbox.ui.MixinDefinition):Void;
    function TryGetMixin(name:String, mixin:sandbox.ui.MixinDefinition):Bool;
}

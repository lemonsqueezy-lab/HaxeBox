package sandbox.ui;

/** Represents a parsed @mixin definition that can be included elsewhere. */
@:native("Sandbox.UI.MixinDefinition")
final extern class MixinDefinition {
    function new():Void;
    /** The name of the mixin (e.g., "button" from "@mixin button") */
    var Name(default,default):String;
    /** Parameter definitions in order, with optional default values. Key = parameter name (without $), Value = default value (null if required) */
    var Parameters(default,default):system.collections.generic.List<sandbox.ui.MixinParameter>;
    /** Whether this mixin has a variadic parameter (last param ends with ...) */
    var HasVariadicParameter(default,default):Bool;
    /** The raw content of the mixin body, to be expanded when included. This includes nested rules which will be parsed during expansion. */
    var Content(default,default):String;
    /** Source file for error messages */
    var FileName(default,default):String;
    /** Source line for error messages */
    var FileLine(default,default):Int;
    /** Expand this mixin with the given arguments, returning the CSS content with all parameters substituted. */
    function Expand(arguments:system.collections.generic.Dictionary<String,String>, contentBlock:String):String;
}

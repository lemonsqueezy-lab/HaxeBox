package sandbox;

/** Enables rendering and interacting with a webpage */
@:native("Sandbox.WebSurface")
final extern class WebSurface {
    var IsLimited(default,never):Bool;
    /** Called when the texture has changed and should be updated */
    var OnTexture(default,default):sandbox.websurface.TextureChangedDelegate;
    var PageTitle(default,never):String;
    /** The current Url */
    var Url(default,default):String;
    /** The size of the browser */
    var Size(default,default):Vector2;
    var Cursor(default,never):String;
    /** Tell the html control if it has key focus currently, controls showing the I-beam cursor in text controls amongst other things */
    var HasKeyFocus(default,default):Bool;
    /** DPI Scaling factor */
    var ScaleFactor(default,default):Single;
    /** Enable/disable low-resource background mode, where javascript and repaint timers are throttled, resources are more aggressively purged from memory, and audio/video elements are paused. When background mode is enabled, all HTML5 video and audio objects will execute ".pause()" and gain the property "._steam_background_paused = 1". When background mode is disabled, any video or audio objects with that property will resume with ".play()". */
    var InBackgroundMode(default,default):Bool;
    function Dispose():Void;
    @:protected function Finalize():Void;
    /** Tell the browser a unicode key has been pressed */
    function TellChar(unicodeKey:UInt, modifiers:sandbox.KeyboardModifiers):Void;
    /** Tell the browser a key has been pressed or released */
    function TellKey(virtualKeyCode:UInt, modifiers:sandbox.KeyboardModifiers, state:Bool):Void;
    /** Tell the browser a mouse button has been pressed */
    function TellMouseButton(button:sandbox.MouseButtons, state:Bool):Void;
    /** Tell the browser the mouse has moved */
    function TellMouseMove(position:Vector2):Void;
    /** Tell the browser the mouse wheel has moved */
    function TellMouseWheel(delta:Int):Void;
}

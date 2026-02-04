package sandbox.bind;

/** Gets and Sets a value from somewhere. */
@:native("Sandbox.Bind.Proxy")
extern class Proxy {
    /** The object to read data from and write data to. */
    var Target(default,default):system.WeakReference<cs.system.Object>;
    /** Debug name for this property */
    @:protected
    var Name(default,null):String;
    /** Get or set the value. */
    var Value(default,default):cs.system.Object;
    /** True if we can get the value. */
    var CanRead(default,never):Bool;
    /** True if we can set the value */
    var CanWrite(default,never):Bool;
    /** Should return if the proxy is now invalid, like if the source object was destroyed. */
    var IsValid(default,never):Bool;
    function ToString():String;
}

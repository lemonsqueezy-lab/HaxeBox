package sandbox;

@:native("Sandbox.LicenseType")
extern enum abstract LicenseType(Int) {
    var None;
    var CC0;
    var CCBYNCND;
    var CCBY;
    var CCBYSA;
}

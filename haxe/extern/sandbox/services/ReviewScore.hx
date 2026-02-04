package sandbox.services;

@:native("Sandbox.Services.ReviewScore")
extern enum abstract ReviewScore(Int) {
    var None;
    var Negative;
    var Positive;
    var Promise;
}

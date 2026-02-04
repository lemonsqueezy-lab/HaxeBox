package sandbox.services.review;

@:native("Sandbox.Services.Review.ReviewScore")
extern enum abstract ReviewScore(Int) {
    var None;
    var Negative;
    var Positive;
    var Promise;
}

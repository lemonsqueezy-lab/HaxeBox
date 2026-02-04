package sandbox.services;

@:native("Sandbox.Services.AggregationType")
extern enum abstract AggregationType(Int) {
    var Sum;
    var Highest;
    var Lowest;
    var Latest;
    var Median;
}

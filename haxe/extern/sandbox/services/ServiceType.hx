package sandbox.services;

@:native("Sandbox.Services.ServiceType")
extern enum abstract ServiceType(Int) {
    var Unknown;
    var Twitch;
}

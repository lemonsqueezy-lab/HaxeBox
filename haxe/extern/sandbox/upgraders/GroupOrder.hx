package sandbox.upgraders;

@:native("Sandbox.Upgraders.GroupOrder")
extern enum abstract GroupOrder(Int) {
    var Default;
    var First;
    var Last;
}

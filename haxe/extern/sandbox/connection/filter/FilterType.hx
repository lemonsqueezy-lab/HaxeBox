package sandbox.connection.filter;

@:native("Sandbox.Connection.Filter.FilterType")
extern enum abstract FilterType(Int) {
    var Include;
    var Exclude;
}

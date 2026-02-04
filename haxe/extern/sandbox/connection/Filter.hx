package sandbox.connection;

@:native("Sandbox.Connection.Filter")
final extern class Filter {
    overload function new(type:sandbox.connection.filter.FilterType, predicate:system.Predicate<sandbox.Connection>):Void;
    overload function new(type:sandbox.connection.filter.FilterType, connections:system.collections.generic.IEnumerable<sandbox.Connection>):Void;
    /** Is the specified a valid recipient? */
    function IsRecipient(connection:sandbox.Connection):Bool;
}

package;

@:native("GameObjectUndoFlags")
extern enum abstract GameObjectUndoFlags(Int) {
    var Properties;
    var Components;
    var Children;
    var All;
}

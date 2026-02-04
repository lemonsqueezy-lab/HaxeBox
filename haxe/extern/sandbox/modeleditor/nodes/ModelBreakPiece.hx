package sandbox.modeleditor.nodes;

/** Defines a single breakable prop gib. */
@:native("Sandbox.ModelEditor.Nodes.ModelBreakPiece")
final extern class ModelBreakPiece {
    var PieceName(default,set):String;

    private inline function set_PieceName(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PieceName = {1}", this, __value);
    }

    var Model(default,set):String;

    private inline function set_Model(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.Model = {1}", this, __value);
    }

    var Offset(default,set):Vector3;

    private inline function set_Offset(value:Vector3):Vector3 {
        var __value:Vector3 = cast value;
        return untyped __cs__("{0}.Offset = {1}", this, __value);
    }

    var FadeTime(default,set):Single;

    private inline function set_FadeTime(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.FadeTime = {1}", this, __value);
    }

    var RandomSpawnChance(default,set):Single;

    private inline function set_RandomSpawnChance(value:Single):Single {
        var __value:Single = cast value;
        return untyped __cs__("{0}.RandomSpawnChance = {1}", this, __value);
    }

    var IsEssential(default,set):Bool;

    private inline function set_IsEssential(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsEssential = {1}", this, __value);
    }

    var CollisionTags(default,set):String;

    private inline function set_CollisionTags(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.CollisionTags = {1}", this, __value);
    }

    var PlacementBone(default,set):String;

    private inline function set_PlacementBone(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PlacementBone = {1}", this, __value);
    }

    var PlacementAttachment(default,set):String;

    private inline function set_PlacementAttachment(value:String):String {
        var __value:String = cast value;
        return untyped __cs__("{0}.PlacementAttachment = {1}", this, __value);
    }

    var IsClientOnly(default,set):Bool;

    private inline function set_IsClientOnly(value:Bool):Bool {
        var __value:Bool = cast value;
        return untyped __cs__("{0}.IsClientOnly = {1}", this, __value);
    }

}

package;

/** Destroys a GameObject after a number of seconds. If the GameObject or its children have any components that implement ITemporaryEffect we will wait for those to be finished before destroying. This is particularly useful if you want to delete a GameObject but want to wait for sounds or particles to conclude. */
@:native("TemporaryEffect")
final extern class TemporaryEffect extends sandbox.Component {
    function new():Void;
    var DestroyAfterSeconds(default,default):Single;
    var WaitForChildEffects(default,default):Bool;
    var BecomeOrphan(default,default):Bool;
    /** Look at the children in this GameObject and orphan any temporary effects */
    static function CreateOrphans(gameObject:sandbox.GameObject, disableLooping:Bool):Void;
    @:protected function OnEnabled():Void;
    function OnParentDestroy():Void;
    @:protected function OnUpdate():Void;
}

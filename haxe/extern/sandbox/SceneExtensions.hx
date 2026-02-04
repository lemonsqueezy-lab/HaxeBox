package sandbox;

@:native("Sandbox.SceneExtensions")
final extern class SceneExtensions {
    /** Copy the target to the clipboard. */
    static function CopyToClipboard(component:sandbox.Component):Void;
    /** We should make this globally reachanle at some point. Should be able to draw icons using bitmaps etc too. */
    static function CreateContextMenu(scene:sandbox.Scene, parent:editor.Widget):editor.Menu;
    static function DisableEditorRigidBodies(scene:sandbox.Scene):Void;
    static function EnableEditorPhysics(scene:sandbox.Scene, enabled:Bool):Void;
    static function EnableEditorRigidBody(scene:sandbox.Scene, body:sandbox.Rigidbody, enabled:Bool):Void;
    static function GetAll(target:sandbox.GameObjectDirectory):system.collections.generic.IEnumerable<sandbox.GameObject>;
    static function IsDeletable(target:sandbox.GameObject):Bool;
    static function PaintComponentIcon(td:sandbox.TypeDescription, rect:sandbox.Rect, opacity:Single):Void;
    /** Paste a as a new component on the target . */
    static function PasteComponent(target:sandbox.GameObject):Void;
    /** Paste component values from clipboard to the target . */
    static function PasteValues(target:sandbox.Component):Void;
    static function SetTargetTransform(body:sandbox.Rigidbody, tx:Null<Transform>):Void;
    /** Return true if this object should be shown in the GameObject list */
    static function ShouldShowInHierarchy(target:sandbox.GameObject):Bool;
}

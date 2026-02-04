package sandbox.scene;

@:native("Sandbox.Scene.ISceneEditorSession")
extern class ISceneEditorSession {
    /** The scene for this session */
    var Scene(default,never):sandbox.Scene;
    /** True if this scene has unsaved changes */
    var HasUnsavedChanges(default,default):Bool;
    /** Selection system for this session */
    var Selection(default,never):sandbox.SelectionSystem;
    /** If we have any gameobjects selected, return the first one */
    var SelectedGameObject(default,never):sandbox.GameObject;
    /** Get the filesystem in which temporary files can be created. These files can be used (and shipped) by a package, but won't be stored in source control. This is usually used for files that are expected to be re-generated at runtime by the package itself. */
    var TransientFilesystem(default,never):sandbox.BaseFileSystem;
    /** You have changed the editor's selection, add a new undo entry */
    function AddSelectionUndo():Void;
    /** Add a new undo entry */
    function AddUndo(name:String, undo:system.Action, redo:system.Action):Void;
    function FrameTo(box:BBox):Void;
    /** Get the folder for this scene. This is a folder in which we can store assets that are referenced by this scene. Things like envmap textures, lightmaps, baked data, etc. */
    function GetSceneFolder():editor.SceneFolder;
    /** Gets the current selection from the editor */
    function GetSelection():system.collections.generic.IEnumerable<cs.system.Object>;
    function OnEditLog(name:String, source:cs.system.Object):Void;
    /** Tell undo about this property change */
    function RecordChange(property:sandbox.SerializedProperty):Void;
    /** Save this scene to disk */
    function Save(forceSaveAs:Bool):Void;
    function UndoScope(name:String):ISceneUndoScope;
}

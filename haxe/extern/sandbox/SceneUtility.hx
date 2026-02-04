package sandbox;

@:native("Sandbox.SceneUtility")
final extern class SceneUtility {
    /** Get a (cached) scene from a PrefabFile */
    static function GetPrefabScene(prefabFile:sandbox.PrefabFile):sandbox.PrefabScene;
    /** Create a unique copy of the passed in GameObject */
    static overload function Instantiate(template:sandbox.GameObject):sandbox.GameObject;
    static overload function Instantiate(template:sandbox.GameObject, transform:Transform):sandbox.GameObject;
    static overload function Instantiate(template:sandbox.GameObject, position:Vector3):sandbox.GameObject;
    static overload function Instantiate(template:sandbox.GameObject, position:Vector3, rotation:Rotation):sandbox.GameObject;
    /** Find all "Id" guids, and replace them with new guids. This is used to make GameObject serializations unique, so when you duplicate stuff, it copies over uniquely and keeps associations. */
    static function MakeGameObjectsUnique(json:system.text.json.nodes.JsonObject, rootGuid:Null<system.Guid>):Void;
    /** Find all "__guid" guids, and replace them with new guids. This is used to make GameObject serializations unique, so when you duplicate stuff, it copies over uniquely and keeps associations. */
    static function MakeIdGuidsUnique(json:system.text.json.nodes.JsonObject, rootGuid:Null<system.Guid>):system.collections.generic.Dictionary<system.Guid,system.Guid>;
    /** Render a GameObject to a bitmap. This is usually used for easily rendering "previews" of GameObjects, for things like saving thumbnails etc. */
    static function RenderGameObjectToBitmap(objSource:sandbox.GameObject, bitmap:sandbox.Bitmap):Void;
    /** Render a Model to a bitmap. This is usually used for easily rendering "previews" of Models for thumbnails */
    static function RenderModelBitmap(model:sandbox.Model, bitmap:sandbox.Bitmap):Void;
    /** Run an action inside a batch group. A batchgroup is used with GameObject and Components to make sure that their OnEnable/OnDisable and other callbacks are called in a deterministic order, and that they can find each other during creation. */
    static function RunInBatchGroup(action:system.Action):Void;
}

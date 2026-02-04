package sandbox.sprite;

@:native("Sandbox.Sprite.BroadcastEventType")
extern enum abstract BroadcastEventType(Int) {
    var CustomMessage;
    var PlaySound;
    var SpawnPrefab;
}

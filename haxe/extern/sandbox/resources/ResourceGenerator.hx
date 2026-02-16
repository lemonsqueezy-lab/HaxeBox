package sandbox.resources;

@:native("Sandbox.Resources.ResourceGenerator`1")
extern class ResourceGenerator<T> {
    @:protected function new():Void;
    var UseMemoryCache(default,never):Bool;
    function AddToCache(val:T):Void;
    function Create(options:sandbox.resources.resourcegenerator.Options):T;
    function CreateAsync(options:sandbox.resources.resourcegenerator.Options, token:system.threading.CancellationToken):system.threading.tasks.ValueTask1<T>;
    function FindCached():T;
    function FindOrCreate(options:sandbox.resources.resourcegenerator.Options):T;
    function FindOrCreateAsync(options:sandbox.resources.resourcegenerator.Options, token:system.threading.CancellationToken):system.threading.tasks.ValueTask1<T>;
    function FindOrCreateObject(options:sandbox.resources.resourcegenerator.Options):sandbox.Resource;
    function FindOrCreateObjectAsync(options:sandbox.resources.resourcegenerator.Options, token:system.threading.CancellationToken):system.threading.tasks.ValueTask1<sandbox.Resource>;
}

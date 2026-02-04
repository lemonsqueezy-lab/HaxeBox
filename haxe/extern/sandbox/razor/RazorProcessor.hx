package sandbox.razor;

@:native("Sandbox.Razor.RazorProcessor")
final extern class RazorProcessor {
    static function GenerateFromSource(text:String, filename:String, rootNamespace:String, useFolderNamespacing:Bool):String;
}

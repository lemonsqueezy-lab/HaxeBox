package hrazor;

@:nativeGen
@:autoBuild(hrazor.HrazorGeneric.build())
class HrazorComponent<@:const Path:String> extends sandbox.ui.Panel {}

package sandbox.component;

@:native("Sandbox.Component.IMaterialSetter")
extern class IMaterialSetter {
    function GetMaterial(triangle:Int):sandbox.Material;
    function SetMaterial(material:sandbox.Material, triangle:Int):Void;
}

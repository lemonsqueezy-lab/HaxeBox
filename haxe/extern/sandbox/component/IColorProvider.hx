package sandbox.component;

/** When applied to a , the component will be able to provide the color to use for certain UI editor elements. */
@:native("Sandbox.Component.IColorProvider")
extern class IColorProvider {
    var ComponentColor(default,never):Color;
}

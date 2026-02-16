package sandbox;

/** Renders text in the world */
@:native("Sandbox.TextRenderer")
final extern class TextRenderer extends sandbox.Renderer {
    function new():Void;
    /** The text scope defines what text to render and it's visual properties (such as font, color, outline, etc.) */
    var TextScope(default,default):sandbox.textrendering.Scope;
    /** The size of the text in the world. This is different from the font size, which is defined in the TextScope and determines resolution of the rendered text. */
    var Scale(default,default):Single;
    /** The horizontal alignment of the text in the world. */
    var HorizontalAlignment(default,default):sandbox.textrenderer.HAlignment;
    /** The vertical alignment of the text in the world. */
    var VerticalAlignment(default,default):sandbox.textrenderer.VAlignment;
    /** The blend mode of the text. This determines how the text is rendered over the world. */
    var BlendMode(default,default):sandbox.BlendMode;
    /** The strength of the fog effect applied to the text. This determines how much the text blends with any fog in the scene. */
    var FogStrength(default,default):Single;
    /** The color of the text from the TextScope. */
    var Color(default,default):Color;
    /** The font size of the text from the TextScope. This is different from the Scale, which determines how large the text appears in the world. */
    var FontSize(default,default):Single;
    var FontWeight(default,default):Int;
    var FontFamily(default,default):String;
    var Text(default,default):String;
    @:protected function OnDirty():Void;
    @:protected function OnDisabled():Void;
    @:protected function OnEnabled():Void;
    @:protected function OnRenderOptionsChanged():Void;
    /** Tags have been updated - lets update our scene object tags */
    @:protected function OnTagsChanged():Void;
}

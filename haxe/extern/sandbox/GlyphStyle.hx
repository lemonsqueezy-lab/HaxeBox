package sandbox;

@:native("Sandbox.GlyphStyle")
final extern class GlyphStyle {
    static var Knockout(default,never):sandbox.GlyphStyle;
    static var Light(default,never):sandbox.GlyphStyle;
    static var Dark(default,never):sandbox.GlyphStyle;
    /** ABXY Buttons will match the base style color instead of their normal associated color */
    function WithNeutralColorABXY():sandbox.GlyphStyle;
    /** ABXY Buttons will have a solid fill */
    function WithSolidABXY():sandbox.GlyphStyle;
}

package sandbox.utility.svg;

/** Helper class for reading Scalable Vector Graphics files. */
@:native("Sandbox.Utility.Svg.SvgDocument")
extern class SvgDocument {
    /** List of all shapes in the document. */
    var Paths(default,never):system.collections.generic.IReadOnlyList<sandbox.utility.svg.SvgPath>;
    /** Reads an SVG document from the given string, returning a list of path elements describing the shapes in the image. */
    static function FromString(contents:String):sandbox.utility.svg.SvgDocument;
}

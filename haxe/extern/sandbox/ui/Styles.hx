package sandbox.ui;

/** Represents all supported CSS properties and their currently assigned values. */
@:native("Sandbox.UI.Styles")
extern class Styles {
    function new():Void;
    /** Whether this style sheet has any transitions that would need to be run. */
    var HasTransitions(default,never):Bool;
    var Padding(never,default):Null<sandbox.ui.Length>;
    var Margin(never,default):Null<sandbox.ui.Length>;
    var BorderWidth(never,default):Null<sandbox.ui.Length>;
    var BorderColor(never,default):Null<Color>;
    var HasBorder(default,never):Bool;
    /** Represents the overflow CSS property. */
    var Overflow(default,default):Null<sandbox.ui.OverflowMode>;
    /** Represents the content CSS property. */
    var Content(default,default):String;
    /** Represents the width CSS property. */
    var Width(default,default):Null<sandbox.ui.Length>;
    /** Represents the min-width CSS property. */
    var MinWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the max-width CSS property. */
    var MaxWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the height CSS property. */
    var Height(default,default):Null<sandbox.ui.Length>;
    /** Represents the min-height CSS property. */
    var MinHeight(default,default):Null<sandbox.ui.Length>;
    /** Represents the max-height CSS property. */
    var MaxHeight(default,default):Null<sandbox.ui.Length>;
    /** Represents the left CSS property. */
    var Left(default,default):Null<sandbox.ui.Length>;
    /** Represents the top CSS property. */
    var Top(default,default):Null<sandbox.ui.Length>;
    /** Represents the right CSS property. */
    var Right(default,default):Null<sandbox.ui.Length>;
    /** Represents the bottom CSS property. */
    var Bottom(default,default):Null<sandbox.ui.Length>;
    /** Represents the opacity CSS property. */
    var Opacity(default,default):Null<Single>;
    /** Represents the background-color CSS property. */
    var BackgroundColor(default,default):Null<Color>;
    /** Represents the padding-left CSS property. */
    var PaddingLeft(default,default):Null<sandbox.ui.Length>;
    /** Represents the padding-top CSS property. */
    var PaddingTop(default,default):Null<sandbox.ui.Length>;
    /** Represents the padding-right CSS property. */
    var PaddingRight(default,default):Null<sandbox.ui.Length>;
    /** Represents the padding-bottom CSS property. */
    var PaddingBottom(default,default):Null<sandbox.ui.Length>;
    /** Represents the margin-left CSS property. */
    var MarginLeft(default,default):Null<sandbox.ui.Length>;
    /** Represents the margin-top CSS property. */
    var MarginTop(default,default):Null<sandbox.ui.Length>;
    /** Represents the margin-right CSS property. */
    var MarginRight(default,default):Null<sandbox.ui.Length>;
    /** Represents the margin-bottom CSS property. */
    var MarginBottom(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-top-left-radius CSS property. */
    var BorderTopLeftRadius(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-top-right-radius CSS property. */
    var BorderTopRightRadius(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-bottom-right-radius CSS property. */
    var BorderBottomRightRadius(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-bottom-left-radius CSS property. */
    var BorderBottomLeftRadius(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-left-width CSS property. */
    var BorderLeftWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-top-width CSS property. */
    var BorderTopWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-right-width CSS property. */
    var BorderRightWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-bottom-width CSS property. */
    var BorderBottomWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-left-color CSS property. */
    var BorderLeftColor(default,default):Null<Color>;
    /** Represents the border-top-color CSS property. */
    var BorderTopColor(default,default):Null<Color>;
    /** Represents the border-right-color CSS property. */
    var BorderRightColor(default,default):Null<Color>;
    /** Represents the border-bottom-color CSS property. */
    var BorderBottomColor(default,default):Null<Color>;
    /** Represents the font-size CSS property. */
    var FontSize(default,default):Null<sandbox.ui.Length>;
    /** Represents the font-color CSS property. */
    var FontColor(default,default):Null<Color>;
    /** Represents the font-weight CSS property. */
    var FontWeight(default,default):Null<Int>;
    /** Represents the font-family CSS property. */
    var FontFamily(default,default):String;
    /** Represents the caret-color CSS property. */
    var CaretColor(default,default):Null<Color>;
    /** Represents the cursor CSS property. */
    var Cursor(default,default):String;
    /** Represents the pointer-events CSS property. */
    var PointerEvents(default,default):Null<sandbox.ui.PointerEvents>;
    /** Represents the mix-blend-mode CSS property. */
    var MixBlendMode(default,default):String;
    /** Represents the position CSS property. */
    var Position(default,default):Null<sandbox.ui.PositionMode>;
    /** Represents the overflow-x CSS property. */
    var OverflowX(default,default):Null<sandbox.ui.OverflowMode>;
    /** Represents the overflow-y CSS property. */
    var OverflowY(default,default):Null<sandbox.ui.OverflowMode>;
    /** Represents the flex-direction CSS property. */
    var FlexDirection(default,default):Null<sandbox.ui.FlexDirection>;
    /** Represents the justify-content CSS property. */
    var JustifyContent(default,default):Null<sandbox.ui.Justify>;
    /** Represents the display CSS property. */
    var Display(default,default):Null<sandbox.ui.DisplayMode>;
    /** Represents the flex-wrap CSS property. */
    var FlexWrap(default,default):Null<sandbox.ui.Wrap>;
    /** Represents the align-content CSS property. */
    var AlignContent(default,default):Null<sandbox.ui.Align>;
    /** Represents the align-self CSS property. */
    var AlignSelf(default,default):Null<sandbox.ui.Align>;
    /** Represents the align-items CSS property. */
    var AlignItems(default,default):Null<sandbox.ui.Align>;
    /** Represents the flex-basis CSS property. */
    var FlexBasis(default,default):Null<sandbox.ui.Length>;
    /** Represents the flex-grow CSS property. */
    var FlexGrow(default,default):Null<Single>;
    /** Represents the flex-shrink CSS property. */
    var FlexShrink(default,default):Null<Single>;
    /** Represents the row-gap CSS property. */
    var RowGap(default,default):Null<sandbox.ui.Length>;
    /** Represents the column-gap CSS property. */
    var ColumnGap(default,default):Null<sandbox.ui.Length>;
    /** Represents the aspect-ratio CSS property. */
    var AspectRatio(default,default):Null<Single>;
    /** Represents the text-align CSS property. */
    var TextAlign(default,default):Null<sandbox.ui.TextAlign>;
    /** Represents the text-overflow CSS property. */
    var TextOverflow(default,default):Null<sandbox.ui.TextOverflow>;
    /** Represents the text-filter CSS property. */
    var TextFilter(default,default):Null<sandbox.rendering.FilterMode>;
    /** Represents the word-break CSS property. */
    var WordBreak(default,default):Null<sandbox.ui.WordBreak>;
    /** Represents the text-decoration-line CSS property. */
    var TextDecorationLine(default,default):Null<sandbox.ui.TextDecoration>;
    /** Represents the text-decoration-color CSS property. */
    var TextDecorationColor(default,default):Null<Color>;
    /** Represents the text-decoration-thickness CSS property. */
    var TextDecorationThickness(default,default):Null<sandbox.ui.Length>;
    /** Represents the text-decoration-skip-ink CSS property. */
    var TextDecorationSkipInk(default,default):Null<sandbox.ui.TextSkipInk>;
    /** Represents the text-decoration-style CSS property. */
    var TextDecorationStyle(default,default):Null<sandbox.ui.TextDecorationStyle>;
    /** Represents the text-underline-offset CSS property. */
    var TextUnderlineOffset(default,default):Null<sandbox.ui.Length>;
    /** Represents the text-overline-offset CSS property. */
    var TextOverlineOffset(default,default):Null<sandbox.ui.Length>;
    /** Represents the text-line-through-offset CSS property. */
    var TextLineThroughOffset(default,default):Null<sandbox.ui.Length>;
    /** Represents the font-style CSS property. */
    var FontStyle(default,default):Null<sandbox.ui.FontStyle>;
    /** Represents the transform CSS property. */
    var Transform(default,default):Null<sandbox.ui.PanelTransform>;
    /** Represents the text-transform CSS property. */
    var TextTransform(default,default):Null<sandbox.ui.TextTransform>;
    /** Represents the transform-origin-x CSS property. */
    var TransformOriginX(default,default):Null<sandbox.ui.Length>;
    /** Represents the transform-origin-y CSS property. */
    var TransformOriginY(default,default):Null<sandbox.ui.Length>;
    /** Represents the letter-spacing CSS property. */
    var LetterSpacing(default,default):Null<sandbox.ui.Length>;
    /** Represents the line-height CSS property. */
    var LineHeight(default,default):Null<sandbox.ui.Length>;
    /** Represents the word-spacing CSS property. */
    var WordSpacing(default,default):Null<sandbox.ui.Length>;
    /** Represents the white-space CSS property. */
    var WhiteSpace(default,default):Null<sandbox.ui.WhiteSpace>;
    /** Represents the z-index CSS property. */
    var ZIndex(default,default):Null<Int>;
    /** Represents the order CSS property. */
    var Order(default,default):Null<Int>;
    /** Represents the sound-in CSS property. */
    var SoundIn(default,default):String;
    /** Represents the sound-out CSS property. */
    var SoundOut(default,default):String;
    /** Represents the backdrop-filter-blur CSS property. */
    var BackdropFilterBlur(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-brightness CSS property. */
    var BackdropFilterBrightness(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-contrast CSS property. */
    var BackdropFilterContrast(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-saturate CSS property. */
    var BackdropFilterSaturate(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-sepia CSS property. */
    var BackdropFilterSepia(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-invert CSS property. */
    var BackdropFilterInvert(default,default):Null<sandbox.ui.Length>;
    /** Represents the backdrop-filter-hue-rotate CSS property. */
    var BackdropFilterHueRotate(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-blur CSS property. */
    var FilterBlur(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-saturate CSS property. */
    var FilterSaturate(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-sepia CSS property. */
    var FilterSepia(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-brightness CSS property. */
    var FilterBrightness(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-hue-rotate CSS property. */
    var FilterHueRotate(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-invert CSS property. */
    var FilterInvert(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-contrast CSS property. */
    var FilterContrast(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-tint CSS property. */
    var FilterTint(default,default):Null<Color>;
    /** Represents the filter-border-width CSS property. */
    var FilterBorderWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the filter-border-color CSS property. */
    var FilterBorderColor(default,default):Null<Color>;
    /** Represents the mask-mode CSS property. */
    var MaskMode(default,default):Null<sandbox.ui.MaskMode>;
    /** Represents the mask-repeat CSS property. */
    var MaskRepeat(default,default):Null<sandbox.ui.BackgroundRepeat>;
    /** Represents the mask-size-x CSS property. */
    var MaskSizeX(default,default):Null<sandbox.ui.Length>;
    /** Represents the mask-size-y CSS property. */
    var MaskSizeY(default,default):Null<sandbox.ui.Length>;
    /** Represents the mask-position-x CSS property. */
    var MaskPositionX(default,default):Null<sandbox.ui.Length>;
    /** Represents the mask-position-y CSS property. */
    var MaskPositionY(default,default):Null<sandbox.ui.Length>;
    /** Represents the mask-angle CSS property. */
    var MaskAngle(default,default):Null<sandbox.ui.Length>;
    /** Represents the mask-scope CSS property. */
    var MaskScope(default,default):Null<sandbox.ui.MaskScope>;
    /** Represents the background-size-x CSS property. */
    var BackgroundSizeX(default,default):Null<sandbox.ui.Length>;
    /** Represents the background-size-y CSS property. */
    var BackgroundSizeY(default,default):Null<sandbox.ui.Length>;
    /** Represents the background-position-x CSS property. */
    var BackgroundPositionX(default,default):Null<sandbox.ui.Length>;
    /** Represents the background-position-y CSS property. */
    var BackgroundPositionY(default,default):Null<sandbox.ui.Length>;
    /** Represents the background-repeat CSS property. */
    var BackgroundRepeat(default,default):Null<sandbox.ui.BackgroundRepeat>;
    /** Represents the border-image-width-left CSS property. */
    var BorderImageWidthLeft(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-image-width-right CSS property. */
    var BorderImageWidthRight(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-image-width-top CSS property. */
    var BorderImageWidthTop(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-image-width-bottom CSS property. */
    var BorderImageWidthBottom(default,default):Null<sandbox.ui.Length>;
    /** Represents the border-image-fill CSS property. */
    var BorderImageFill(default,default):Null<sandbox.ui.BorderImageFill>;
    /** Represents the border-image-repeat CSS property. */
    var BorderImageRepeat(default,default):Null<sandbox.ui.BorderImageRepeat>;
    /** Represents the border-image-tint CSS property. */
    var BorderImageTint(default,default):Null<Color>;
    /** Represents the background-blend-mode CSS property. */
    var BackgroundBlendMode(default,default):String;
    /** Represents the background-tint CSS property. */
    var BackgroundTint(default,default):Null<Color>;
    /** Represents the background-angle CSS property. */
    var BackgroundAngle(default,default):Null<sandbox.ui.Length>;
    /** Represents the text-background-angle CSS property. */
    var TextBackgroundAngle(default,default):Null<sandbox.ui.Length>;
    /** Represents the perspective-origin-x CSS property. */
    var PerspectiveOriginX(default,default):Null<sandbox.ui.Length>;
    /** Represents the perspective-origin-y CSS property. */
    var PerspectiveOriginY(default,default):Null<sandbox.ui.Length>;
    /** Represents the text-stroke-color CSS property. */
    var TextStrokeColor(default,default):Null<Color>;
    /** Represents the text-stroke-width CSS property. */
    var TextStrokeWidth(default,default):Null<sandbox.ui.Length>;
    /** Represents the image-rendering CSS property. */
    var ImageRendering(default,default):Null<sandbox.ui.ImageRendering>;
    /** Represents the animation-delay CSS property. */
    var AnimationDelay(default,default):Null<Single>;
    /** Represents the animation-direction CSS property. */
    var AnimationDirection(default,default):String;
    /** Represents the animation-duration CSS property. */
    var AnimationDuration(default,default):Null<Single>;
    /** Represents the animation-fill-mode CSS property. */
    var AnimationFillMode(default,default):String;
    /** Represents the animation-iteration-count CSS property. */
    var AnimationIterationCount(default,default):Null<Single>;
    /** Represents the animation-name CSS property. */
    var AnimationName(default,default):String;
    /** Represents the animation-play-state CSS property. */
    var AnimationPlayState(default,default):String;
    /** Represents the animation-timing-function CSS property. */
    var AnimationTimingFunction(default,default):String;
    /** Represents the font-smooth CSS property. */
    var FontSmooth(default,default):Null<sandbox.ui.FontSmooth>;
    /** Represents the object-fit CSS property. */
    var ObjectFit(default,default):Null<sandbox.ui.ObjectFit>;
    var BackgroundImage(default,default):sandbox.Texture;
    var MaskImage(default,default):sandbox.Texture;
    var BorderImageSource(default,default):sandbox.Texture;
    /** Whether there is an active CSS animation. */
    var HasAnimation(default,never):Bool;
    var Transitions(default,default):sandbox.ui.TransitionList;
    var BoxShadow(default,default):sandbox.ui.ShadowList;
    var TextShadow(default,default):sandbox.ui.ShadowList;
    var FilterDropShadow(default,default):sandbox.ui.ShadowList;
    static var Default(default,never):sandbox.ui.Styles;
    function Add(bs:sandbox.ui.BaseStyles):Void;
    function ApplyAnimation(panel:sandbox.ui.Panel):Bool;
    function ApplyScale(scale:Single):Void;
    /** Creates a matrix based on this style's "transform" and other related properties */
    function BuildTransformMatrix(size:Vector2):Matrix;
    function Dirty():Void;
    function From(bs:sandbox.ui.BaseStyles):Void;
    function FromLerp(from:sandbox.ui.BaseStyles, to:sandbox.ui.BaseStyles, delta:Single):Void;
    function GetInset(size:Vector2):sandbox.ui.Margin;
    function GetOutset(size:Vector2):sandbox.ui.Margin;
    function LerpProperty(name:String, from:sandbox.ui.BaseStyles, to:sandbox.ui.BaseStyles, delta:Single):Void;
    /** Stops the animation. If we have animation vars we'll start again. */
    function ResetAnimation():Void;
    overload function Set(styles:String):Bool;
    overload function Set(property:String, value:String):Bool;
    /** Stop any previous animations and start this one. Make it last this long. */
    function StartAnimation(name:String, duration:Single, iterations:Int, delay:Single, timing:String, direction:String, fillmode:String):Void;
}

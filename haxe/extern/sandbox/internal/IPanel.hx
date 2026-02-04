package sandbox.internal;

@:native("Sandbox.Internal.IPanel")
extern class IPanel {
    var Parent(default,never):sandbox.internal.IPanel;
    var Children(default,never):system.collections.generic.IEnumerable<sandbox.internal.IPanel>;
    var ChildrenCount(default,never):Int;
    var ElementName(default,never):String;
    /** The Id of the element ( id="foo" ) */
    var Id(default,never):String;
    /** If the panel created by razor, this is the file in which it was defined */
    var SourceFile(default,never):String;
    /** If the panel was created by razor, this is the line in which it was defined */
    var SourceLine(default,never):Int;
    var IsMainMenu(default,never):Bool;
    var IsGame(default,never):Bool;
    var IsVisible(default,never):Bool;
    var IsVisibleSelf(default,never):Bool;
    /** If true then this panel (or its ancestor) has pointer-events: all */
    var WantsPointerEvents(default,never):Bool;
    var Classes(default,never):String;
    var Rect(default,never):sandbox.Rect;
    var InnerRect(default,never):sandbox.Rect;
    var OuterRect(default,never):sandbox.Rect;
    var GlobalMatrix(default,never):Null<Matrix>;
    var HasTooltip(default,never):Bool;
    /** Procedural classes such as :hover and :active */
    var PseudoClass(default,default):sandbox.ui.PseudoClass;
    var ButtonInput(default,default):sandbox.ui.PanelInputType;
    /** Get all style blocks active on this panel */
    var ActiveStyleBlocks(default,never):system.collections.generic.IEnumerable<sandbox.ui.IStyleBlock>;
    function CreateTooltip():sandbox.internal.IPanel;
    function Delete(immediate:Bool):Void;
    function GetPanelAt(point:Vector2, visibleOnly:Bool, needPointerEvents:Bool):sandbox.internal.IPanel;
    function IsAncestor(panel:sandbox.internal.IPanel):Bool;
    /** Set the panel's absolute position. This wouldn't be needed if we could expose the styles. Which we should do. */
    function SetAbsolutePosition(alignment:sandbox.TextFlag, position:Vector2, offset:Single):Void;
    function UpdateTooltip(tooltipPanel:sandbox.internal.IPanel):Void;
}

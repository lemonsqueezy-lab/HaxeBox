package sandbox.ui;

/** A generic text label. Can be made editable. */
@:native("Sandbox.UI.Label")
extern class Label {
    overload function new():Void;
    overload function new(text:String, classname:String):Void;
    var HasContent(default,never):Bool;
    var ShouldDrawSelection(default,default):Bool;
    /** Can be selected */
    var Selectable(default,default):Bool;
    /** If true and the text starts with #, it will be treated as a language token. */
    var Tokenize(default,default):Bool;
    var SelectionStart(default,default):Int;
    var SelectionEnd(default,default):Int;
    /** The color used for text selection highlight */
    var SelectionColor(default,default):Color;
    /** Text to display on the label. */
    var Text(default,default):String;
    /** Set to true if this is rich text. This means it can support some inline html elements. */
    var IsRich(default,default):Bool;
    /** Position of the text cursor/caret within the text, at which newly typed characters are inserted. */
    var CaretPosition(default,default):Int;
    /** Amount of characters in the text of the text entry. Not bytes. */
    var TextLength(default,never):Int;
    /** Enables multi-line support for editing purposes. */
    var Multiline(default,default):Bool;
    /** Quickly add common panels with certain values as children. */
    var Add(default,never):sandbox.ui.construct.PanelCreator;
    /** List of panels that are attached/parented directly to this one. */
    var Children(default,never):system.collections.generic.IEnumerable<sandbox.ui.Panel>;
    /** Whether this panel has any child panels at all. */
    var HasChildren(default,never):Bool;
    /** The panel we are directly attached to. This panel will be positioned relative to the given parent, and therefore move with it, typically also be hidden by the parents bounds. */
    var Parent(default,default):sandbox.ui.Panel;
    /** The index of this panel in its parent's child list. */
    var SiblingIndex(default,never):Int;
    /** Returns this panel and all its ancestors, i.e. the Parent, parent of its parent, etc. */
    var AncestorsAndSelf(default,never):system.collections.generic.IEnumerable<sandbox.ui.Panel>;
    /** Returns all ancestors, i.e. the parent, parent of our parent, etc. */
    var Ancestors(default,never):system.collections.generic.IEnumerable<sandbox.ui.Panel>;
    /** List of all panels that are attached to this panel, recursively, i.e. all children of this panel, children of those children, etc. */
    var Descendants(default,never):system.collections.generic.IEnumerable<sandbox.ui.Panel>;
    /** Returns the scene that this panel belongs to */
    var Scene(default,default):sandbox.Scene;
    /** Returns the GameObject that this panel belongs to */
    var GameObject(default,never):sandbox.GameObject;
    /** Amount of panels directly parented to this panel. */
    var ChildrenCount(default,never):Int;
    /** A list of CSS classes applied to this panel. */
    var Class(default,never):system.collections.generic.IEnumerable<String>;
    /** All CSS classes applied to this panel, separated with spaces. */
    var Classes(default,default):String;
    /** The element name. If you've created this Panel via a template this will be whatever the element name is on there. If not then it'll be the name of the class (ie Panel, Button) */
    var ElementName(default,default):String;
    /** Works the same as the html id="" attribute. If you set Id to "poop", it'll match any styles that define #poop in their selector. */
    var Id(default,default):String;
    /** If this was created by razor, this is the file in which it was created */
    var SourceFile(default,default):String;
    /** If this was created by razor, this is the line number in the file */
    var SourceLine(default,default):Int;
    /** Special flags used by the styling system for hover, active etc.. */
    var PseudoClass(default,default):sandbox.ui.PseudoClass;
    /** Whether this panel has the :focus pseudo class active. */
    var HasFocus(default,never):Bool;
    /** Whether this panel has the :active pseudo class active. */
    var HasActive(default,never):Bool;
    /** Whether this panel has the :hover pseudo class active. */
    var HasHovered(default,never):Bool;
    /** Whether this panel has the :intro pseudo class active. */
    var HasIntro(default,never):Bool;
    /** Whether this panel has the :outro pseudo class active. */
    var HasOutro(default,never):Bool;
    /** List of all s applied to this panel and all its ancestors. */
    var AllStyleSheets(default,never):system.collections.generic.IEnumerable<sandbox.ui.StyleSheet>;
    /** Return true if this panel isn't hidden by opacity or displaymode. */
    var IsVisible(default,never):Bool;
    /** Return true if this panel isn't hidden by opacity or displaymode. */
    var IsVisibleSelf(default,never):Bool;
    /** Allow selecting child text */
    var AllowChildSelection(default,default):Bool;
    var IsValid(default,never):Bool;
    /** Set via "value" property from HTML. */
    var StringValue(default,default):String;
    /** Whether was called on this panel. */
    var IsDeleting(default,never):Bool;
    /** Return true if this panel wants to be dragged */
    var WantsDrag(default,never):Bool;
    /** Set this to false if you want to opt out of drag scrolling */
    var CanDragScroll(default,default):Bool;
    @:protected
    var WantsDragScrolling(null,never):Bool;
    /** Return true if this panel is scrollable on the X axis */
    var HasScrollX(default,never):Bool;
    /** Return true if this panel is scrollable on the Y axis */
    var HasScrollY(default,never):Bool;
    /** Current mouse position local to this panels top left corner. */
    var MousePosition(default,never):Vector2;
    /** False by default, can this element accept keyboard focus. If an element accepts focus it'll be able to receive keyboard input. */
    var AcceptsFocus(default,default):Bool;
    /** Describe what to do with keyboard input. The default is InputMode.UI which means that when focused, this panel will receive Keys Typed and Button Events. If you set this to InputMode.Game, this panel will redirect its inputs to the game, which means for example that if you're focused on this panel and press space, it'll send the jump button to the game. */
    var ButtonInput(default,default):sandbox.ui.PanelInputType;
    /** False by default. Anything that is capable of accepting IME input should return true. Which is probably just a TextEntry. */
    var AcceptsImeInput(default,never):Bool;
    /** Whether this panel is capturing the mouse cursor. See . */
    var HasMouseCapture(default,never):Bool;
    /** Access to various bounding boxes of this panel. */
    var Box(default,default):sandbox.ui.Box;
    /** Offset of the panel's children position for scrolling purposes. */
    var ScrollOffset(default,default):Vector2;
    /** Scale of the panel on the screen. */
    var ScaleToScreen(default,never):Single;
    /** Inverse scale of . */
    var ScaleFromScreen(default,never):Single;
    /** If this panel has transforms, they'll be reflected here */
    var LocalMatrix(default,never):Null<Matrix>;
    /** If this panel or its parents have transforms, they'll be compounded here. */
    var GlobalMatrix(default,never):Null<Matrix>;
    /** The currently calculated opacity. This is set by multiplying our current style opacity with our parent's opacity. */
    var Opacity(default,never):Single;
    /** If true, we'll try to stay scrolled to the bottom when the panel changes size */
    var PreferScrollToBottom(default,default):Bool;
    /** Whether the scrolling is currently pinned to the bottom of the panel as dictated by . */
    var IsScrollAtBottom(default,never):Bool;
    /** The size of the scrollable area within this panel. */
    var ScrollSize(default,never):Vector2;
    var ChildContent(default,default):microsoft.aspnetcore.components.RenderFragment;
    /** This is the style that we computed last. If you're looking to see which styles are set on this panel then this is what you're looking for. */
    var ComputedStyle(default,never):sandbox.ui.Styles;
    /** A importance sorted list of style blocks that are active on this panel */
    var ActiveStyleBlocks(default,never):system.collections.generic.IEnumerable<sandbox.ui.IStyleBlock>;
    /** Allows you to set styles specifically on this panel. Setting the style will only affect this panel and no others and will override any other styles. */
    var Style(default,never):sandbox.ui.PanelStyle;
    /** A string to show when hovering over this panel. */
    var Tooltip(default,default):String;
    /** The created tooltip element will have this class, if set. */
    var TooltipClass(default,default):String;
    /** You should override and return true if you're overriding . Otherwise this will return true if is not empty. */
    var HasTooltip(default,never):Bool;
    /** Handles the storage, progression and application of CSS transitions. */
    var Transitions(default,never):sandbox.ui.Transitions;
    /** Returns true if this panel has any active CSS transitions. */
    var HasActiveTransitions(default,never):Bool;
    /** Can be used to store random data without sub-classing the panel. */
    var UserData(default,default):cs.system.Object;
    /** Get a token that is cancelled when the panel is deleted */
    var DeletionToken(default,never):system.threading.CancellationToken;
    @:protected
    var StringInfo(null,null):system.globalization.StringInfo;
    var Task(default,default):sandbox.TaskSource;
    var StyleSheet(default,default):sandbox.ui.StyleSheetCollection;
    var ScrollVelocity(default,default):Vector2;
    /** Ensure the text caret and selection are in sane positions, that is, not outside of the text bounds. */
    @:protected function CaretSantity():Void;
    function FinalLayout(offset:Vector2):Void;
    function GetCaretRect(i:Int):sandbox.Rect;
    function GetClipboardValue(cut:Bool):String;
    function GetLetterAt(pos:Vector2):Int;
    function GetLetterAtScreenPosition(pos:Vector2):Int;
    /** Returns the selected text. */
    function GetSelectedText():String;
    /** Returns a list of positions in the text of each side of each word within the . This is used for Control + Arrow Key navigation. */
    function GetWordBoundaryIndices():system.collections.generic.List<Int>;
    function HasSelection():Bool;
    /** Insert given text at given position. */
    function InsertText(text:String, pos:Int, endpos:Null<Int>):Void;
    /** When the language changes, if we're token based we need to update to the new phrase. */
    function LanguageChanged():Void;
    /** Move the text caret to next or previous line. */
    function MoveCaretLine(offset_line:Int, select:Bool):Void;
    /** Move the text caret by given amount. */
    function MoveCaretPos(delta:Int, select:Bool):Void;
    /** Move the text caret to the end of the current line. */
    function MoveToLineEnd(select:Bool):Void;
    /** Move the text caret to the start of the current line. */
    function MoveToLineStart(select:Bool):Void;
    /** Move the text caret to the closest word start or end to the left of current position. This simulates holding Control key while pressing left arrow key. */
    function MoveToWordBoundaryLeft(select:Bool):Void;
    /** Move the text caret to the closest word start or end to the right of current position. This simulates holding Control key while pressing right arrow key. */
    function MoveToWordBoundaryRight(select:Bool):Void;
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    function OnDeleted():Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    /** Remove given amount of characters from the label at given position. */
    function RemoveText(start:Int, count:Int):Void;
    /** Replace the currently selected text with given text. */
    function ReplaceSelection(str:String):Void;
    /** Put the caret within the visible region. */
    function ScrollToCaret():Void;
    /** Select a work at given word position. */
    function SelectWord(wordPos:Int):Void;
    /** Set the text caret position to the given index. */
    function SetCaretPosition(pos:Int, select:Bool):Void;
    function SetContent(value:String):Void;
    function SetProperty(name:String, value:String):Void;
    /** Sets the text selection. */
    function SetSelection(start:Int, end:Int):Void;
}

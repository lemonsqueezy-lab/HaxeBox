package sandbox.ui.navigation;

@:native("Sandbox.UI.Navigation.NavigationHost")
extern class NavigationHost {
    function new():Void;
    var CurrentPanel(default,never):sandbox.ui.Panel;
    var CurrentUrl(default,never):String;
    var DefaultUrl(default,default):String;
    var NavigatorCanvas(default,default):sandbox.ui.Panel;
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
    /** If true, calls . */
    var HasContent(default,never):Bool;
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
    var CurrentQuery(default,default):String;
    @:protected
    var Cache(null,null):system.collections.generic.List<sandbox.ui.navigation.navigationhost.HistoryItem>;
    var Task(default,default):sandbox.TaskSource;
    var StyleSheet(default,default):sandbox.ui.StyleSheetCollection;
    var ScrollVelocity(default,default):Vector2;
    function AddDestination(url:String, type:cs.system.Type):Void;
    function CurrentUrlMatches(url:String):Bool;
    function ExtractProperties(parts:Array<String>, url:String):system.collections.generic.IEnumerable<system.ValueTuple2<String,String>>;
    function GoBack():Bool;
    function GoBackUntilNot(wildcard:String):Bool;
    function GoForward():Bool;
    function Navigate(url:String, redirectToDefault:Bool):sandbox.ui.Panel;
    @:protected function NotFound(url:String):Void;
    @:protected function OnBack(e:sandbox.ui.PanelEvent):Void;
    @:protected function OnForward(e:sandbox.ui.PanelEvent):Void;
    @:protected function OnParametersSet():Void;
    function OnTemplateSlot(element:sandbox.html.INode, slotName:String, panel:sandbox.ui.Panel):Void;
    function SetProperty(name:String, value:String):Void;
}

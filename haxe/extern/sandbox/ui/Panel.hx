package sandbox.ui;

/** A simple User Interface panel. Can be styled with CSS. */
@:native("Sandbox.UI.Panel")
extern class Panel {
    overload function new():Void;
    overload function new(parent:sandbox.ui.Panel):Void;
    overload function new(parent:sandbox.ui.Panel, classnames:String):Void;
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
    var Task(default,default):sandbox.TaskSource;
    var StyleSheet(default,default):sandbox.ui.StyleSheetCollection;
    var ScrollVelocity(default,default):Vector2;
    /** Creates a panel of given type and makes it our child. */
    overload function AddChild<T>(classnames:String):T;
    overload function AddChild<T>(p:T):T;
    overload function AddChild<T>(outPanel:T, classnames:String):Bool;
    /** Adds CSS class(es) separated by spaces to this panel. */
    function AddClass(classname:String):Void;
    /** Runs given callback when the given event is triggered, without access to the . */
    overload function AddEventListener(eventName:String, action:system.Action):Void;
    overload function AddEventListener(eventName:String, e:system.Action1<sandbox.ui.PanelEvent>):Void;
    @:protected function AddScrollVelocity():Void;
    /** Switch the class on or off depending on the value of the bool. */
    function BindClass(className:String, func:system.Func1<Bool>):Void;
    /** Remove input focus from this panel. */
    function Blur():Bool;
    /** By overriding this you can return a hash of variables used by the Razor layout, which will cause a rebuild when changed. This is useful when your layout uses a global variable because by adding it to a HashCode.Combine here you can easily trigger a build when it changes. */
    @:protected function BuildHash():Int;
    /** Overridden/implemented by Razor templating to build a render tree. */
    @:protected function BuildRenderTree(tree:microsoft.aspnetcore.components.rendering.RenderTreeBuilder):Void;
    /** Cancel a named invocation */
    function CancelInvoke(name:String):Void;
    /** Returns a list of child panels of given type. */
    function ChildrenOfType<T>():system.collections.generic.IEnumerable<T>;
    /** Constrain scrolling to the given size. */
    @:protected function ConstrainScrolling(size:Vector2):Void;
    /** Pass given event to the event queue. */
    overload function CreateEvent(evnt:sandbox.ui.PanelEvent):Void;
    overload function CreateEvent(name:String, value:cs.system.Object, debounce:Null<Single>):Void;
    /** Create a tooltip panel. You can override this to create a custom tooltip panel. If you're overriding this and not setting , then you must override and return true in . */
    @:protected function CreateTooltipPanel():sandbox.ui.Panel;
    /** Call this when the value has changed due to user input etc. This updates any bindings, backwards. Also triggers $"{name}.changed" event, with value being the Value on the event. */
    @:protected function CreateValueEvent(name:String, value:cs.system.Object):Void;
    /** Deletes the panel. */
    function Delete(immediate:Bool):Void;
    /** Deletes all child panels via . */
    function DeleteChildren(immediate:Bool):Void;
    function DrawBackground(state:sandbox.ui.RenderState):Void;
    function DrawContent(state:sandbox.ui.RenderState):Void;
    /** Should be called if overriding IsEmpty to notify the panel that its empty state has changed. */
    @:protected function EmptyStateChanged():Void;
    /** Takes a and returns an outer rect */
    function FinalLayout(offset:Vector2):Void;
    /** Layout the children of this panel. */
    @:protected function FinalLayoutChildren(offset:Vector2):Void;
    /** Find and return any children of this panel (including self) within the given rect. */
    function FindInRect(box:sandbox.Rect, fullyInside:Bool):system.collections.generic.IEnumerable<sandbox.ui.Panel>;
    /** Returns the first ancestor panel that has no parent. */
    function FindPopupPanel():sandbox.ui.Panel;
    /** Returns the we are ultimately attached to, if any. */
    function FindRootPanel():sandbox.ui.RootPanel;
    /** Add a class for a set amount of seconds. If called multiple times, we will stomp the earlier call. */
    function FlashClass(classname:String, seconds:Single):Void;
    /** Give input focus to this panel. */
    function Focus():Bool;
    /** Used in templates, try to get the attribute that was set in creation. */
    function GetAttribute(k:String, defaultIfNotFound:String):String;
    /** Return a child at given index. */
    function GetChild(index:Int, loop:Bool):sandbox.ui.Panel;
    /** Returns the index at which the given panel is parented to this panel, or -1 if it is not. */
    function GetChildIndex(panel:sandbox.ui.Panel):Int;
    /** If we have a value that can be copied to the clipboard, return it here. */
    function GetClipboardValue(cut:Bool):String;
    /** Overridden/implemented by Razor templating, contains render tree checksum to determine when the render tree content has changed. */
    @:protected function GetRenderTreeChecksum():String;
    /** Called by to transform the current mouse position using the panel's LocalMatrix (by default). This can be overriden for special cases. */
    function GetTransformPosition(pos:Vector2):Vector2;
    /** Whether we have the given CSS class or not. */
    function HasClass(classname:String):Bool;
    /** Called on creation and hotload to delete and re-initialize event listeners. */
    @:protected function InitializeEvents():Void;
    /** Invoke a method after a delay. If the panel is deleted before this delay the method will not be called. */
    function Invoke(seconds:Single, action:system.Action):Void;
    /** Invoke a method after a delay. If the panel is deleted before this delay the method will not be called. If the invoke is called while the old one is waiting, the old one will be cancelled. */
    function InvokeOnce(name:String, seconds:Single, action:system.Action):Void;
    /** Is the given panel a parent, grandparent, etc. */
    function IsAncestor(panel:sandbox.ui.Panel):Bool;
    /** Whether given screen position is within this panel. This will accurately handle border radius as well. */
    overload function IsInside(pos:Vector2):Bool;
    overload function IsInside(rect:sandbox.Rect, fullyInside:Bool):Bool;
    /** Can be overridden by children to determine whether the panel is empty, and the :empty pseudo-class should be applied. */
    @:protected function IsPanelEmpty():Bool;
    /** Called when the current language has changed. This allows you to rebuild anything that might need rebuilding. Tokenized text labels should automatically update. */
    function LanguageChanged():Void;
    /** Move this panel to be after the given sibling. */
    function MoveAfterSibling(previousSibling:sandbox.ui.Panel):Void;
    /** Called after the razor tree has been created/rendered. */
    @:protected function OnAfterTreeRender(firstTime:Bool):Void;
    /** Called when the player presses the "Back" button while hovering this panel, which is typically "mouse 5", aka one of the mouse buttons on its side. */
    @:protected function OnBack(e:sandbox.ui.PanelEvent):Void;
    /** Called when this panel loses input focus. */
    @:protected function OnBlur(e:sandbox.ui.PanelEvent):Void;
    /** Called when any button, mouse (except for mouse4/5) and keyboard, are pressed or depressed while hovering this panel. */
    function OnButtonEvent(e:sandbox.ui.ButtonEvent):Void;
    /** Called when any keyboard button has been typed (pressed) while this panel has input focus. () */
    function OnButtonTyped(e:sandbox.ui.ButtonEvent):Void;
    /** A child panel has been added to this panel. */
    @:protected function OnChildAdded(child:sandbox.ui.Panel):Void;
    /** A child panel has been removed from this panel. */
    @:protected function OnChildRemoved(child:sandbox.ui.Panel):Void;
    /** Called when the player releases their left mouse button (Mouse 1) while hovering this panel. */
    @:protected function OnClick(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the panel is about to be deleted. */
    function OnDeleted():Void;
    /** Called when the player double clicks the panel with the left mouse button. */
    @:protected function OnDoubleClick(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnDrag(e:sandbox.ui.DragEvent):Void;
    @:protected function OnDragEnd(e:sandbox.ui.DragEvent):Void;
    /** Called when the player moves the mouse after "press and holding" (or dragging) the panel. */
    @:protected function OnDragSelect(e:sandbox.ui.SelectionEvent):Void;
    @:protected function OnDragStart(e:sandbox.ui.DragEvent):Void;
    /** Called when the escape key is pressed */
    @:protected function OnEscape(e:sandbox.ui.PanelEvent):Void;
    /** Called when various s happen. Handles event listeners and many standard events by default. */
    @:protected function OnEvent(e:sandbox.ui.PanelEvent):Void;
    /** Called when this panel receives input focus. */
    @:protected function OnFocus(e:sandbox.ui.PanelEvent):Void;
    /** Called when the player presses the "Forward" button while hovering this panel, which is typically "mouse 4", aka one of the mouse buttons on its side. */
    @:protected function OnForward(e:sandbox.ui.PanelEvent):Void;
    /** Called when a hotload happened. (Not necessarily on this panel) */
    function OnHotloaded():Void;
    /** Called when a printable character has been typed (pressed) while this panel has input focus. () */
    function OnKeyTyped(k:system.Char):Void;
    function OnLayout(layoutRect:sandbox.Rect):Void;
    /** Called when the player releases their middle mouse button (Mouse 3) while hovering this panel. */
    @:protected function OnMiddleClick(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the player presses down the left or right mouse buttons while hovering this panel. */
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the cursor moves while hovering this panel. */
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the cursor leaves this panel. */
    @:protected function OnMouseOut(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the cursor enters this panel. */
    @:protected function OnMouseOver(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the player releases left or right mouse button. */
    @:protected function OnMouseUp(e:sandbox.ui.MousePanelEvent):Void;
    /** Called when the player scrolls their mouse wheel while hovering this panel. */
    function OnMouseWheel(value:Vector2):Void;
    /** Called after all templated panel binds have been set. */
    @:protected function OnParametersSet():Void;
    /** Called after all templated panel binds have been set. */
    @:protected function OnParametersSetAsync():system.threading.tasks.Task;
    /** Called after the parent of this panel has changed. */
    function OnParentChanged():Void;
    /** Called when the user presses CTRL+V while this panel has input focus. */
    function OnPaste(text:String):Void;
    /** A RenderFragment has been set on us, so our tree has potential changes now. Lets update and see. */
    function OnRenderFragmentChanged(upTo:sandbox.ui.Panel):Void;
    /** Called when the player releases their right mouse button (Mouse 2) while hovering this panel. */
    @:protected function OnRightClick(e:sandbox.ui.MousePanelEvent):Void;
    /** TODO: Obsolete this and instead maybe we have something like [PanelSlot( "slotname" )] that is applied on properties. Then when we find a slot="slotname" we chase up the heirachy and set the property. */
    function OnTemplateSlot(element:sandbox.html.INode, slotName:String, panel:sandbox.ui.Panel):Void;
    /** Called when the visibility of the current panel changes. This could be because our own style changed, or a parent style. You can check visibility using and . */
    @:protected function OnVisibilityChanged():Void;
    /** Convert a point from local space to screen space */
    function PanelPositionToScreenPosition(pos:Vector2):Vector2;
    /** Play a sound from this panel. */
    function PlaySound(sound:String):Void;
    function RayToLocalPosition(ray:Ray, position:Vector2, distance:Single):Bool;
    /** Removes given CSS class from this panel. */
    function RemoveClass(classname:String):Void;
    /** Convert a point from the screen to a point representing a delta on this panel where the top left is [0,0] and the bottom right is [1,1] */
    function ScreenPositionToPanelDelta(pos:Vector2):Vector2;
    /** Convert a point from the screen to a position relative to the top left of this panel */
    function ScreenPositionToPanelPosition(pos:Vector2):Vector2;
    /** If AllowChildSelection is enabled, we'll try to select all children text */
    function SelectAllInChildren():Void;
    /** Used in templates, gets an attribute that was set in the template. */
    function SetAttribute(k:String, v:String):Void;
    /** Move given child panel to be given index, where 0 is the first child. */
    function SetChildIndex(child:sandbox.ui.Panel, newIndex:Int):Void;
    /** Sets a specific CSS class active or not. */
    function SetClass(classname:String, active:Bool):Void;
    /** Called by the templating system when an element has content between its tags. */
    function SetContent(value:String):Void;
    /** Captures the mouse cursor while active. The cursor will be hidden and will be stuck in place. You will want to use in while to read mouse movements.You can call this from for mouse clicks. */
    function SetMouseCapture(b:Bool):Void;
    /** Set a property on the panel, such as special properties (class, id, style and value, etc.) and properties of the panel's C# class. */
    function SetProperty(name:String, value:String):Void;
    /** Same as , but first tries to set the property on the panel object, then process any special properties such as class. */
    function SetPropertyObject(name:String, value:cs.system.Object):Void;
    /** Any transitions running, or about to run, will jump straight to the end. */
    function SkipTransitions():Void;
    /** Sort the children using given comparison function. */
    overload function SortChildren(sorter:system.Comparison<sandbox.ui.Panel>):Void;
    overload function SortChildren(sorter:system.Func2<sandbox.ui.Panel,Int>):Void;
    overload function SortChildren<TargetType>(sorter:system.Func2<TargetType,Int>):Void;
    /** For razor panels, call when the state of the render tree has changed such that it would be a good idea to re-render the tree. You would usually not need to call this manually. */
    function StateHasChanged():Void;
    /** Should be called when something happens that means that this panel's stylesheets need to be re-evaluated. Like becoming hovered or classes changed. You don't call this when changing styles directly on the panel, just on anything that will change which stylesheets should get selected. */
    @:protected function StyleSelectorsChanged(ancestors:Bool, descendants:Bool, root:sandbox.ui.RootPanel):Void;
    /** Switch a pseudo class on or off. */
    function Switch(c:sandbox.ui.PseudoClass, state:Bool):Bool;
    /** Called every frame. This is your "Think" function. */
    function Tick():Void;
    /** Add a class if we don't have it, remove a class if we do have it */
    function ToggleClass(classname:String):Void;
    function TryFindKeyframe(name:String, keyframes:sandbox.ui.KeyFrames):Bool;
    /** Called from to try to scroll. */
    function TryScroll(value:Vector2):Bool;
    /** Scroll to the bottom, if the panel has scrolling enabled. */
    function TryScrollToBottom():Bool;
    /** Clear any selection in children */
    function UnselectAllInChildren():Void;
    /** Returns true if this panel would like the mouse cursor to be visible. */
    function WantsMouseInput():Bool;
}

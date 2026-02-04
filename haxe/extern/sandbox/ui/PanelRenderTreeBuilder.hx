package sandbox.ui;

/** This is a tree renderer for panels. If we ever use razor on other ui we'll want to make a copy of this class and do the specific things to that. */
@:native("Sandbox.UI.PanelRenderTreeBuilder")
extern class PanelRenderTreeBuilder {
    function AddAttribute<T>(sequence:Int, value:system.Action1<T>):Void;
    /** Handles @onclick=@( () => DoSomething( "boobies" ) ) */
    overload function AddAttributeAction(sequence:Int, attrName:String, value:system.Action):Void;
    overload function AddAttributeAction(sequence:Int, attrName:String, value:system.Func1<system.threading.tasks.Task>):Void;
    /** Handles "style" and "class" attributes.. */
    function AddAttributeObject(sequence:Int, attrName:String, value:cs.system.Object):Void;
    /** Handles "style" and "class" attributes.. */
    function AddAttributeString(sequence:Int, attrName:String, value:String):Void;
    function AddAttributeWithSetter<T>(sequence:Int, value:cs.system.Object, setter:system.Action1<T>):Void;
    function AddBind<T>(sequence:Int, propertyName:String, get:system.Func1<T>, set:system.Action1<T>):Void;
    function AddContent<T>(sequence:Int, content:T):Void;
    /** Add the current source location. Used to record in which file the element was created. */
    function AddLocation(filename:String, line:Int, column:Int):Void;
    /** Add markup to the current element */
    function AddMarkupContent(sequence:Int, markupContent:String):Void;
    function AddReferenceCapture<T>(sequence:Int, current:T, value:system.Action1<T>):Void;
    /** Styles from a style block */
    function AddStyleDefinitions(sequence:Int, styles:String):Void;
    /** Finish working on this element */
    function CloseElement():Void;
    /** Create a panel of type T */
    overload function OpenElement<T>(sequence:Int):Void;
    overload function OpenElement(sequence:Int, elementName:String):Void;
    overload function OpenElement<T>(sequence:Int, key:cs.system.Object):Void;
    overload function OpenElement(sequence:Int, elementName:String, key:cs.system.Object):Void;
    function SetRenderFragment<T>(setter:system.Action2<T,microsoft.aspnetcore.components.RenderFragment>, builder:microsoft.aspnetcore.components.RenderFragment):Void;
    function SetRenderFragmentWithContext<T,U>(getter:system.Func2<T,microsoft.aspnetcore.components.RenderFragment1<U>>, setter:system.Action2<T,microsoft.aspnetcore.components.RenderFragment1<U>>, builder:microsoft.aspnetcore.components.RenderFragment1<U>):Void;
}

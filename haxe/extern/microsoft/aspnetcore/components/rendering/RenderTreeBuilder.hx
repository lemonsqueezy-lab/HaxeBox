package microsoft.aspnetcore.components.rendering;

@:native("Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder")
extern class RenderTreeBuilder {
	overload public function AddAttribute(sequence:Int, frame:microsoft.aspnetcore.components.rendertree.RenderTreeFrame):Void;
	overload public function AddAttribute(sequence:Int, name:String):Void;
	overload public function AddAttribute(sequence:Int, name:String, value:microsoft.aspnetcore.components.EventCallback):Void;
	overload public function AddAttribute(sequence:Int, name:String, value:Bool):Void;
	overload public function AddAttribute(sequence:Int, name:String, value:system.MulticastDelegate):Void;
	overload public function AddAttribute(sequence:Int, name:String, value:Dynamic):Void;
	overload public function AddAttribute(sequence:Int, name:String, value:String):Void;
	overload public function AddAttribute<TArgument>(sequence:Int, name:String, value:microsoft.aspnetcore.components.EventCallback1<TArgument>):Void;

	public function AddComponentParameter(sequence:Int, name:String, value:Dynamic):Void;
	public function AddComponentReferenceCapture(sequence:Int, componentReferenceCaptureAction:system.Action1<cs.system.Object>):Void;
	public function AddComponentRenderMode(renderMode:microsoft.aspnetcore.components.IComponentRenderMode):Void;
	overload public function AddContent(sequence:Int, value:Dynamic):Void;
	overload public function AddContent(sequence:Int, textContent:String):Void;
	overload public function AddContent(sequence:Int, markupContent:microsoft.aspnetcore.components.MarkupString):Void;
	overload public function AddContent(sequence:Int, fragment:microsoft.aspnetcore.components.RenderFragment):Void;
	overload public function AddContent<TValue>(sequence:Int, fragment:microsoft.aspnetcore.components.RenderFragment1<TValue>, value:TValue):Void;
	public function AddElementReferenceCapture(sequence:Int, elementReferenceCaptureAction:system.Action1<microsoft.aspnetcore.components.ElementReference>):Void;
	public function AddMarkupContent(sequence:Int, markupContent:String):Void;
	public function AddMultipleAttributes(sequence:Int, attributes:system.collections.generic.IEnumerable<system.collections.generic.KeyValuePair<String, cs.system.Object>>):Void;
	public function AddNamedEvent(eventType:String, assignedName:String):Void;
	public function Clear():Void;
	public function CloseComponent():Void;
	public function CloseElement():Void;
	public function CloseRegion():Void;
	public function Dispose():Void;
	public function GetFrames():microsoft.aspnetcore.components.rendertree.ArrayRange<microsoft.aspnetcore.components.rendertree.RenderTreeFrame>;
	overload public function OpenComponent(sequence:Int, componentType:cs.system.Type):Void;
	overload public function OpenComponent<TComponent:microsoft.aspnetcore.components.IComponent>(sequence:Int):Void;
	public function OpenElement(sequence:Int, elementName:String):Void;
	public function OpenRegion(sequence:Int):Void;
	public function SetKey(value:Dynamic):Void;
	public function SetUpdatesAttributeName(updatesAttributeName:String):Void;
}

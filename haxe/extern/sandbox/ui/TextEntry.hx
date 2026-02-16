package sandbox.ui;

@:native("Sandbox.UI.TextEntry")
extern class TextEntry extends sandbox.ui.BaseControl {
    function new():Void;
    var AutoComplete(default,default):system.Func2<String,Array<cs.system.Object>>;
    var HistoryMaxItems(default,default):Int;
    var HistoryCookie(default,default):String;
    @:protected
    var IconPanel(default,null):sandbox.ui.IconPanel;
    var Icon(default,default):String;
    var HasClearButton(default,default):Bool;
    var MinLength(default,default):Null<Int>;
    var MaxLength(default,default):Null<Int>;
    var CharacterRegex(default,default):String;
    var StringRegex(default,default):String;
    var Numeric(default,default):Bool;
    var HasValidationErrors(default,default):Bool;
    var OnTextEdited(default,default):system.Action1<String>;
    @:protected
    var Label(null,null):sandbox.ui.Label;
    var Disabled(default,default):Bool;
    var Text(default,default):String;
    var Value(default,default):String;
    var TextLength(default,never):Int;
    var CaretPosition(default,default):Int;
    var AllowEmojiReplace(default,default):Bool;
    var NumberFormat(default,default):String;
    var Multiline(default,default):Bool;
    var MinValue(default,default):Null<Single>;
    var MaxValue(default,default):Null<Single>;
    var Placeholder(default,default):String;
    @:protected
    var PrefixLabel(default,null):sandbox.ui.Label;
    var Prefix(default,default):String;
    @:protected
    var SuffixLabel(default,null):sandbox.ui.Label;
    var Suffix(default,default):String;
    var SelectionColor(default,default):Color;
    @:protected
    var TimeSinceNotInFocus(null,null):sandbox.RealTimeSince;
    function AddToHistory(str:String):Void;
    @:protected function AutoCompleteCancel():Void;
    @:protected function AutoCompleteSelectionChanged():Void;
    function CanEnterCharacter(c:system.Char):Bool;
    function ClearHistory():Void;
    function DestroyAutoComplete():Void;
    function DrawContent(state:sandbox.ui.RenderState):Void;
    function FixNumeric():String;
    function GetClipboardValue(cut:Bool):String;
    @:protected function IsPanelEmpty():Bool;
    @:protected function OnBlur(e:sandbox.ui.PanelEvent):Void;
    function OnButtonEvent(e:sandbox.ui.ButtonEvent):Void;
    function OnButtonTyped(e:sandbox.ui.ButtonEvent):Void;
    @:protected function OnDoubleClick(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnDragSelect(e:sandbox.ui.SelectionEvent):Void;
    @:protected function OnEvent(e:sandbox.ui.PanelEvent):Void;
    @:protected function OnFocus(e:sandbox.ui.PanelEvent):Void;
    function OnKeyTyped(k:system.Char):Void;
    @:protected function OnMouseDown(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseMove(e:sandbox.ui.MousePanelEvent):Void;
    @:protected function OnMouseUp(e:sandbox.ui.MousePanelEvent):Void;
    function OnPaste(text:String):Void;
    function OnValueChanged():Void;
    function SetProperty(name:String, value:String):Void;
    function Tick():Void;
    overload function UpdateAutoComplete():Void;
    overload function UpdateAutoComplete(options:Array<cs.system.Object>):Void;
    function UpdateValidation():Void;
}

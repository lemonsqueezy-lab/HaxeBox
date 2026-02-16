package sandbox.ui;

/** A generic text label. Can be made editable. */
@:native("Sandbox.UI.Label")
extern class Label extends sandbox.ui.Panel {
    overload function new():Void;
    overload function new(text:String, classname:String):Void;
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
    @:protected
    var StringInfo(null,null):system.globalization.StringInfo;
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

package sandbox.ui.navigation;

@:native("Sandbox.UI.Navigation.INavigationEvent")
extern class INavigationEvent {
    function OnNavigated(url:String):Void;
}

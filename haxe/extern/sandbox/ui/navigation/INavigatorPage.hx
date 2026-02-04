package sandbox.ui.navigation;

@:native("Sandbox.UI.Navigation.INavigatorPage")
extern class INavigatorPage {
    function OnNavigationClose():Void;
    function OnNavigationOpen():Void;
}

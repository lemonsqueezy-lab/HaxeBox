package sandbox.ui;

@:native("Sandbox.UI.LengthUnitExtension")
final extern class LengthUnitExtension {
    /** Determine whether this unit type is dynamic (ie. should be updated regularly) or whether it's constant */
    static function IsDynamic(unit:sandbox.ui.LengthUnit):Bool;
}

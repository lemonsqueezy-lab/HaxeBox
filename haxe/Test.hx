package;

@:nativeGen
class Test extends sandbox.Component {
	@:Property()
	@:Title("My Title")
	var a:Single;

	@:protected override function OnUpdate() {
		var b:Single = 10.0;
		var c = b + 15.0;
		var a = Vector2.One;

		a.x = c + 100.0 + 0.8;
	}
}

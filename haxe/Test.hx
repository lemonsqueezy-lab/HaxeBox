package;

@:nativeGen
class Test extends sandbox.Component {
	public function new() {}

	@:protected override function OnUpdate() {
		var b:Single = 10.0;
		var c = b + 15.0;
		var a = Vector2.One;
		a.x = c + 100.0 + 0.8;
	}
}

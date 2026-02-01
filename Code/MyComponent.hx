package;

class MyComponent extends sandbox.Component {
	@:Property
	@:Title("float property")
	var a:Single;

	@:Property
	@:Title("int property")
	var b:Int;

	@:protected override function OnUpdate() {
		final c = 1.0;
        
        b = b > 100 ? 0 : b + 1;

		var d = b + 1.5;

		var vec = Vector2.One;
		vec.x += d * c;
		vec.y += vec.x - a;
	}
}

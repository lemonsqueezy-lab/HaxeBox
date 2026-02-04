package sandbox.dresser;

@:native("Sandbox.Dresser.ClothingSource")
extern enum abstract ClothingSource(Int) {
    var Manual;
    var LocalUser;
    var OwnerConnection;
}

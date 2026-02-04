package sandbox.springjoint;

@:native("Sandbox.SpringJoint.SpringForceMode")
extern enum abstract SpringForceMode(Int) {
    var Pull;
    var Push;
    var Both;
}

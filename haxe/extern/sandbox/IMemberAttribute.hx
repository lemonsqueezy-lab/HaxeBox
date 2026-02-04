package sandbox;

/** When applied to an attribute, which is them applied to a member.. This will make set on the attribute upon load. This provides a convenient way to know which member the attribute was attached to. */
@:native("Sandbox.IMemberAttribute")
extern class IMemberAttribute {
    /** Description of the member this attribute was attached to. */
    var MemberDescription(default,default):sandbox.MemberDescription;
}

package sandbox;

/** Flags to search for Components. I've named this something generic because I think we can re-use it to search for GameObjects too. */
@:native("Sandbox.FindMode")
extern enum abstract FindMode(Int) {
    var Enabled;
    var Disabled;
    var InSelf;
    var InParent;
    var InAncestors;
    var InChildren;
    var InDescendants;
    var EnabledInSelf;
    var EnabledInSelfAndDescendants;
    var EnabledInSelfAndChildren;
    var DisabledInSelf;
    var DisabledInSelfAndDescendants;
    var DisabledInSelfAndChildren;
    var EverythingInSelf;
    var EverythingInSelfAndDescendants;
    var EverythingInSelfAndChildren;
    var EverythingInSelfAndParent;
    var EverythingInSelfAndAncestors;
    var EverythingInAncestors;
    var EverythingInChildren;
    var EverythingInDescendants;
}

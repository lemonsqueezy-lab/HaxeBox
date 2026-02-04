package sandbox.resources.vtexwriter;

@:native("Sandbox.Resources.VTexWriter.VTEX_Flags_t")
extern enum abstract VTEX_Flags_t(Int) {
    var NONE;
    var VTEX_FLAG_SUGGEST_CLAMPS;
    var VTEX_FLAG_SUGGEST_CLAMPT;
    var VTEX_FLAG_SUGGEST_CLAMPU;
    var VTEX_FLAG_NO_LOD;
    var VTEX_FLAG_CUBE_TEXTURE;
    var VTEX_FLAG_VOLUME_TEXTURE;
    var VTEX_FLAG_TEXTURE_ARRAY;
    var VTEX_FLAG_DILATE_COLOR;
    var VTEX_FLAG_CONVERT_TO_YCOCG_DXT5;
    var VTEX_FLAG_CREATE_LINEAR_API_TEXTURE;
}

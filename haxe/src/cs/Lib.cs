// Patched for s&box whitelist mode (avoid CultureInfo / Thread.CurrentCulture mutation)
// Compatible API surface for Haxe 4.3.x hxcs runtime.

#pragma warning disable 109, 114, 219, 429, 168, 162
namespace cs
{
    public class Lib : global::haxe.lang.HxObject
    {
        public Lib(global::haxe.lang.EmptyObject empty)
        {
        }

        public Lib()
        {
            global::cs.Lib.__hx_ctor_cs_Lib(this);
        }

        protected static void __hx_ctor_cs_Lib(global::cs.Lib __hx_this)
        {
        }

        public static string decimalSeparator;

        // In whitelist/sandbox environments we avoid touching thread culture.
        // Keep behavior stable for Haxe numeric formatting by forcing ".".
        public static void applyCultureChanges()
        {
            global::cs.Lib.decimalSeparator = ".";
        }

        // No-op: we didn't change anything in applyCultureChanges().
        public static void revertDefaultCulture()
        {
        }

        public static void p_nativeArray<T>(global::Array<T> arr, global::System.Array ret)
        {
            T[] native = arr.__a;
            int len = arr.length;
            global::System.Array.Copy((global::System.Array)native, 0, ret, 0, len);
        }

        public static global::System.Type fromNativeType(global::System.Type t)
        {
            return t;
        }

        public static global::System.Type toNativeType(global::System.Type cl)
        {
            return cl;
        }

        public static global::System.Type toNativeEnum(global::System.Type cl)
        {
            return cl;
        }

        public static global::System.Type nativeType(object obj)
        {
            return (global::System.Type)(object)obj.GetType();
        }

        public static global::System.Type getNativeType(object obj)
        {
            return (global::System.Type)(object)obj.GetType();
        }

        public static global::Array<T> array<T>(T[] native)
        {
            return global::Array<object>.ofNative<T>(native);
        }

        public static global::Array<T> arrayAlloc<T>(int size)
        {
            return global::Array<object>.alloc<T>(size);
        }
    }
}

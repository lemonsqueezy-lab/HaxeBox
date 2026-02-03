// Patched for s&box whitelist mode: remove System.Reflection usage in Reflect.instanceFields/fields paths.
// Compatible surface for Haxe 4.3.x hxcs runtime.

#pragma warning disable 109, 114, 219, 429, 168, 162
public class Reflect : global::haxe.lang.HxObject
{
    public Reflect(global::haxe.lang.EmptyObject empty) { }

    public Reflect()
    {
        global::Reflect.__hx_ctor__Reflect(this);
    }

    protected static void __hx_ctor__Reflect(global::Reflect __hx_this) { }

    public static bool hasField(object o, string field)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            return (ihx.__hx_getField(field, global::haxe.lang.FieldLookup.hash(field), false, true, false)
                    != global::haxe.lang.Runtime.undefined);
        }

        // In whitelist mode, slowHasField may use reflection.
        // If your patched Runtime.slowHasField is safe, keep it.
        // Otherwise, safest answer is "false".
        try
        {
            return global::haxe.lang.Runtime.slowHasField(o, field);
        }
        catch
        {
            return false;
        }
    }

    public static object field(object o, string field)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            return ihx.__hx_getField(field, global::haxe.lang.FieldLookup.hash(field), false, false, false);
        }

        // Try Runtime path (may be patched by you). Otherwise return null.
        try
        {
            return global::haxe.lang.Runtime.slowGetField(o, field, false);
        }
        catch
        {
            return null;
        }
    }

    public static void setField(object o, string field, object @value)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            ihx.__hx_setField(field, global::haxe.lang.FieldLookup.hash(field), @value, false);
            return;
        }

        // Try Runtime path (may be patched). Otherwise do nothing.
        try
        {
            global::haxe.lang.Runtime.slowSetField(o, field, @value);
        }
        catch
        {
            // ignore in whitelist mode
        }
    }

    public static object getProperty(object o, string field)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            return ihx.__hx_getField(field, global::haxe.lang.FieldLookup.hash(field), false, false, true);
        }

        // Avoid reflection-heavy "get_" probing if Runtime.slowHasField/slowCallField are not safe.
        // Try them, but fall back to direct field read.
        try
        {
            if (global::haxe.lang.Runtime.slowHasField(o, global::haxe.lang.Runtime.concat("get_", field)))
            {
                return global::haxe.lang.Runtime.slowCallField(o, global::haxe.lang.Runtime.concat("get_", field), null);
            }
        }
        catch
        {
            // ignore
        }

        try
        {
            return global::haxe.lang.Runtime.slowGetField(o, field, false);
        }
        catch
        {
            return null;
        }
    }

    public static void setProperty(object o, string field, object @value)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            ihx.__hx_setField(field, global::haxe.lang.FieldLookup.hash(field), @value, true);
            return;
        }

        // Try "set_" method if Runtime supports it safely, else fallback to setField.
        try
        {
            if (global::haxe.lang.Runtime.slowHasField(o, global::haxe.lang.Runtime.concat("set_", field)))
            {
                global::haxe.lang.Runtime.slowCallField(
                    o,
                    global::haxe.lang.Runtime.concat("set_", field),
                    new object[] { (object)@value }
                );
                return;
            }
        }
        catch
        {
            // ignore
        }

        try
        {
            global::haxe.lang.Runtime.slowSetField(o, field, @value);
        }
        catch
        {
            // ignore
        }
    }

    public static object callMethod(object o, object func, global::Array args)
    {
        object[] ret = new object[(int)(global::haxe.lang.Runtime.getField_f(args, "length", 520590566, true))];
        global::cs.Lib.p_nativeArray<object>(
            ((global::Array<object>)(global::Array<object>.__hx_cast<object>((global::Array)(args)))),
            (global::System.Array)(ret)
        );

        object[] args1 = ret;
        return (((global::haxe.lang.Function)(func))).__hx_invokeDynamic(args1);
    }

    public static global::Array<string> fields(object o)
    {
        global::haxe.lang.IHxObject ihx = (o as global::haxe.lang.IHxObject);
        if (ihx != null)
        {
            global::Array<string> ret = new global::Array<string>(new string[] { });
            ihx.__hx_getFields(ret);
            return ret;
        }

        // For System.Type, original called Type.getClassFields (which you patched to safe empty/minimal).
        if (o is global::System.Type)
            return global::Type.getClassFields((global::System.Type)o);

        // Original fallback used reflection via instanceFields(o.GetType()).
        // In whitelist mode, return empty to avoid System.Reflection.
        return new global::Array<string>(new string[] { });
    }

    public static global::Array<string> instanceFields(global::System.Type c)
    {
        // Original used: c1.GetFields(BindingFlags...) via System.Reflection.
        // Whitelist-safe: return empty.
        return new global::Array<string>(new string[] { });
    }

    public static bool isFunction(object f)
    {
        return (f is global::haxe.lang.Function);
    }

    public static int compare<T>(T a, T b)
    {
        return global::haxe.lang.Runtime.compare(a, b);
    }

    public static bool compareMethods(object f1, object f2)
    {
        if (global::haxe.lang.Runtime.eq(f1, f2))
            return true;

        if ((f1 is global::haxe.lang.Closure) && (f2 is global::haxe.lang.Closure))
        {
            global::haxe.lang.Closure f1c = (global::haxe.lang.Closure)f1;
            global::haxe.lang.Closure f2c = (global::haxe.lang.Closure)f2;

            if (global::haxe.lang.Runtime.refEq(f1c.obj, f2c.obj))
                return (f1c.field == f2c.field);

            return false;
        }

        return false;
    }

    public static bool isObject(object v)
    {
        if (v != null)
        {
            return !((v is global::haxe.lang.Enum) || (v is global::haxe.lang.Function) || (v is global::System.ValueType));
        }

        return false;
    }

    public static bool isEnumValue(object v)
    {
        if (v != null)
        {
            if (!(v is global::haxe.lang.Enum))
                return (v is global::System.Enum);

            return true;
        }

        return false;
    }

    public static bool deleteField(object o, string field)
    {
        global::haxe.lang.DynamicObject ihx = (o as global::haxe.lang.DynamicObject);
        if (ihx != null)
        {
            return ihx.__hx_deleteField(field, global::haxe.lang.FieldLookup.hash(field));
        }

        return false;
    }

    public static global::haxe.lang.Null<T> copy<T>(global::haxe.lang.Null<T> o)
    {
        if (!o.hasValue)
            return default(global::haxe.lang.Null<T>);

        object o2 = new global::haxe.lang.DynamicObject(new int[] { }, new object[] { }, new int[] { }, new double[] { });

        int _g = 0;
        global::Array<string> _g1 = global::Reflect.fields((o).toDynamic());
        while (_g < _g1.length)
        {
            string f = _g1[_g];
            ++_g;
            global::Reflect.setField(o2, f, global::Reflect.field((o).toDynamic(), f));
        }

        return global::haxe.lang.Null<object>.ofDynamic<T>(o2);
    }

    public static object makeVarArgs(global::haxe.lang.Function f)
    {
        return new global::haxe.lang.VarArgsFunction(f);
    }
}

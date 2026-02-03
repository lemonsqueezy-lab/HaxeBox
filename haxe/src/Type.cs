// Patched for s&box whitelist mode: remove AppDomain/reflection-heavy paths.
// Compatible surface for Haxe 4.3.x hxcs runtime.

#pragma warning disable 109, 114, 219, 429, 168, 162

public class ValueType : global::haxe.lang.Enum
{
    protected ValueType(int index) : base(index) { }

    public static readonly global::ValueType TNull = new global::ValueType_TNull();
    public static readonly global::ValueType TInt = new global::ValueType_TInt();
    public static readonly global::ValueType TFloat = new global::ValueType_TFloat();
    public static readonly global::ValueType TBool = new global::ValueType_TBool();
    public static readonly global::ValueType TObject = new global::ValueType_TObject();
    public static readonly global::ValueType TFunction = new global::ValueType_TFunction();

    public static global::ValueType TClass(global::System.Type c) => new global::ValueType_TClass(c);
    public static global::ValueType TEnum(global::System.Type e) => new global::ValueType_TEnum(e);

    public static readonly global::ValueType TUnknown = new global::ValueType_TUnknown();

    protected static readonly string[] __hx_constructs =
        new string[] { "TNull", "TInt", "TFloat", "TBool", "TObject", "TFunction", "TClass", "TEnum", "TUnknown" };
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TNull : global::ValueType
{
    public ValueType_TNull() : base(0) { }
    public override string getTag() => "TNull";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TInt : global::ValueType
{
    public ValueType_TInt() : base(1) { }
    public override string getTag() => "TInt";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TFloat : global::ValueType
{
    public ValueType_TFloat() : base(2) { }
    public override string getTag() => "TFloat";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TBool : global::ValueType
{
    public ValueType_TBool() : base(3) { }
    public override string getTag() => "TBool";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TObject : global::ValueType
{
    public ValueType_TObject() : base(4) { }
    public override string getTag() => "TObject";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TFunction : global::ValueType
{
    public ValueType_TFunction() : base(5) { }
    public override string getTag() => "TFunction";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TClass : global::ValueType
{
    public ValueType_TClass(global::System.Type c) : base(6) { this.c = c; }

    public override global::Array<object> getParams() => new global::Array<object>(new object[] { this.c });
    public override string getTag() => "TClass";

    public override int GetHashCode()
    {
        unchecked { return global::haxe.lang.Enum.paramsGetHashCode(6, new object[] { this.c }); }
    }

    public override bool Equals(object other)
    {
        if (global::System.Object.ReferenceEquals(this, other)) return true;
        global::ValueType_TClass en = other as global::ValueType_TClass;
        if (en == null) return false;
        return global::Type.enumEq<object>(this.c, en.c);
    }

    public override string toString() => global::haxe.lang.Enum.paramsToString("TClass", new object[] { this.c });

    public readonly global::System.Type c;
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TEnum : global::ValueType
{
    public ValueType_TEnum(global::System.Type e) : base(7) { this.e = e; }

    public override global::Array<object> getParams() => new global::Array<object>(new object[] { this.e });
    public override string getTag() => "TEnum";

    public override int GetHashCode()
    {
        unchecked { return global::haxe.lang.Enum.paramsGetHashCode(7, new object[] { this.e }); }
    }

    public override bool Equals(object other)
    {
        if (global::System.Object.ReferenceEquals(this, other)) return true;
        global::ValueType_TEnum en = other as global::ValueType_TEnum;
        if (en == null) return false;
        return global::Type.enumEq<object>(this.e, en.e);
    }

    public override string toString() => global::haxe.lang.Enum.paramsToString("TEnum", new object[] { this.e });

    public readonly global::System.Type e;
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public sealed class ValueType_TUnknown : global::ValueType
{
    public ValueType_TUnknown() : base(8) { }
    public override string getTag() => "TUnknown";
}

#pragma warning disable 109, 114, 219, 429, 168, 162
public class Type : global::haxe.lang.HxObject
{
    public Type(global::haxe.lang.EmptyObject empty) { }

    public Type() { global::Type.__hx_ctor__Type(this); }

    protected static void __hx_ctor__Type(global::Type __hx_this) { }

    // ---- Reflection-free safe helpers ----

    private static global::System.Type MapPrimitiveByHaxeName(string name)
    {
        switch (name)
        {
            case "Bool": return typeof(bool);
            case "Int": return typeof(int);
            case "Float": return typeof(double);
            case "String": return typeof(string);
            case "Dynamic": return typeof(object);
            case "Class": return typeof(global::System.Type);
            default: return null;
        }
    }

    private static global::Array<string> EmptyStringArray()
    {
        return new global::Array<string>(new string[] { });
    }

    // ---- API ----

    public static global::System.Type getClass<T>(T o)
    {
        if (global::System.Object.ReferenceEquals(o, default(T))) return null;
        if (o is global::haxe.lang.DynamicObject) return null;
        if (o is global::System.Type) return null;
        return (global::System.Type)(object)global::cs.Lib.getNativeType(o);
    }

    public static global::System.Type getEnum(object o)
    {
        // Avoid any BaseType reflection-y paths beyond trivial GetType/BaseType.
        if (o is global::haxe.lang.Enum)
        {
            var t = global::cs.Lib.getNativeType(o);
            return (global::System.Type)(object)t.BaseType;
        }

        if (o is global::System.Enum)
        {
            return (global::System.Type)(object)global::cs.Lib.getNativeType(o);
        }

        return null;
    }

    public static global::System.Type getSuperClass(global::System.Type c)
    {
        // Keep as-is: BaseType is usually safe.
        global::System.Type @base = global::cs.Lib.toNativeType(c).BaseType;
        if (global::System.Object.ReferenceEquals(@base, default(global::System.Type))) return null;

        string s = @base.ToString();
        if (s == "haxe.lang.HxObject" || s == "System.Object") return null;

        return global::cs.Lib.fromNativeType(@base);
    }

    public static string getClassName(global::System.Type c)
    {
        unchecked
        {
            string ret = global::cs.Lib.toNativeType(c).ToString();
            switch (ret)
            {
                case "System.Boolean": return "Bool";
                case "System.Double": return "Float";
                case "System.Int32": return "Int";
                case "System.Object": return "Dynamic";
                case "System.String": return "String";
                case "System.Type": return "Class";
                default:
                    // Preserve original behavior without extra reflection.
                    return ((string)(((global::System.String)(object)ret)).Split(new char[] { (char)96 })[0]);
            }
        }
    }

    public static string getEnumName(global::System.Type e)
    {
        return global::cs.Lib.toNativeType(e).ToString();
    }

    public static global::System.Type resolveClass(string name)
    {
        // Whitelist-safe: DO NOT scan AppDomain assemblies / DO NOT do complex reflection.
        // We only resolve built-in Haxe primitive aliases; everything else returns null.
        // If you need resolution for specific engine/game types, you can extend this map manually.
        return MapPrimitiveByHaxeName(name);
    }

    public static global::System.Type resolveEnum(string name)
    {
        // Same idea: without reflection we can’t reliably resolve arbitrary enums by name.
        return null;
    }

    public static T createInstance<T>(global::System.Type cl, global::Array args)
    {
        // Without reflection/Activator we can’t create arbitrary types.
        // Keep the common string fast-path (used by hxcs runtime).
        if (global::System.Object.ReferenceEquals(cl, (object)typeof(string)))
            return global::haxe.lang.Runtime.genericCast<T>(args[0]);

        throw new global::System.NotSupportedException(
            "Type.createInstance is not supported in whitelist mode (reflection/constructors blocked).");
    }

    protected static readonly object[] __createEmptyInstance_EMPTY_ARGS =
        new object[] { (object)global::haxe.lang.EmptyObject.EMPTY };

    public static T createEmptyInstance<T>(global::System.Type cl)
    {
        // Keep string fast-path.
        global::System.Type t = global::cs.Lib.toNativeType(cl);
        if (global::System.Object.ReferenceEquals(t, (object)typeof(string)))
            return (T)(object)"";

        throw new global::System.NotSupportedException(
            "Type.createEmptyInstance is not supported in whitelist mode (Activator blocked).");
    }

    public static T createEnum<T>(global::System.Type e, string constr, global::Array @params)
    {
        // Enum construction in hxcs relies on reflection / dynamic field lookup on type objects.
        // In whitelist mode we can’t guarantee it works.
        throw new global::System.NotSupportedException(
            "Type.createEnum is not supported in whitelist mode (reflection/dynamic enum construction blocked).");
    }

    public static T createEnumIndex<T>(global::System.Type e, int index, global::Array @params)
    {
        throw new global::System.NotSupportedException(
            "Type.createEnumIndex is not supported in whitelist mode (reflection/dynamic enum construction blocked).");
    }

    public static global::Array<string> getInstanceFields(global::System.Type c)
    {
        // Reflection-heavy in original (GetMembers). Return safe minimal set.
        if (global::haxe.lang.Runtime.refEq(c, typeof(string)))
            return global::haxe.lang.StringRefl.fields;

        return EmptyStringArray();
    }

    public static global::Array<string> getClassFields(global::System.Type c)
    {
        // Reflection-heavy in original (GetMembers). Keep string special-case.
        if (global::System.Object.ReferenceEquals(c, (object)typeof(string)))
            return new global::Array<string>(new string[] { "fromCharCode" });

        return EmptyStringArray();
    }

    public static global::Array<string> getEnumConstructs(global::System.Type e)
    {
        // Reflection-heavy in original (GetField("__hx_constructs") / Enum.GetNames).
        return EmptyStringArray();
    }

    public static global::ValueType @typeof(object v)
    {
        if (v == null) return global::ValueType.TNull;

        // Keep behavior close to original without deeper reflection.
        if (v is global::System.Type) return global::ValueType.TObject;

        global::System.Type t = v.GetType();

        // Enum check is generally safe.
        if (t.IsEnum) return global::ValueType.TEnum(t);

        if (v is global::haxe.lang.Enum)
            return global::ValueType.TEnum(t.BaseType);

        if (t.IsValueType)
        {
            global::System.IConvertible vc = v as global::System.IConvertible;
            if (vc != null)
            {
                switch (vc.GetTypeCode())
                {
                    case global::System.TypeCode.Boolean: return global::ValueType.TBool;
                    case global::System.TypeCode.Int32: return global::ValueType.TInt;

                    case global::System.TypeCode.Double:
                    {
                        double d = vc.ToDouble(default(global::System.IFormatProvider));
                        if ((d >= global::System.Int32.MinValue) && (d <= global::System.Int32.MaxValue) &&
                            (d == vc.ToInt32(default(global::System.IFormatProvider))))
                            return global::ValueType.TInt;

                        return global::ValueType.TFloat;
                    }

                    default:
                        return global::ValueType.TClass(t);
                }
            }

            return global::ValueType.TClass(t);
        }

        if (v is global::haxe.lang.IHxObject)
        {
            if (v is global::haxe.lang.DynamicObject) return global::ValueType.TObject;
            return global::ValueType.TClass(t);
        }

        if (v is global::haxe.lang.Function) return global::ValueType.TFunction;

        return global::ValueType.TClass(t);
    }

    public static bool enumEq<T>(T a, T b)
    {
        if (global::haxe.lang.Runtime.eq(a, default(T)))
            return global::haxe.lang.Runtime.eq(b, default(T));
        if (global::haxe.lang.Runtime.eq(b, default(T)))
            return false;
        return a.Equals(b);
    }

    public static string enumConstructor(object e)
    {
        if (e is global::System.Enum)
            return ((global::System.Enum)e).ToString();

        return (((global::haxe.lang.Enum)e)).getTag();
    }

    public static global::Array enumParameters(object e)
    {
        if (e is global::System.Enum)
            return new global::Array<object>(new object[] { });

        return (((global::haxe.lang.Enum)e)).getParams();
    }

    public static int enumIndex(object e)
    {
        // Original path uses Enum.GetValues + Array.IndexOf (reflection-ish).
        // In whitelist mode, for System.Enum we cannot reliably compute index.
        if (e is global::System.Enum)
            return 0;

        return (((global::haxe.lang.Enum)e))._hx_index;
    }

    public static global::Array<T> allEnums<T>(global::System.Type e)
    {
        // Reflection-heavy (construct names + Reflect.field). Return empty.
        return new global::Array<T>(new T[] { });
    }
}

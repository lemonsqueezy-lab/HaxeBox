// Patched for s&box whitelist mode (no reflection slow-path)
// Compatible API surface for Haxe 4.3.x hxcs runtime.

namespace haxe.lang
{
    public enum EmptyObject
    {
        EMPTY
    }
}

#pragma warning disable 109, 114, 219, 429, 168, 162
namespace haxe.lang
{
    public class Runtime
    {
        public Runtime()
        {
        }

        // Keep: used by generated hxcs code
        public static object getField(haxe.lang.HxObject obj, string field, int fieldHash, bool throwErrors)
        {
            if (obj == null && !throwErrors) return null;
            return obj.__hx_getField(
                field,
                (fieldHash == 0) ? haxe.lang.FieldLookup.hash(field) : fieldHash,
                throwErrors,
                false,
                false
            );
        }

        public static double getField_f(haxe.lang.HxObject obj, string field, int fieldHash, bool throwErrors)
        {
            if (obj == null && !throwErrors) return 0.0;
            return obj.__hx_getField_f(
                field,
                (fieldHash == 0) ? haxe.lang.FieldLookup.hash(field) : fieldHash,
                throwErrors,
                false
            );
        }

        public static object setField(haxe.lang.HxObject obj, string field, int fieldHash, object value)
        {
            return obj.__hx_setField(
                field,
                (fieldHash == 0) ? haxe.lang.FieldLookup.hash(field) : fieldHash,
                value,
                false
            );
        }

        public static double setField_f(haxe.lang.HxObject obj, string field, int fieldHash, double value)
        {
            return obj.__hx_setField_f(
                field,
                (fieldHash == 0) ? haxe.lang.FieldLookup.hash(field) : fieldHash,
                value,
                false
            );
        }

        public static object callField(haxe.lang.HxObject obj, string field, int fieldHash, object[] args)
        {
            return obj.__hx_invokeField(
                field,
                (fieldHash == 0) ? haxe.lang.FieldLookup.hash(field) : fieldHash,
                args
            );
        }

        public static readonly object undefined = (object)(new global::System.Object());

        public static object closure(object obj, int hash, string field)
        {
            return new global::haxe.lang.Closure(obj, field, hash);
        }

        public static bool eq(object v1, object v2)
        {
            if (global::System.Object.ReferenceEquals(v1, v2)) return true;
            if (global::System.Object.ReferenceEquals(v1, null) || global::System.Object.ReferenceEquals(v2, null)) return false;

            // Keep original numeric/string comparisons (no reflection).
            global::System.IConvertible v1c = v1 as global::System.IConvertible;
            if (v1c != null)
            {
                global::System.IConvertible v2c = v2 as global::System.IConvertible;
                if (v2c == null) return false;

                global::System.TypeCode t1 = v1c.GetTypeCode();
                global::System.TypeCode t2 = v2c.GetTypeCode();

                if (t1 == t2)
                    return global::System.Object.Equals(v1c, v2c);

                if (t1 == global::System.TypeCode.String || t2 == global::System.TypeCode.String)
                    return false;

                switch (t1)
                {
                    case global::System.TypeCode.Int64:
                        switch (t2)
                        {
                            case global::System.TypeCode.Int64:
                            case global::System.TypeCode.UInt64:
                            case global::System.TypeCode.Single:
                            case global::System.TypeCode.Double:
                            case global::System.TypeCode.DateTime:
                                return v1c.ToInt64(default(global::System.IFormatProvider)) == v2c.ToInt64(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Decimal:
                                return v1c.ToDecimal(default(global::System.IFormatProvider)).Equals(v2c.ToDecimal(default(global::System.IFormatProvider)));
                            default:
                                return v1c.ToInt64(default(global::System.IFormatProvider)) == v2c.ToInt64(default(global::System.IFormatProvider));
                        }

                    case global::System.TypeCode.Single:
                    case global::System.TypeCode.Double:
                        switch (t2)
                        {
                            case global::System.TypeCode.Int64:
                                return v1c.ToInt64(default(global::System.IFormatProvider)) == v2c.ToInt64(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Single:
                            case global::System.TypeCode.Double:
                                return v1c.ToDouble(default(global::System.IFormatProvider)) == v2c.ToDouble(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Decimal:
                                return v1c.ToDecimal(default(global::System.IFormatProvider)).Equals(v2c.ToDecimal(default(global::System.IFormatProvider)));
                            case global::System.TypeCode.UInt64:
                            case global::System.TypeCode.DateTime:
                                return v1c.ToUInt64(default(global::System.IFormatProvider)) == v2c.ToUInt64(default(global::System.IFormatProvider));
                            default:
                                return v1c.ToDouble(default(global::System.IFormatProvider)) == v2c.ToDouble(default(global::System.IFormatProvider));
                        }

                    case global::System.TypeCode.Decimal:
                        return v1c.ToDecimal(default(global::System.IFormatProvider)).Equals(v2c.ToDecimal(default(global::System.IFormatProvider)));

                    case global::System.TypeCode.UInt64:
                    case global::System.TypeCode.DateTime:
                        switch (t2)
                        {
                            case global::System.TypeCode.Int64:
                                return v1c.ToInt64(default(global::System.IFormatProvider)) == v2c.ToInt64(default(global::System.IFormatProvider));
                            case global::System.TypeCode.UInt64:
                            case global::System.TypeCode.Single:
                            case global::System.TypeCode.Double:
                            case global::System.TypeCode.DateTime:
                                return v1c.ToUInt64(default(global::System.IFormatProvider)) == v2c.ToUInt64(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Decimal:
                                return v1c.ToDecimal(default(global::System.IFormatProvider)).Equals(v2c.ToDecimal(default(global::System.IFormatProvider)));
                            default:
                                return v1c.ToUInt64(default(global::System.IFormatProvider)) == v2c.ToUInt64(default(global::System.IFormatProvider));
                        }

                    default:
                        switch (t2)
                        {
                            case global::System.TypeCode.Int64:
                                return v1c.ToInt64(default(global::System.IFormatProvider)) == v2c.ToInt64(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Single:
                            case global::System.TypeCode.Double:
                                return v1c.ToDouble(default(global::System.IFormatProvider)) == v2c.ToDouble(default(global::System.IFormatProvider));
                            case global::System.TypeCode.Decimal:
                                return v1c.ToDecimal(default(global::System.IFormatProvider)).Equals(v2c.ToDecimal(default(global::System.IFormatProvider)));
                            case global::System.TypeCode.UInt64:
                            case global::System.TypeCode.DateTime:
                                return v1c.ToUInt64(default(global::System.IFormatProvider)) == v2c.ToUInt64(default(global::System.IFormatProvider));
                            default:
                                return v1c.ToInt32(default(global::System.IFormatProvider)) == v2c.ToInt32(default(global::System.IFormatProvider));
                        }
                }
            }

            global::System.ValueType v1v = v1 as global::System.ValueType;
            if (v1v != null) return v1.Equals(v2);

            // Avoid any Type reflection. Only reference equality.
            if (v1 is global::System.Type || v2 is global::System.Type)
                return global::System.Object.ReferenceEquals(v1, v2);

            return false;
        }

        public static bool refEq(object v1, object v2)
        {
            // Avoid typeEq (which used reflection); in whitelist we only allow reference equality.
            return global::System.Object.ReferenceEquals(v1, v2);
        }

        public static double toDouble(object obj)
        {
            if (obj == null) return 0.0;
            if (obj is double d) return d;
            return (obj as global::System.IConvertible).ToDouble(default(global::System.IFormatProvider));
        }

        public static int toInt(object obj)
        {
            if (obj == null) return 0;
            if (obj is int i) return i;
            return (obj as global::System.IConvertible).ToInt32(default(global::System.IFormatProvider));
        }

        public static bool isInt(object obj)
        {
            global::System.IConvertible cv1 = obj as global::System.IConvertible;
            if (cv1 == null) return false;

            switch (cv1.GetTypeCode())
            {
                case global::System.TypeCode.Int32:
                case global::System.TypeCode.UInt32:
                    return true;

                case global::System.TypeCode.Double:
                    double d = (double)obj;
                    if (d >= global::System.Int32.MinValue && d <= global::System.Int32.MaxValue)
                        return d == (int)d;
                    return false;

                default:
                    return false;
            }
        }

        public static bool isUInt(object obj)
        {
            global::System.IConvertible cv1 = obj as global::System.IConvertible;
            if (cv1 == null) return false;

            switch (cv1.GetTypeCode())
            {
                case global::System.TypeCode.UInt32:
                    return true;

                case global::System.TypeCode.Double:
                    double d = (double)obj;
                    if (d >= global::System.UInt32.MinValue && d <= global::System.UInt32.MaxValue)
                        return (uint)d == d;
                    return false;

                default:
                    return false;
            }
        }

        public static int compare(object v1, object v2)
        {
            if (global::System.Object.ReferenceEquals(v1, v2)) return 0;
            if (global::System.Object.ReferenceEquals(v1, null)) return -1;
            if (global::System.Object.ReferenceEquals(v2, null)) return 1;

            global::System.IConvertible cv1 = v1 as global::System.IConvertible;
            if (cv1 != null)
            {
                global::System.IConvertible cv2 = v2 as global::System.IConvertible;
                if (cv2 == null)
                    throw new global::System.ArgumentException(concat(concat(concat("Cannot compare ", global::cs.Lib.getNativeType(v1).ToString()), " and "), global::cs.Lib.getNativeType(v2).ToString()));

                switch (cv1.GetTypeCode())
                {
                    case global::System.TypeCode.Double:
                        double d1 = (double)v1;
                        double d2 = cv2.ToDouble(default(global::System.IFormatProvider));
                        return d1 < d2 ? -1 : (d1 > d2 ? 1 : 0);

                    case global::System.TypeCode.String:
                        if (cv2.GetTypeCode() != global::System.TypeCode.String)
                            throw new global::System.ArgumentException(concat(concat(concat("Cannot compare ", global::cs.Lib.getNativeType(v1).ToString()), " and "), global::cs.Lib.getNativeType(v2).ToString()));
                        return string.Compare((string)v1, (string)v2, global::System.StringComparison.Ordinal);

                    default:
                        double n1 = cv1.ToDouble(default(global::System.IFormatProvider));
                        double n2 = cv2.ToDouble(default(global::System.IFormatProvider));
                        return n1 < n2 ? -1 : (n1 > n2 ? 1 : 0);
                }
            }

            global::System.IComparable c1 = v1 as global::System.IComparable;
            global::System.IComparable c2 = v2 as global::System.IComparable;
            if (c1 == null || c2 == null)
                throw new global::System.ArgumentException(concat(concat(concat("Cannot compare ", global::cs.Lib.getNativeType(v1).ToString()), " and "), global::cs.Lib.getNativeType(v2).ToString()));

            return c1.CompareTo((object)c2);
        }

        public static object plus(object v1, object v2)
        {
            if (v1 is string || v2 is string)
                return concat(global::Std.@string(v1), global::Std.@string(v2));

            if (v1 == null)
            {
                if (v2 == null) return null;
                v1 = 0;
            }
            else if (v2 == null)
            {
                v2 = 0;
            }

            global::System.IConvertible cv1 = v1 as global::System.IConvertible;
            if (cv1 != null)
            {
                global::System.IConvertible cv2 = v2 as global::System.IConvertible;
                if (cv2 == null)
                    throw new global::System.ArgumentException(concat(concat(concat("Cannot dynamically add ", global::cs.Lib.getNativeType(v1).ToString()), " and "), global::cs.Lib.getNativeType(v2).ToString()));

                return cv1.ToDouble(default(global::System.IFormatProvider)) + cv2.ToDouble(default(global::System.IFormatProvider));
            }

            throw new global::System.ArgumentException(concat(concat(concat("Cannot dynamically add ", global::Std.@string(v1)), " and "), global::Std.@string(v2)));
        }

        // ---------------------------
        // Whitelist-safe slow path
        // ---------------------------

        private static object SlowPathDenied(string kind, string field)
        {
            // No reflection here; just throw. Exceptions are whitelisted in your list.
            throw new global::System.Exception(concat(concat(kind, ": "), field));
        }

        public static object slowGetField(object obj, string field, bool throwErrors)
        {
            if (obj == null)
            {
                if (throwErrors)
                    throw new global::System.NullReferenceException(concat(concat("Cannot access field '", field), "' of null."));
                return null;
            }

            // Support string "pseudo-fields" only via the existing helper (no reflection).
            string s = obj as string;
            if (s != null)
                return global::haxe.lang.StringRefl.handleGetField(s, field, throwErrors);

            if (throwErrors)
                return SlowPathDenied("GetField (reflection disabled)", field);

            return null;
        }

        public static bool slowHasField(object obj, string field)
        {
            if (obj == null) return false;

            string s = obj as string;
            if (s != null)
                return global::haxe.lang.StringRefl.handleGetField(s, field, false) != null;

            return false;
        }

        public static object slowSetField(object obj, string field, object value)
        {
            if (obj == null)
                throw new global::System.NullReferenceException(concat(concat("Cannot access field '", field), "' of null."));

            // No reflection: cannot set on arbitrary CLR objects in whitelist mode.
            return SlowPathDenied("SetField (reflection disabled)", field);
        }

        public static object mkNullable(object obj, global::System.Type nullableType)
        {
            // Reflection-based construction is blocked (GetMethod/Invoke).
            // Keep behavior "best effort": return obj as-is.
            return obj;
        }

        public static object callMethod(object obj, object[] methods, int methodLength, object[] args)
        {
            // Entire method selection/invocation is reflection-based.
            return SlowPathDenied("CallMethod (reflection disabled)", "callMethod");
        }

        public static object slowCallField(object obj, string field, object[] args)
        {
            if (field == "toString" && (args == null || args.Length == 0))
                return obj == null ? "null" : obj.ToString();

            if (args == null) args = new object[0];

            string s = obj as string;
            if (s != null)
                return global::haxe.lang.StringRefl.handleCallField(s, field, args);

            return SlowPathDenied("CallField (reflection disabled)", field);
        }

        // These overloads are used heavily by generated code; keep the HxObject fast-path.
        public static object callField(object obj, string field, int fieldHash, object[] args)
        {
            global::haxe.lang.HxObject hxObj = obj as global::haxe.lang.HxObject;
            if (hxObj != null)
                return hxObj.__hx_invokeField(field, (fieldHash == 0) ? global::haxe.lang.FieldLookup.hash(field) : fieldHash, args);

            return global::haxe.lang.Runtime.slowCallField(obj, field, args);
        }

        public static object getField(object obj, string field, int fieldHash, bool throwErrors)
        {
            global::haxe.lang.HxObject hxObj = obj as global::haxe.lang.HxObject;
            if (hxObj != null)
                return hxObj.__hx_getField(field, (fieldHash == 0) ? global::haxe.lang.FieldLookup.hash(field) : fieldHash, throwErrors, false, false);

            return global::haxe.lang.Runtime.slowGetField(obj, field, throwErrors);
        }

        public static double getField_f(object obj, string field, int fieldHash, bool throwErrors)
        {
            global::haxe.lang.HxObject hxObj = obj as global::haxe.lang.HxObject;
            if (hxObj != null)
                return hxObj.__hx_getField_f(field, (fieldHash == 0) ? global::haxe.lang.FieldLookup.hash(field) : fieldHash, throwErrors, false);

            return global::haxe.lang.Runtime.toDouble(global::haxe.lang.Runtime.slowGetField(obj, field, throwErrors));
        }

        public static object setField(object obj, string field, int fieldHash, object value)
        {
            global::haxe.lang.HxObject hxObj = obj as global::haxe.lang.HxObject;
            if (hxObj != null)
                return hxObj.__hx_setField(field, (fieldHash == 0) ? global::haxe.lang.FieldLookup.hash(field) : fieldHash, value, false);

            return global::haxe.lang.Runtime.slowSetField(obj, field, value);
        }

        public static double setField_f(object obj, string field, int fieldHash, double value)
        {
            global::haxe.lang.HxObject hxObj = obj as global::haxe.lang.HxObject;
            if (hxObj != null)
                return hxObj.__hx_setField_f(field, (fieldHash == 0) ? global::haxe.lang.FieldLookup.hash(field) : fieldHash, value, false);

            return global::haxe.lang.Runtime.toDouble(global::haxe.lang.Runtime.slowSetField(obj, field, value));
        }

        public static string toString(object obj)
        {
            if (obj == null) return null;

            if (obj is bool)
                return toBool(obj) ? "true" : "false";

            return obj.ToString();
        }

        public static bool typeEq(global::System.Type t1, global::System.Type t2)
        {
            // No reflection-based normalization in whitelist mode.
            return global::System.Object.ReferenceEquals(t1, t2);
        }

        public static global::haxe.lang.GenericInterface getGenericAttr(global::System.Type t)
        {
            // Uses GetCustomAttributes in original; blocked in whitelist mode.
            return null;
        }

        public static To genericCast<To>(object obj)
        {
            if (obj is To) return (To)obj;
            if (obj == null) return default(To);

            if (typeof(To) == typeof(double))
                return (To)(object)toDouble(obj);
            if (typeof(To) == typeof(int))
                return (To)(object)toInt(obj);
            if (typeof(To) == typeof(float))
                return (To)(object)(float)toDouble(obj);
            if (typeof(To) == typeof(long))
                return (To)(object)(long)toDouble(obj);

            return (To)obj;
        }

        public static string concat(string s1, string s2)
        {
            return (s1 == null ? "null" : s1) + (s2 == null ? "null" : s2);
        }

        public static bool toBool(object dyn)
        {
            if (dyn == null) return false;
            return (bool)dyn;
        }

        public static object unbox(object dyn)
        {
            // This calls toDynamic via Runtime.callField, which will fast-path HxObject.
            if (dyn != null && concat(global::Std.@string(global::cs.Lib.getNativeType(dyn)), "").StartsWith("haxe.lang.Null"))
                return (object)global::haxe.lang.Runtime.callField(dyn, "toDynamic", 1705629508, null);

            return dyn;
        }
    }
}

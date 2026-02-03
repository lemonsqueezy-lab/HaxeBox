// Patched for whitelist-friendly runtime:
// - Keeps inheritance from System.Exception (required for `throw new haxe.exceptions.*`)
// - Removes StackTrace/System.Diagnostics usage
// - Keeps Haxe API surface + IHxObject dynamic plumbing

#pragma warning disable 109, 114, 219, 429, 168, 162

namespace haxe
{
    public class Exception : global::System.Exception, global::haxe.lang.IHxObject
    {
        public Exception(global::haxe.lang.EmptyObject empty)
            : base(null, null)
        {
            this.__skipStack = 0;
        }

        public Exception(string message, global::haxe.Exception previous, object native)
            : base(message, (previous == null) ? null : previous)
        {
            unchecked
            {
                this.__skipStack = 0;

                this.__previousException = previous;

                // Keep a native exception reference if possible (cheap + whitelist-safe)
                if (native is global::System.Exception se)
                {
                    this.__nativeException = se;
                }
                else
                {
                    // If native is null or not an Exception, fall back to this
                    this.__nativeException = this;
                }

                // No StackTrace capture in whitelist build
                this.__nativeStack = null;
                this.__ownStack = false;

                // cache message for cases when base.Message is not what Haxe expects
                this.__message = message;
            }
        }

        // ---- Static API ----

        public static global::haxe.Exception caught(object value)
        {
            if (value is global::haxe.Exception he)
            {
                return he;
            }

            if (value is global::System.Exception se)
            {
                return new global::haxe.Exception(se.Message, default(global::haxe.Exception), se);
            }

            return new global::haxe.ValueException(value, default(global::haxe.Exception), value);
        }

        public static object thrown(object value)
        {
            if (value is global::haxe.Exception he)
            {
                return he.get_native();
            }

            if (value is global::System.Exception)
            {
                return value;
            }

            global::haxe.ValueException e = new global::haxe.ValueException(value, default(global::haxe.Exception), default(object));
            e.__shiftStack();
            return e.get_native();
        }

        // ---- Fields ----

        
        public global::Array<object> __exceptionStack;

        // In original code it's System.Diagnostics.StackTrace.
        // For whitelist safety keep it as object placeholder.
        
        public object __nativeStack;

        
        public bool __ownStack;

        
        public int __skipStack;

        
        public global::System.Exception __nativeException;

        
        public global::haxe.Exception __previousException;

        
        public string __message;

        // ---- Public instance API ----

        public virtual object unwrap()
        {
            return this.__nativeException;
        }

        public virtual string toString()
        {
            return this.get_message();
        }

        public virtual string details()
        {
            // Whitelist-safe: no stack printing.
            // Keep roughly same formatting expectations.
            if (this.get_previous() == null)
            {
                return global::haxe.lang.Runtime.concat("Exception: ", this.toString());
            }

            string result = "";
            global::haxe.Exception e = this;
            global::haxe.Exception prev = null;

            while (e != null)
            {
                if (prev == null)
                {
                    result = global::haxe.lang.Runtime.concat(
                        global::haxe.lang.Runtime.concat("Exception: ", e.get_message()),
                        result
                    );
                }
                else
                {
                    result = global::haxe.lang.Runtime.concat(
                        global::haxe.lang.Runtime.concat(
                            global::haxe.lang.Runtime.concat("Exception: ", e.get_message()),
                            "\n\nNext "
                        ),
                        result
                    );
                }

                prev = e;
                e = e.get_previous();
            }

            return result;
        }

        
        public void __shiftStack()
        {
            // Keep counter behavior (some code increments skip)
            this.__skipStack++;
        }

        public virtual string get_message()
        {
            // Prefer cached message; fall back to base.Message.
            return this.__message ?? this.Message;
        }

        public virtual global::haxe.Exception get_previous()
        {
            return this.__previousException;
        }

        public object get_native()
        {
            // Must be System.Exception (or null). Keep native if present else this.
            return (object)(this.__nativeException ?? this);
        }

        public virtual global::Array<object> get_stack()
        {
            // Whitelist-safe: always empty stack
            global::Array<object> s = this.__exceptionStack;
            if (s == null)
            {
                s = new global::Array<object>(new object[] { });
                this.__exceptionStack = s;
            }
            return s;
        }

        // ---- IHxObject dynamic plumbing ----

        public virtual object __hx_lookupField(string field, int hash, bool throwErrors, bool isCheck)
        {
            if (isCheck) return global::haxe.lang.Runtime.undefined;
            if (throwErrors) throw new global::System.Exception("Field not found.");
            return null;
        }

        public virtual double __hx_lookupField_f(string field, int hash, bool throwErrors)
        {
            if (throwErrors) throw new global::System.Exception("Field not found or incompatible field type.");
            return default(double);
        }

        public virtual object __hx_lookupSetField(string field, int hash, object value)
        {
            throw new global::System.Exception("Cannot access field for writing.");
        }

        public virtual double __hx_lookupSetField_f(string field, int hash, double value)
        {
            throw new global::System.Exception("Cannot access field for writing or incompatible type.");
        }

        public virtual double __hx_setField_f(string field, int hash, double value, bool handleProperties)
        {
            unchecked
            {
                switch (hash)
                {
                    case 1177754921: // __skipStack
                        this.__skipStack = (int)value;
                        return value;

                    default:
                        return this.__hx_lookupSetField_f(field, hash, value);
                }
            }
        }

        public virtual object __hx_setField(string field, int hash, object value, bool handleProperties)
        {
            unchecked
            {
                switch (hash)
                {
                    case 78945784: // __previousException
                        this.__previousException = (global::haxe.Exception)value;
                        return value;

                    case 221637784: // __nativeException
                        this.__nativeException = (global::System.Exception)value;
                        return value;

                    case 1177754921: // __skipStack
                        this.__skipStack = (int)(global::haxe.lang.Runtime.toInt(value));
                        return value;

                    case 1460447810: // __ownStack
                        this.__ownStack = global::haxe.lang.Runtime.toBool(value);
                        return value;

                    case 863972113: // __nativeStack (object)
                        this.__nativeStack = value;
                        return value;

                    case 1066783641: // __exceptionStack
                        this.__exceptionStack = (global::Array<object>)global::Array<object>.__hx_cast<object>((global::Array)value);
                        return value;

                    default:
                        return this.__hx_lookupSetField(field, hash, value);
                }
            }
        }

        public virtual object __hx_getField(string field, int hash, bool throwErrors, bool isCheck, bool handleProperties)
        {
            unchecked
            {
                switch (hash)
                {
                    case 1203028895: return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "get_stack", 1203028895));
                    case 312752480:  return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "get_native", 312752480));
                    case 1489662016: return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "get_previous", 1489662016));
                    case 537630174:  return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "get_message", 537630174));
                    case 1274465926: return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "__shiftStack", 1274465926));
                    case 727112898:  return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "details", 727112898));
                    case 946786476:  return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "toString", 946786476));
                    case 1825849507: return (global::haxe.lang.Function)(new global::haxe.lang.Closure(this, "unwrap", 1825849507));

                    case 78945784:   return this.__previousException;
                    case 221637784:  return this.__nativeException;
                    case 1177754921: return this.__skipStack;
                    case 1460447810: return this.__ownStack;
                    case 863972113:  return this.__nativeStack;
                    case 1066783641: return this.__exceptionStack;

                    case 572311959:  return this.get_native();
                    case 598785079:  return this.get_previous();
                    case 67856200:   return this.get_stack();
                    case 437335495:  return this.get_message();

                    default:
                        return this.__hx_lookupField(field, hash, throwErrors, isCheck);
                }
            }
        }

        public virtual double __hx_getField_f(string field, int hash, bool throwErrors, bool handleProperties)
        {
            unchecked
            {
                switch (hash)
                {
                    case 1177754921:
                        return (double)this.__skipStack;
                    default:
                        return this.__hx_lookupField_f(field, hash, throwErrors);
                }
            }
        }

        public virtual object __hx_invokeField(string field, int hash, object[] dynargs)
        {
            unchecked
            {
                switch (hash)
                {
                    case 1203028895: return this.get_stack();
                    case 312752480:  return this.get_native();
                    case 1489662016: return this.get_previous();
                    case 537630174:  return this.get_message();
                    case 1274465926: this.__shiftStack(); break;
                    case 727112898:  return this.details();
                    case 946786476:  return this.toString();
                    case 1825849507: return this.unwrap();

                    default:
                        return ((global::haxe.lang.Function)this.__hx_getField(field, hash, true, false, false)).__hx_invokeDynamic(dynargs);
                }

                return null;
            }
        }

        public virtual void __hx_getFields(global::Array<string> baseArr)
        {
            baseArr.push("__previousException");
            baseArr.push("__nativeException");
            baseArr.push("__skipStack");
            baseArr.push("__ownStack");
            baseArr.push("__nativeStack");
            baseArr.push("__exceptionStack");
            baseArr.push("native");
            baseArr.push("previous");
            baseArr.push("stack");
            baseArr.push("message");
        }

        public override string ToString()
        {
            return this.toString();
        }
    }
}

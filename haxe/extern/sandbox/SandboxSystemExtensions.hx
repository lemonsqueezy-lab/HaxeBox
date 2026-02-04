package sandbox;

@:native("Sandbox.SandboxSystemExtensions")
final extern class SandboxSystemExtensions {
    /** Returns the angles of a uniformly random rotation. */
    static function Angles(self:system.Random):Angles;
    static function AsInt<T>(value:T):Int;
    /** Convert from a base64 encoded string */
    static function Base64Decode(base64EncodedData:String):String;
    /** Convert to a base64 encoded string */
    static function Base64Encode(plainText:String):String;
    /** Returns the number of bits set in an integer. This us usually used for flags to count the amount of flags set. */
    static function BitsSet(i:Int):Int;
    /** Generates a Catmull-Rom spline from a collection of Vector3 points. Needs at least 3 points to create a spline. */
    static function CatmullRomSpline(points:system.collections.generic.IEnumerable<Vector3>, interpolation:Int):system.collections.generic.IEnumerable<Vector3>;
    static function CheckValidationAttributes(prop:system.reflection.PropertyInfo, obj:cs.system.Object, errors:Array<String>, name:String):Bool;
    static function Clamp<T>(input:T, min:T, max:T):T;
    static function Clone<TKey,TValue>(dict:system.collections.generic.Dictionary<TKey,TValue>):system.collections.generic.Dictionary<TKey,TValue>;
    /** Collapse sequences of spaces and tabs into a single space, preserving newlines */
    static function CollapseSpacesAndPreserveLines(str:String):String;
    /** Collapse sequences of whitespace into a single whitespace */
    static function CollapseWhiteSpace(str:String):String;
    /** Returns a random Color */
    static function Color(self:system.Random):Color;
    /** convert "string" into "string " or " string" */
    static function Columnize(str:String, maxLength:Int, right:Bool):String;
    /** An extended Contains which takes a StringComparison. */
    static overload function Contains<T>(value:T, flag:T):Bool;
    static overload function Contains(source:String, toCheck:String, comp:system.StringComparison):Bool;
    /** Return the distance between two strings. Useful for ordering strings by similarity */
    static function Distance(source:String, target:String):Int;
    /** Returns a random double between 0 and max (or 1) */
    static overload function Double(self:system.Random, max:Float):Float;
    static overload function Double(self:system.Random, min:Float, max:Float):Float;
    /** Generate xxhash3 hash from given string. */
    static function FastHash(str:String):Int;
    /** Returns a random float between 0 and 1 */
    static overload function Float(self:system.Random):Single;
    static overload function Float(self:system.Random, max:Single):Single;
    static overload function Float(self:system.Random, min:Single, max:Single):Single;
    /** Get a random float (0-1) from a pre-calculated list. This is faster, and if you put the same seed in, it will always return the same number. The downside is that it only has 8192 variations of floats, but that seem like enough for most things. */
    static function FloatDeterministic(self:system.Random, i:Int):Single;
    static function ForEachTaskAsync<T>(source:system.collections.generic.IEnumerable<T>, body:system.Func2<T,system.threading.tasks.Task>, maxRunning:Int, token:system.threading.CancellationToken):system.threading.tasks.Task;
    static function FormatBytes<T>(input:T, shortFormat:Bool):String;
    /** "1500" becomes "1,500", "15 000" becomes "15K", "15 000 000" becomes "15KK", etc. */
    static overload function FormatNumberShort(num:haxe.Int64):String;
    static overload function FormatNumberShort(num:system.UInt64):String;
    /** Formats the given value in format "1w2d3h4m5s". Will not display 0 values. */
    static overload function FormatSeconds(secs:haxe.Int64):String;
    static overload function FormatSeconds(secs:system.UInt64):String;
    /** Formats the given value in format "4 weeks, 3 days, 2 hours and 1 minutes". Will not display 0 values. Will not display seconds if value is more than 1 hour. */
    static overload function FormatSecondsLong(secs:haxe.Int64):String;
    static overload function FormatSecondsLong(secs:system.UInt64):String;
    /** Change 1 to 1st, 2 to 2nd etc */
    static function FormatWithSuffix(num:Int):String;
    static function FromArray<T>(self:system.Random, array:Array<T>, defVal:T):T;
    /** Decode the Base36 Encoded string into a number */
    static function FromBase36(input:String):haxe.Int64;
    static function FromList<T>(self:system.Random, array:system.collections.generic.List<T>, defVal:T):T;
    /** Sample from a Gaussian distribution with a given mean and standard deviation. */
    static function Gaussian(self:system.Random, mean:Single, stdDev:Single):Single;
    /** Sample from a 2D Gaussian distribution with a given mean and standard deviation. */
    static function Gaussian2D(self:system.Random, mean:Null<Vector2>, stdDev:Null<Vector2>):Vector2;
    /** Sample from a 3D Gaussian distribution with a given mean and standard deviation. */
    static function Gaussian3D(self:system.Random, mean:Null<Vector3>, stdDev:Null<Vector3>):Vector3;
    /** Sample from a 4D Gaussian distribution with a given mean and standard deviation. */
    static function Gaussian4D(self:system.Random, mean:Null<Vector4>, stdDev:Null<Vector4>):Vector4;
    /** Gets an attribute on an enum field value */
    static function GetAttributeOfType<T>(enumVal:system.Enum):T;
    /** Finds the first common base type of the given types. */
    static function GetCommonBaseType(types:system.collections.generic.IEnumerable<cs.system.Type>):cs.system.Type;
    /** Returns the UNIX time stamp - number of seconds since 1st of January, 1970. */
    static function GetEpoch(d:system.DateTime):Int;
    /** Make the passed in string filename safe. This replaces any invalid characters with "_". */
    static function GetFilenameSafe(input:String):String;
    /** Get the managed size of a given type. This matches an IL-level sizeof(t), even if it cannot be determined normally in C#. Note that sizeof(t) != Marshal.SizeOf(t) when t is char or bool. */
    static function GetManagedSize(t:cs.system.Type):Int;
    static function GetOrCreate<TKey,TValue>(dict:system.collections.generic.IDictionary<TKey,TValue>, key:TKey):TValue;
    static function GetPropertyValue<T>(jso:system.text.json.nodes.JsonObject, membername:String, defaultvalue:T):T;
    static function HtmlEncode(str:String):String;
    /** Convert date into a human readable relative time string. */
    static overload function Humanize(dateTime:system.DateOnly):String;
    static overload function Humanize(dateTime:system.DateTime):String;
    static overload function Humanize(dateTime:system.DateTimeOffset):String;
    static overload function Humanize(dateTime:system.TimeOnly):String;
    static overload function Humanize(dateTime:system.TimeSpan, precision:Int):String;
    static overload function Humanize(timespan:system.TimeSpan, shortVersion:Bool, minutes:Bool, hours:Bool, days:Bool):String;
    /** Returns a random int between 0 and max (inclusive) */
    static overload function Int(self:system.Random, max:Int):Int;
    static overload function Int(self:system.Random, min:Int, max:Int):Int;
    /** Call an action, swallow any exceptions with a warning */
    static overload function InvokeWithWarning(action:system.Action):Void;
    static overload function InvokeWithWarning<T>(action:system.Action1<T>, arg0:T):Void;
    static overload function InvokeWithWarning<T1,T2>(action:system.Action2<T1,T2>, arg0:T1, arg1:T2):Void;
    /** Returns if this type is based on a given generic type. */
    static function IsBasedOnGenericType(src:cs.system.Type, test:cs.system.Type):Bool;
    /** Determine if this property is init-only. */
    static function IsInitOnly(property:system.reflection.PropertyInfo):Bool;
    /** Return true if the number is a power of two (2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, etc) */
    static function IsPowerOfTwo(x:Int):Bool;
    /** Returns false if object is null or if returns false. */
    static function IsValid(obj:sandbox.IValid):Bool;
    /** Is this string a valid Tag. This is a way to check if a string is a valid tag, project wide. So our logic is always the same. - not null - between 1 and 32 chars - a-z */
    static function IsValidTag(source:String):Bool;
    /** Format a large number into "1045M", "56K" */
    static overload function KiloFormat(num:Int):String;
    static overload function KiloFormat(num:haxe.Int64):String;
    /** Get the md5 hash of a string. */
    static function Md5(input:String):String;
    /** Puts a filename into the format /path/filename.ext (from path\FileName.EXT) */
    static overload function NormalizeFilename(str:String, enforceInitialSlash:Bool):String;
    static overload function NormalizeFilename(str:String, enforceInitialSlash:Bool, enforceLowerCase:Bool, targetSeparator:system.Char):String;
    /** Return single if 1 else plural */
    static function Plural(a:Int, single:String, plural:String):String;
    /** Puts quote marks around a string. Internal quotes are backslashed. */
    static function QuoteSafe(str:String, optional:Bool):String;
    /** Read a null terminated string from the stream, at given offset. */
    static function ReadNullTerminatedString(stream:system.io.Stream, offset:haxe.Int64):String;
    /** Removes bad, invisible characters that are commonly used to exploit. https://en.wikipedia.org/wiki/Zero-width_non-joiner */
    static function RemoveBadCharacters(str:String):String;
    /** Returns a uniformly random rotation. */
    static function Rotation(self:system.Random):Rotation;
    /** Gets rid of ../'s (from /path/folder/../file.txt to /path/file.txt) */
    static function SimplifyPath(str:String):String;
    static overload function SizeFormat(bytes:Int):String;
    static overload function SizeFormat(bytes:haxe.Int64):String;
    /** Given a large string, find all occurrences of a substring and return them with padding. This is useful in situations where you're searching for a word in a hug body of text, and want to show how it's used without displaying the whole text. */
    static function Snippet(source:String, find:String, padding:Int):String;
    /** in : I am "splitting a" string "because it's fun " out : ["I", "am", "splitting a", "string", "because it's fun"] */
    static function SplitQuotesStrings(input:String):Array<String>;
    static function TcbSpline(points:system.collections.generic.IEnumerable<Vector3>, interpolation:Int, tension:Single, continuity:Single, bias:Single):system.collections.generic.IEnumerable<Vector3>;
    static function ToBase36<T>(i:T):String;
    /** Try to convert to bool. Inputs can be true, false, yes, no, 0, 1, null (caps insensitive) */
    static function ToBool(str:String):Bool;
    /** Converts UNIX time stamp to a DateTime object. */
    static overload function ToDateTime(seconds:Int):system.DateTime;
    static overload function ToDateTime(seconds:haxe.Int64):system.DateTime;
    /** 128-bit data type that returns sane results for almost any input. All other numeric types can cast from this. */
    static function ToDecimal(str:String, Default:cs.system.Decimal):cs.system.Decimal;
    /** Convert to , if not then return . */
    static function ToDouble(str:String, Default:Single):Single;
    /** Convert to . Might be a string formula. This is always going to be slower than a call to . */
    static function ToDoubleEval(expression:String, Default:Float):Float;
    /** Convert to , if not then return . */
    static function ToFloat(str:String, Default:Single):Single;
    /** Convert to . Might be a string formula. This is always going to be slower than a call to . */
    static function ToFloatEval(expression:String, Default:Single):Single;
    /** Take a string and create a deterministic guid. */
    static function ToGuid(input:String):system.Guid;
    /** Convert to , if not then return . */
    static function ToInt(str:String, Default:Int):Int;
    /** Convert to . Might be a string formula. This is always going to be slower than a call to . */
    static function ToIntEval(expression:String, Default:Int):Int;
    /** Convert to , if not then return . */
    static function ToLong(str:String, Default:haxe.Int64):haxe.Int64;
    /** Convert to . Might be a string formula. This is always going to be slower than a call to . */
    static function ToLongEval(expression:String, Default:haxe.Int64):haxe.Int64;
    /** Convert 1100 to 1.1k */
    static overload function ToMetric(input:Float, decimals:Int):String;
    static overload function ToMetric(input:Int, decimals:Int):String;
    static overload function ToMetric(input:Single, decimals:Int):String;
    static overload function ToMetric(input:haxe.Int64, decimals:Int):String;
    static overload function ToRelativeTimeString(dateTime:system.DateTime):String;
    static overload function ToRelativeTimeString(span:system.TimeSpan):String;
    static function ToRemainingTimeString(span:system.TimeSpan):String;
    /** Returns this type's name, with nicer formatting for generic types. */
    static overload function ToSimpleString(type:cs.system.Type, includeNamespace:Bool):String;
    static overload function ToSimpleString(deleg:system.Delegate, includeNamespace:Bool):String;
    static overload function ToSimpleString(member:system.reflection.MemberInfo, includeNamespace:Bool):String;
    /** Convert a variable name to something more user friendly. */
    static function ToTitleCase(source:String):String;
    /** Try to politely convert from a string to another type */
    static function ToType(str:String, t:cs.system.Type):cs.system.Object;
    /** Convert to , if not then return . */
    static function ToUInt(str:String, Default:Int):UInt;
    /** Convert to , if not then return . */
    static function ToULong(str:String, Default:system.UInt64):system.UInt64;
    /** The string might start and end in quotes ( ", ' ), remove those if that is the case. */
    static function TrimQuoted(str:String, ignoreSurroundingSpaces:Bool):String;
    /** If the string is longer than this amount of characters then truncate it If appendage is defined, it will be appended to the end of truncated strings (ie, "..") */
    static function Truncate(str:String, maxLength:Int, appendage:String):String;
    /** If the string is longer than this amount of characters then truncate it If appendage is defined, it will be appended to the end of truncated strings (ie, "..") */
    static function TruncateFilename(str:String, maxLength:Int, appendage:String):String;
    static function TryToType(str:String, t:cs.system.Type, Value:cs.system.Object):Bool;
    /** Does what you expected to happen when you did "a % b", that is, handles negative values by returning a positive number from the end. */
    static function UnsignedMod(a:Int, b:Int):Int;
    static function UrlEncode(str:String):String;
    /** Uniformly samples a 2D position from all points with distance at most from the origin. */
    static function VectorInCircle(self:system.Random, radius:Single):Vector2;
    /** Uniformly samples a 3D position from a cube with coordinates in the range - to +. */
    static overload function VectorInCube(self:system.Random, box:BBox):Vector3;
    static overload function VectorInCube(self:system.Random, extents:Single):Vector3;
    /** Uniformly samples a 3D position from all points with distance at most from the origin. */
    static function VectorInSphere(self:system.Random, radius:Single):Vector3;
    /** Uniformly samples a 2D position from a square with coordinates in the range - to +. */
    static function VectorInSquare(self:system.Random, extents:Single):Vector2;
    /** Returns true if this string matches a wildcard match. Check is case insensitive. */
    static function WildcardMatch(str:String, wildcard:String):Bool;
    /** Adds or replaces the extension of to . */
    static function WithExtension(path:String, ext:String):String;
    static function WithFlag<T>(value:T, flag:T, set:Bool):T;
}

package why.unit.time;


#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.time.Nanosecond(v))
#end
abstract Nanosecond(Float) {
	public static inline final SYMBOL = 'ns';
	static inline final SECONDS = 1 / 1000000000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Nanosecond
		return new Nanosecond(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);

	@:op(-A) public static function neg(v:Nanosecond):Nanosecond;
	@:op(A+B) public static function add(lhs:Nanosecond, rhs:Nanosecond):Nanosecond;
	@:op(A-B) public static function sub(lhs:Nanosecond, rhs:Nanosecond):Nanosecond;
	@:op(A*B) public static function mulFloat(lhs:Nanosecond, rhs:Float):Nanosecond;
	@:op(A/B) public static function divFloat(lhs:Nanosecond, rhs:Float):Nanosecond;
	@:op(A/B) public static function div(lhs:Nanosecond, rhs:Nanosecond):Float;
	@:op(A>B) public static function gt(lhs:Nanosecond, rhs:Nanosecond):Bool;
	@:op(A<B) public static function lt(lhs:Nanosecond, rhs:Nanosecond):Bool;
	@:op(A>=B) public static function gte(lhs:Nanosecond, rhs:Nanosecond):Bool;
	@:op(A<=B) public static function lte(lhs:Nanosecond, rhs:Nanosecond):Bool;
	@:op(A==B) public static function eq(lhs:Nanosecond, rhs:Nanosecond):Bool;
	@:op(A!=B) public static function neq(lhs:Nanosecond, rhs:Nanosecond):Bool;
}

package why.unit.speed;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.speed.MeterPerSecond(v))
#end
abstract MeterPerSecond(Float) {
	public static inline final SYMBOL = 'm/s';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(-A) public static function neg(v:MeterPerSecond):MeterPerSecond;
	@:op(A+B) public static function add(lhs:MeterPerSecond, rhs:MeterPerSecond):MeterPerSecond;
	@:op(A-B) public static function sub(lhs:MeterPerSecond, rhs:MeterPerSecond):MeterPerSecond;
	@:op(A*B) public static function mulFloat(lhs:MeterPerSecond, rhs:Float):MeterPerSecond;
	@:op(A/B) public static function divFloat(lhs:MeterPerSecond, rhs:Float):MeterPerSecond;
	@:op(A/B) public static function div(lhs:MeterPerSecond, rhs:MeterPerSecond):Float;
	@:op(A>B) public static function gt(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
	@:op(A<B) public static function lt(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
	@:op(A>=B) public static function gte(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
	@:op(A<=B) public static function lte(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
	@:op(A==B) public static function eq(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
	@:op(A!=B) public static function neq(lhs:MeterPerSecond, rhs:MeterPerSecond):Bool;
}
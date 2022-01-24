package why.unit.electricity;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.electricity.Volt(v))
#end
abstract Volt(Float) {
	public static inline final SYMBOL = 'V';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	public inline function print() return this + symbol;
	
	@:op(-A) public static function neg(v:Volt):Volt;
	@:op(A+B) public static function add(lhs:Volt, rhs:Volt):Volt;
	@:op(A-B) public static function sub(lhs:Volt, rhs:Volt):Volt;
	@:op(A*B) public static function mulFloat(lhs:Volt, rhs:Float):Volt;
	@:op(A/B) public static function divFloat(lhs:Volt, rhs:Float):Volt;
	@:op(A/B) public static function div(lhs:Volt, rhs:Volt):Float;
	@:op(A>B) public static function gt(lhs:Volt, rhs:Volt):Bool;
	@:op(A<B) public static function lt(lhs:Volt, rhs:Volt):Bool;
	@:op(A>=B) public static function gte(lhs:Volt, rhs:Volt):Bool;
	@:op(A<=B) public static function lte(lhs:Volt, rhs:Volt):Bool;
	@:op(A==B) public static function eq(lhs:Volt, rhs:Volt):Bool;
	@:op(A!=B) public static function neq(lhs:Volt, rhs:Volt):Bool;
	
	@:op(A/B) public static function wattDiv(lhs:why.unit.energy.Watt, rhs:Volt):Ampere;
}
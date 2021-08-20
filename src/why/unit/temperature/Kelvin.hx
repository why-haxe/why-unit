package why.unit.temperature;

abstract Kelvin(Float) {
	public static inline final SYMBOL = 'K';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(-A) public static function neg(v:Kelvin):Kelvin;
	@:op(A+B) public static function add(lhs:Kelvin, rhs:Kelvin):Kelvin;
	@:op(A-B) public static function sub(lhs:Kelvin, rhs:Kelvin):Kelvin;
	@:op(A*B) public static function mulFloat(lhs:Kelvin, rhs:Float):Kelvin;
	@:op(A/B) public static function divFloat(lhs:Kelvin, rhs:Float):Kelvin;
	@:op(A/B) public static function div(lhs:Kelvin, rhs:Kelvin):Float;
	@:op(A>B) public static function gt(lhs:Kelvin, rhs:Kelvin):Bool;
	@:op(A<B) public static function lt(lhs:Kelvin, rhs:Kelvin):Bool;
	@:op(A>=B) public static function gte(lhs:Kelvin, rhs:Kelvin):Bool;
	@:op(A<=B) public static function lte(lhs:Kelvin, rhs:Kelvin):Bool;
	@:op(A==B) public static function eq(lhs:Kelvin, rhs:Kelvin):Bool;
	@:op(A!=B) public static function neq(lhs:Kelvin, rhs:Kelvin):Bool;
}
package why.unit.energy;

@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.Joule(v))
abstract Joule(Float) {
	public static inline final SYMBOL = 'J';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(-A) public static function neg(v:Joule):Joule;
	@:op(A+B) public static function add(lhs:Joule, rhs:Joule):Joule;
	@:op(A-B) public static function sub(lhs:Joule, rhs:Joule):Joule;
	@:op(A*B) public static function mulFloat(lhs:Joule, rhs:Float):Joule;
	@:op(A/B) public static function divFloat(lhs:Joule, rhs:Float):Joule;
	@:op(A/B) public static function div(lhs:Joule, rhs:Joule):Float;
	@:op(A>B) public static function gt(lhs:Joule, rhs:Joule):Bool;
	@:op(A<B) public static function lt(lhs:Joule, rhs:Joule):Bool;
	@:op(A>=B) public static function gte(lhs:Joule, rhs:Joule):Bool;
	@:op(A<=B) public static function lte(lhs:Joule, rhs:Joule):Bool;
	@:op(A==B) public static function eq(lhs:Joule, rhs:Joule):Bool;
	@:op(A!=B) public static function neq(lhs:Joule, rhs:Joule):Bool;
	
	@:op(A/B) public static function divTime(lhs:Joule, rhs:why.unit.time.Second):Watt;
}
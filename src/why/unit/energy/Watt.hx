package why.unit.energy;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.Watt(v))
#end
abstract Watt(Float) {
	public static inline final SYMBOL = 'W';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(-A) public static function neg(v:Watt):Watt;
	@:op(A+B) public static function add(lhs:Watt, rhs:Watt):Watt;
	@:op(A-B) public static function sub(lhs:Watt, rhs:Watt):Watt;
	@:op(A*B) public static function mulFloat(lhs:Watt, rhs:Float):Watt;
	@:op(A/B) public static function divFloat(lhs:Watt, rhs:Float):Watt;
	@:op(A/B) public static function div(lhs:Watt, rhs:Watt):Float;
	@:op(A>B) public static function gt(lhs:Watt, rhs:Watt):Bool;
	@:op(A<B) public static function lt(lhs:Watt, rhs:Watt):Bool;
	@:op(A>=B) public static function gte(lhs:Watt, rhs:Watt):Bool;
	@:op(A<=B) public static function lte(lhs:Watt, rhs:Watt):Bool;
	@:op(A==B) public static function eq(lhs:Watt, rhs:Watt):Bool;
	@:op(A!=B) public static function neq(lhs:Watt, rhs:Watt):Bool;
	
	@:op(A*B) @:commutative public static function mulTime(lhs:Watt, rhs:why.unit.time.Second):Joule;
}
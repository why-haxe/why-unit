package why.unit.energy;

abstract Watt(Float) {
	public static inline final SYMBOL = 'W';
	
	public inline function new(v) this = v;
	
	public inline function symbol() return SYMBOL;
	public inline function toFloat() return this;
	
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
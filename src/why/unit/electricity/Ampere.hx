package why.unit.electricity;

abstract Ampere(Float) {
	public static inline final SYMBOL = 'A';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(A+B) public static function add(lhs:Ampere, rhs:Ampere):Ampere;
	@:op(A-B) public static function sub(lhs:Ampere, rhs:Ampere):Ampere;
	@:op(A*B) public static function mulFloat(lhs:Ampere, rhs:Float):Ampere;
	@:op(A/B) public static function divFloat(lhs:Ampere, rhs:Float):Ampere;
	@:op(A/B) public static function div(lhs:Ampere, rhs:Ampere):Float;
	@:op(A>B) public static function gt(lhs:Ampere, rhs:Ampere):Bool;
	@:op(A<B) public static function lt(lhs:Ampere, rhs:Ampere):Bool;
	@:op(A>=B) public static function gte(lhs:Ampere, rhs:Ampere):Bool;
	@:op(A<=B) public static function lte(lhs:Ampere, rhs:Ampere):Bool;
	@:op(A==B) public static function eq(lhs:Ampere, rhs:Ampere):Bool;
	@:op(A!=B) public static function neq(lhs:Ampere, rhs:Ampere):Bool;
	
	
	@:op(A*B) @:commutative public static function mulTime(lhs:Ampere, rhs:why.unit.time.Second):Coulomb;
	@:op(A*B) @:commutative public static function mulVoltage(lhs:Ampere, rhs:Volt):why.unit.energy.Watt;
	@:op(A/B) public static function wattDiv(lhs:why.unit.energy.Watt, rhs:Ampere):Volt;
}
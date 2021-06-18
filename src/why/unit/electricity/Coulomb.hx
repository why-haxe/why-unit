package why.unit.electricity;

// https://en.wikipedia.org/wiki/Coulomb
abstract Coulomb(Float) {
	public static inline final SYMBOL = 'C';
	
	public inline function new(v) this = v;
	
	public inline function symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(A+B) public static function add(lhs:Coulomb, rhs:Coulomb):Coulomb;
	@:op(A-B) public static function sub(lhs:Coulomb, rhs:Coulomb):Coulomb;
	@:op(A*B) public static function mulFloat(lhs:Coulomb, rhs:Float):Coulomb;
	@:op(A/B) public static function divFloat(lhs:Coulomb, rhs:Float):Coulomb;
	@:op(A/B) public static function div(lhs:Coulomb, rhs:Coulomb):Float;
	@:op(A>B) public static function gt(lhs:Coulomb, rhs:Coulomb):Bool;
	@:op(A<B) public static function lt(lhs:Coulomb, rhs:Coulomb):Bool;
	@:op(A>=B) public static function gte(lhs:Coulomb, rhs:Coulomb):Bool;
	@:op(A<=B) public static function lte(lhs:Coulomb, rhs:Coulomb):Bool;
	@:op(A==B) public static function eq(lhs:Coulomb, rhs:Coulomb):Bool;
	@:op(A!=B) public static function neq(lhs:Coulomb, rhs:Coulomb):Bool;
	
	@:op(A/B) public static function divTime(lhs:Coulomb, rhs:why.unit.time.Second):Ampere;
}
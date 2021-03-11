package why.unit.time;

abstract Second(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:op(A+B) public static function add(lhs:Second, rhs:Second):Second;
	@:op(A-B) public static function sub(lhs:Second, rhs:Second):Second;
	@:op(A*B) public static function mulFloat(lhs:Second, rhs:Float):Second;
	@:op(A/B) public static function divFloat(lhs:Second, rhs:Float):Second;
	@:op(A/B) public static function div(lhs:Second, rhs:Second):Float;
	@:op(A>B) public static function gt(lhs:Second, rhs:Second):Bool;
	@:op(A<B) public static function lt(lhs:Second, rhs:Second):Bool;
	@:op(A>=B) public static function gte(lhs:Second, rhs:Second):Bool;
	@:op(A<=B) public static function lte(lhs:Second, rhs:Second):Bool;
	@:op(A==B) public static function eq(lhs:Second, rhs:Second):Bool;
	@:op(A!=B) public static function neq(lhs:Second, rhs:Second):Bool;
}
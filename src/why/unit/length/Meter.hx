package why.unit.length;

abstract Meter(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:op(A+B) public static function add(lhs:Meter, rhs:Meter):Meter;
	@:op(A-B) public static function sub(lhs:Meter, rhs:Meter):Meter;
	@:op(A*B) public static function mulFloat(lhs:Meter, rhs:Float):Meter;
	@:op(A/B) public static function divFloat(lhs:Meter, rhs:Float):Meter;
	@:op(A/B) public static function div(lhs:Meter, rhs:Meter):Float;
	@:op(A>B) public static function gt(lhs:Meter, rhs:Meter):Bool;
	@:op(A<B) public static function lt(lhs:Meter, rhs:Meter):Bool;
	@:op(A>=B) public static function gte(lhs:Meter, rhs:Meter):Bool;
	@:op(A<=B) public static function lte(lhs:Meter, rhs:Meter):Bool;
	@:op(A==B) public static function eq(lhs:Meter, rhs:Meter):Bool;
	@:op(A!=B) public static function neq(lhs:Meter, rhs:Meter):Bool;
}
package why.unit.digital;

abstract Byte(Int) {
	public static inline final SYMBOL = 'B';
	
	public inline function new(v) this = v;
	
	public inline function toFloat():Float return this;
	public inline function toInt() return this;
	
	@:op(A+B) public static function add(lhs:Byte, rhs:Byte):Byte;
	@:op(A-B) public static function sub(lhs:Byte, rhs:Byte):Byte;
	@:op(A*B) public static function mulInt(lhs:Byte, rhs:Int):Byte;
	@:op(A/B) public static function div(lhs:Byte, rhs:Byte):Float;
	@:op(A>B) public static function gt(lhs:Byte, rhs:Byte):Bool;
	@:op(A<B) public static function lt(lhs:Byte, rhs:Byte):Bool;
	@:op(A>=B) public static function gte(lhs:Byte, rhs:Byte):Bool;
	@:op(A<=B) public static function lte(lhs:Byte, rhs:Byte):Bool;
	@:op(A==B) public static function eq(lhs:Byte, rhs:Byte):Bool;
	@:op(A!=B) public static function neq(lhs:Byte, rhs:Byte):Bool;
}
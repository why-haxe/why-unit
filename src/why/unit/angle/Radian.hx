package why.unit.angle;

abstract Radian(Float) {
	public static inline final SYMBOL = 'rad';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat()
		return this;
	
	public inline function cos()
		return std.Math.cos(this);
	public inline function sin()
		return std.Math.sin(this);
	public inline function tan()
		return std.Math.tan(this);
	
	public static inline function acos(v)
		return why.Math.acos(v);
	public static inline function asin(v)
		return why.Math.asin(v);
	public static inline function atan(v)
		return why.Math.atan(v);
	public static inline function atan2(y, x)
		return why.Math.atan2(y, x);
	
	@:op(-A) public static function neg(v:Radian):Radian;
	@:op(A+B) public static function add(lhs:Radian, rhs:Radian):Radian;
	@:op(A-B) public static function sub(lhs:Radian, rhs:Radian):Radian;
	@:op(A*B) public static function mulFloat(lhs:Radian, rhs:Float):Radian;
	@:op(A/B) public static function divFloat(lhs:Radian, rhs:Float):Radian;
	@:op(A/B) public static function div(lhs:Radian, rhs:Radian):Float;
	@:op(A>B) public static function gt(lhs:Radian, rhs:Radian):Bool;
	@:op(A<B) public static function lt(lhs:Radian, rhs:Radian):Bool;
	@:op(A>=B) public static function gte(lhs:Radian, rhs:Radian):Bool;
	@:op(A<=B) public static function lte(lhs:Radian, rhs:Radian):Bool;
	@:op(A==B) public static function eq(lhs:Radian, rhs:Radian):Bool;
	@:op(A!=B) public static function neq(lhs:Radian, rhs:Radian):Bool;
}
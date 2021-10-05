package why.unit.angle;

abstract Degree(Float) {
	public static inline final SYMBOL = '°';
	static final RADIANS = Math.PI / 180;
	
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat()
		return this;
	
	public inline function cos()
		return toRadian().cos();
	public inline function sin()
		return toRadian().sin();
	public inline function tan()
		return toRadian().tan();
	
	public static inline function acos(v):Degree
		return Radian.acos(v);
	public static inline function asin(v):Degree
		return Radian.asin(v);
	public static inline function atan(v):Degree
		return Radian.atan(v);
	public static inline function atan2(y, x):Degree
		return Radian.atan2(y, x);
	
	@:from public static inline function fromRadian(v:Radian):Degree
		return new Degree(v.toFloat() / RADIANS);
	
	@:to public inline function toRadian():Radian
		return new Radian(this * RADIANS);
	
	@:op(-A) public static function neg(v:Degree):Degree;
	@:op(A+B) public static function add(lhs:Degree, rhs:Degree):Degree;
	@:op(A-B) public static function sub(lhs:Degree, rhs:Degree):Degree;
	@:op(A*B) public static function mulFloat(lhs:Degree, rhs:Float):Degree;
	@:op(A/B) public static function divFloat(lhs:Degree, rhs:Float):Degree;
	@:op(A/B) public static function div(lhs:Degree, rhs:Degree):Float;
	@:op(A%B) public static function mod(lhs:Degree, rhs:Degree):Degree;
	@:op(A>B) public static function gt(lhs:Degree, rhs:Degree):Bool;
	@:op(A<B) public static function lt(lhs:Degree, rhs:Degree):Bool;
	@:op(A>=B) public static function gte(lhs:Degree, rhs:Degree):Bool;
	@:op(A<=B) public static function lte(lhs:Degree, rhs:Degree):Bool;
	@:op(A==B) public static function eq(lhs:Degree, rhs:Degree):Bool;
	@:op(A!=B) public static function neq(lhs:Degree, rhs:Degree):Bool;
}
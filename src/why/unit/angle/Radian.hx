package why.unit.angle;

abstract Radian(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat()
		return this;
	
	public inline function cos()
		return Math.cos(this);
	public inline function sin()
		return Math.sin(this);
	public inline function tan()
		return Math.tan(this);
	
	public static inline function acos(v)
		return new Radian(Math.acos(v));
	public static inline function asin(v)
		return new Radian(Math.asin(v));
	public static inline function atan(v)
		return new Radian(Math.atan(v));
	public static inline function atan2(y, x)
		return new Radian(Math.atan2(y, x));
	
	@:op(A+B) public function add(rhs:Radian):Radian;
	@:op(A-B) public function sub(rhs:Radian):Radian;
	@:op(A*B) public function mul(rhs:Radian):Radian;
	@:op(A/B) public function div(rhs:Radian):Radian;
	@:op(A>B) public function gt(rhs:Radian):Bool;
	@:op(A<B) public function lt(rhs:Radian):Bool;
	@:op(A>=B) public function gte(rhs:Radian):Bool;
	@:op(A<=B) public function lte(rhs:Radian):Bool;
	@:op(A==B) public function eq(rhs:Radian):Bool;
	@:op(A!=B) public function neq(rhs:Radian):Bool;
}
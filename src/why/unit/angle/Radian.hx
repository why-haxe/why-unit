package why.unit.angle;

abstract Radian(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
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
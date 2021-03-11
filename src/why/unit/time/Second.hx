package why.unit.time;

abstract Second(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:op(A+B) public function add(rhs:Second):Second;
	@:op(A-B) public function sub(rhs:Second):Second;
	@:op(A*B) public function mul(rhs:Second):Second;
	@:op(A/B) public function div(rhs:Second):Second;
	@:op(A>B) public function gt(rhs:Second):Bool;
	@:op(A<B) public function lt(rhs:Second):Bool;
	@:op(A>=B) public function gte(rhs:Second):Bool;
	@:op(A<=B) public function lte(rhs:Second):Bool;
	@:op(A==B) public function eq(rhs:Second):Bool;
	@:op(A!=B) public function neq(rhs:Second):Bool;
}
package why.unit.length;

abstract Meter(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:op(A+B) public function add(rhs:Meter):Meter;
	@:op(A-B) public function sub(rhs:Meter):Meter;
	@:op(A*B) public function mul(rhs:Meter):Meter;
	@:op(A/B) public function div(rhs:Meter):Meter;
	@:op(A>B) public function gt(rhs:Meter):Bool;
	@:op(A<B) public function lt(rhs:Meter):Bool;
	@:op(A>=B) public function gte(rhs:Meter):Bool;
	@:op(A<=B) public function lte(rhs:Meter):Bool;
	@:op(A==B) public function eq(rhs:Meter):Bool;
	@:op(A!=B) public function neq(rhs:Meter):Bool;
}
package why.unit.temperature;

abstract Kelvin(Float) {
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:op(A+B) public function add(rhs:Kelvin):Kelvin;
	@:op(A-B) public function sub(rhs:Kelvin):Kelvin;
	@:op(A*B) public function mul(rhs:Kelvin):Kelvin;
	@:op(A/B) public function div(rhs:Kelvin):Kelvin;
	@:op(A>B) public function gt(rhs:Kelvin):Bool;
	@:op(A<B) public function lt(rhs:Kelvin):Bool;
	@:op(A>=B) public function gte(rhs:Kelvin):Bool;
	@:op(A<=B) public function lte(rhs:Kelvin):Bool;
	@:op(A==B) public function eq(rhs:Kelvin):Bool;
	@:op(A!=B) public function neq(rhs:Kelvin):Bool;
}
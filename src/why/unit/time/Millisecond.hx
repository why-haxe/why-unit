package why.unit.time;


#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.time.Millisecond(v))
#end
abstract Millisecond(Float) {
	public static inline final SYMBOL = 'ms';
	static inline final SECONDS = 1 / 1000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Millisecond
		return new Millisecond(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);

	@:op(-A) public static function neg(v:Millisecond):Millisecond;
	@:op(A+B) public static function add(lhs:Millisecond, rhs:Millisecond):Millisecond;
	@:op(A-B) public static function sub(lhs:Millisecond, rhs:Millisecond):Millisecond;
	@:op(A*B) public static function mulFloat(lhs:Millisecond, rhs:Float):Millisecond;
	@:op(A/B) public static function divFloat(lhs:Millisecond, rhs:Float):Millisecond;
	@:op(A/B) public static function div(lhs:Millisecond, rhs:Millisecond):Float;
	@:op(A>B) public static function gt(lhs:Millisecond, rhs:Millisecond):Bool;
	@:op(A<B) public static function lt(lhs:Millisecond, rhs:Millisecond):Bool;
	@:op(A>=B) public static function gte(lhs:Millisecond, rhs:Millisecond):Bool;
	@:op(A<=B) public static function lte(lhs:Millisecond, rhs:Millisecond):Bool;
	@:op(A==B) public static function eq(lhs:Millisecond, rhs:Millisecond):Bool;
	@:op(A!=B) public static function neq(lhs:Millisecond, rhs:Millisecond):Bool;
}
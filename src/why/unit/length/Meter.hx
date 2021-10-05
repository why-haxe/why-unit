package why.unit.length;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.length.Meter(v))
#end
abstract Meter(Float) {
	public static inline final SYMBOL = 'm';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:op(-A) public static function neg(v:Meter):Meter;
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
package why.unit.energy;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.DecibelMilliwatt(v))
#end
abstract DecibelMilliwatt(Float) {
	public static inline final SYMBOL = 'dBm';
	static inline final WATT = 0.001;
	static final LOG_10 = Math.log(10);
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromWatt(v:Watt):DecibelMilliwatt
		return new DecibelMilliwatt(10 * Math.log(v.toFloat() / WATT) / LOG_10);
	
	@:to public inline function toWatt():Watt
		return new Watt(WATT * Math.pow(10, this / 10));
	
	@:op(-A) public static function neg(v:DecibelMilliwatt):DecibelMilliwatt;
	@:op(A+B) public static function add(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):DecibelMilliwatt;
	@:op(A-B) public static function sub(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):DecibelMilliwatt;
	@:op(A*B) public static function mulFloat(lhs:DecibelMilliwatt, rhs:Float):DecibelMilliwatt;
	@:op(A/B) public static function divFloat(lhs:DecibelMilliwatt, rhs:Float):DecibelMilliwatt;
	@:op(A/B) public static function div(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Float;
	@:op(A>B) public static function gt(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
	@:op(A<B) public static function lt(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
	@:op(A>=B) public static function gte(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
	@:op(A<=B) public static function lte(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
	@:op(A==B) public static function eq(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
	@:op(A!=B) public static function neq(lhs:DecibelMilliwatt, rhs:DecibelMilliwatt):Bool;
}
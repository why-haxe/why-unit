package why.unit.energy;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.KilowattHour(v))
#end
abstract KilowattHour(Float) {
	public static inline final SYMBOL = 'kWh';
	static inline final JOULE = 3600000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromJoule(v:Joule):KilowattHour
		return new KilowattHour(v.toFloat() / JOULE);
	
	@:to public inline function toJoule():Joule
		return new Joule(this * JOULE);
	
	@:op(-A) public static function neg(v:KilowattHour):KilowattHour;
	@:op(A+B) public static function add(lhs:KilowattHour, rhs:KilowattHour):KilowattHour;
	@:op(A-B) public static function sub(lhs:KilowattHour, rhs:KilowattHour):KilowattHour;
	@:op(A*B) public static function mulFloat(lhs:KilowattHour, rhs:Float):KilowattHour;
	@:op(A/B) public static function divFloat(lhs:KilowattHour, rhs:Float):KilowattHour;
	@:op(A/B) public static function div(lhs:KilowattHour, rhs:KilowattHour):Float;
	@:op(A>B) public static function gt(lhs:KilowattHour, rhs:KilowattHour):Bool;
	@:op(A<B) public static function lt(lhs:KilowattHour, rhs:KilowattHour):Bool;
	@:op(A>=B) public static function gte(lhs:KilowattHour, rhs:KilowattHour):Bool;
	@:op(A<=B) public static function lte(lhs:KilowattHour, rhs:KilowattHour):Bool;
	@:op(A==B) public static function eq(lhs:KilowattHour, rhs:KilowattHour):Bool;
	@:op(A!=B) public static function neq(lhs:KilowattHour, rhs:KilowattHour):Bool;
}
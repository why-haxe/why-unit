package why.unit.energy;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.Kilowatt(v))
#end
abstract Kilowatt(Float) {
	public static inline final SYMBOL = 'kW';
	static inline final WATT = 1000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromWatt(v:Watt):Kilowatt
		return new Kilowatt(v.toFloat() / WATT);
	
	@:to public inline function toWatt():Watt
		return new Watt(this * WATT);
	
	@:op(-A) public static function neg(v:Kilowatt):Kilowatt;
	@:op(A+B) public static function add(lhs:Kilowatt, rhs:Kilowatt):Kilowatt;
	@:op(A-B) public static function sub(lhs:Kilowatt, rhs:Kilowatt):Kilowatt;
	@:op(A*B) public static function mulFloat(lhs:Kilowatt, rhs:Float):Kilowatt;
	@:op(A/B) public static function divFloat(lhs:Kilowatt, rhs:Float):Kilowatt;
	@:op(A/B) public static function div(lhs:Kilowatt, rhs:Kilowatt):Float;
	@:op(A>B) public static function gt(lhs:Kilowatt, rhs:Kilowatt):Bool;
	@:op(A<B) public static function lt(lhs:Kilowatt, rhs:Kilowatt):Bool;
	@:op(A>=B) public static function gte(lhs:Kilowatt, rhs:Kilowatt):Bool;
	@:op(A<=B) public static function lte(lhs:Kilowatt, rhs:Kilowatt):Bool;
	@:op(A==B) public static function eq(lhs:Kilowatt, rhs:Kilowatt):Bool;
	@:op(A!=B) public static function neq(lhs:Kilowatt, rhs:Kilowatt):Bool;
}
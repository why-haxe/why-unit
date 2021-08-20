package why.unit.energy;

@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.Kilowatt(v))
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
}
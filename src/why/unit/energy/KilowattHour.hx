package why.unit.energy;

@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.energy.KilowattHour(v))
abstract KilowattHour(Float) {
	public static inline final SYMBOL = 'kWh';
	static inline final JOULE = 3600000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	public inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromJoule(v:Joule):KilowattHour
		return new KilowattHour(v.toFloat() / JOULE);
	
	@:to public inline function toJoule():Joule
		return new Joule(this * JOULE);
}
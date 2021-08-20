package why.unit.temperature;

abstract Celsius(Float) {
	public static inline final SYMBOL = '°C';
	static inline final OFFSET = 273.15;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromKelvin(v:Kelvin):Celsius
		return new Celsius(v.toFloat() - OFFSET);
	
	@:to public inline function toKelvin():Kelvin
		return new Kelvin(this + OFFSET);
}
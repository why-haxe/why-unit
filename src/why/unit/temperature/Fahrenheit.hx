package why.unit.temperature;

abstract Fahrenheit(Float) {
	static inline final OFFSET = 459.67;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromKelvin(v:Kelvin):Fahrenheit
		return new Fahrenheit(v.toFloat() * 9 / 5 - OFFSET);
	
	@:to public inline function toKelvin():Kelvin
		return new Kelvin((this + OFFSET) * 5 / 9);
}
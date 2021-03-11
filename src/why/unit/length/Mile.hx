package why.unit.length;

abstract Mile(Float) {
	static inline final METERS = 1609.344;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromMeter(v:Meter):Mile
		return new Mile(v / METERS);
	
	@:to public inline function toMeter():Meter
		return new Meter(this * METERS);
}
package why.unit.time;

abstract Minute(Float) {
	static inline final SECONDS = 60;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Minute
		return new Minute(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
}
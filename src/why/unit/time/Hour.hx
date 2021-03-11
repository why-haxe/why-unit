package why.unit.time;

abstract Hour(Float) {
	static inline final SECONDS = 3600;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Hour
		return new Hour(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
}
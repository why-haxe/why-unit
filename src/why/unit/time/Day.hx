package why.unit.time;

abstract Day(Float) {
	static inline final SECONDS = 60 * 60 * 24;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Day
		return new Day(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
	
	@:from public static inline function fromMillisecond(v:Millisecond):Day
		return fromSecond(v);
	
	@:to public inline function toMillisecond():Millisecond
		return toSecond();
}
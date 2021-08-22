package why.unit.time;

abstract Minute(Float) {
	static inline final SECONDS = 60;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Minute
		return new Minute(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
	
	@:from public static inline function fromMillisecond(v:Millisecond):Minute
		return fromSecond(v);
	
	@:to public inline function toMillisecond():Millisecond
		return toSecond();
}
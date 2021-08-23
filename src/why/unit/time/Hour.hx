package why.unit.time;


#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.time.Hour(v))
#end
abstract Hour(Float) {
	static inline final SECONDS = 60 * 60;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Hour
		return new Hour(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
	
	@:from public static inline function fromMillisecond(v:Millisecond):Hour
		return fromSecond(v);
	
	@:to public inline function toMillisecond():Millisecond
		return toSecond();
}
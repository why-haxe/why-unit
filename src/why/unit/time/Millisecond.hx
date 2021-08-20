package why.unit.time;

abstract Millisecond(Float) {
	public static inline final SYMBOL = 'ms';
	static inline final SECONDS = 1 / 1000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromSecond(v:Second):Millisecond
		return new Millisecond(v.toFloat() / SECONDS);
	
	@:to public inline function toSecond():Second
		return new Second(this * SECONDS);
}
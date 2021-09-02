package why.unit.time;

class Tools {
	public static inline function hour(v:Float) return new Hour(v);
	public static inline function millisecond(v:Float) return new Millisecond(v);
	public static inline function minute(v:Float) return new Minute(v);
	public static inline function second(v:Float) return new Second(v);
}
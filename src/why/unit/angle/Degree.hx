package why.unit.angle;

abstract Degree(Float) {
	static final RADIANS = Math.PI / 180;
	
	public inline function new(v) this = v;
	
	public inline function toFloat()
		return this;
	
	public inline function cos()
		return toRadian().cos();
	public inline function sin()
		return toRadian().sin();
	public inline function tan()
		return toRadian().tan();
	
	public static inline function acos(v):Degree
		return Radian.acos(v);
	public static inline function asin(v):Degree
		return Radian.asin(v);
	public static inline function atan(v):Degree
		return Radian.atan(v);
	public static inline function atan2(y, x):Degree
		return Radian.atan2(y, x);
	
	@:from public static inline function fromRadian(v:Radian):Degree
		return new Degree(v.toFloat() / RADIANS);
	
	@:to public inline function toRadian():Radian
		return new Radian(this * RADIANS);
}
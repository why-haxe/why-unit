package why.unit.angle;

abstract Degree(Float) {
	static final RADIANS = Math.PI / 180;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromRadian(v:Radian):Degree
		return new Degree(v.toFloat() / RADIANS);
	
	@:to public inline function toRadian():Radian
		return new Radian(this * RADIANS);
}
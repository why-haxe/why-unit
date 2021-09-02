package why.unit.util;

import why.unit.angle.Radian;

@:forwardStatics
abstract Math(std.Math) {
	public static inline function acos(v)
		return new Radian(std.Math.acos(v));
	public static inline function asin(v)
		return new Radian(std.Math.asin(v));
	public static inline function atan(v)
		return new Radian(std.Math.atan(v));
	public static inline function atan2(y, x)
		return new Radian(std.Math.atan2(y, x));
	
	public static inline function cos(v:Radian)
		return std.Math.cos(v.toFloat());
	public static inline function sin(v:Radian)
		return std.Math.sin(v.toFloat());
	public static inline function tan(v:Radian)
		return std.Math.tan(v.toFloat());
}
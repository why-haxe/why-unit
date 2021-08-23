package why.util;

import why.unit.time.*;

@:forwardStatics
abstract DateTools(std.DateTools) {
	public inline static function days(n:Float)
		return new Day(n);
	public inline static function hours(n:Float)
		return new Hour(n);
	public inline static function minutes(n:Float)
		return new Minute(n);
	public inline static function seconds(n:Float)
		return new Second(n);
	public inline static function milliseconds(n:Float)
		return new Millisecond(n);
	public inline static function delta(d:Date, t:Millisecond):why.util.Date
		return std.DateTools.delta(d, t.toFloat());
}
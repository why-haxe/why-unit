package why.util;

import why.unit.time.*;

@:forwardStatics @:forward
abstract Date(std.Date) from std.Date to std.Date {
	public inline function new(year, month, day, hour, min, sec)
		this = new std.Date(year, month, day, hour, min, sec);
	public inline static function fromTime(t:Millisecond):Date
		return std.Date.fromTime(t.toFloat());
	public inline function getTime()
		return new Millisecond(this.getTime());
	public inline function getTimezoneOffset()
		return new Minute(this.getTimezoneOffset());
	public inline function asDate():std.Date
		return this;
}
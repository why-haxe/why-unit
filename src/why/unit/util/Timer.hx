package why.unit.util;

import why.unit.time.*;

@:forwardStatics @:forward
abstract Timer(haxe.Timer) from haxe.Timer to haxe.Timer {
	public inline function new(time:Millisecond)
		this = new haxe.Timer(Std.int(time.toFloat()));
	public static inline function delay(f:()->Void, time:Millisecond):Timer
		return haxe.Timer.delay(f, Std.int(time.toFloat()));
	public static inline function stamp():Second
		return new Second(haxe.Timer.stamp());
	public inline function asTimer():haxe.Timer
		return this;
}
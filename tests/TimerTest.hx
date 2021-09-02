package;

import why.unit.time.*;
import why.unit.util.Timer;

@:asserts
class TimerTest {
	public function new() {}
	
	
	public function delay() {
		final start = Timer.stamp();
		
		Timer.delay(() -> {
			final end = Timer.stamp();
			final dt = (end - start:Millisecond).toFloat();
			asserts.assert(dt > 1500);
			asserts.assert(dt < 1600);
			asserts.done();
		}, new Second(1.5));
		return asserts;
	}
}
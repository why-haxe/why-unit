package;

import why.unit.time.*;

using why.unit.util.Date;
using why.unit.util.DateTools;

@:asserts
class DateTest {
	public function new() {}
	
	public function time() {
		asserts.assert(5.days() == new Day(5));
		asserts.assert(5.hours() == new Hour(5));
		asserts.assert(5.minutes() == new Minute(5));
		asserts.assert(5.seconds() == new Second(5));
		asserts.assert(5.milliseconds() == new Millisecond(5));
		return asserts.done();
	}
	
	public function delta() {
		final date = new Date(2021, 0, 1, 0, 0, 0);
		
		asserts.assert(date.delta(5.days()).getTime() == new Date(2021, 0, 6, 0, 0, 0).getTime());
		asserts.assert(date.delta(5.hours()).getTime() == new Date(2021, 0, 1, 5, 0, 0).getTime());
		asserts.assert(date.delta(5.minutes()).getTime() == new Date(2021, 0, 1, 0, 5, 0).getTime());
		asserts.assert(date.delta(5.seconds()).getTime() == new Date(2021, 0, 1, 0, 0, 5).getTime());
		
		asserts.assert(date.delta(new Day(5)).getTime() == new Date(2021, 0, 6, 0, 0, 0).getTime());
		asserts.assert(date.delta(new Hour(5)).getTime() == new Date(2021, 0, 1, 5, 0, 0).getTime());
		asserts.assert(date.delta(new Minute(5)).getTime() == new Date(2021, 0, 1, 0, 5, 0).getTime());
		asserts.assert(date.delta(new Second(5)).getTime() == new Date(2021, 0, 1, 0, 0, 5).getTime());
		return asserts.done();
	}
}
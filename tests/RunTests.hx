package;

import why.unit.temperature.*;
import why.unit.angle.*;
import why.unit.time.*;

import tink.unit.*;
import tink.testrunner.*;

@:asserts
class RunTests {

	static function main() {
		Runner.run(TestBatch.make(new RunTests())).handle(Runner.exit);
	}
	
	function new() {}
	
	public function angle() {
		final r = new Radian(Math.PI);
		final d:Degree = r;
		
		asserts.assert(r.toFloat() == Math.PI);
		asserts.assert(d.toFloat() == 180);
		
		asserts.assert(r == d);
		asserts.assert(d == r);
		
		final r = new Radian(0);
		asserts.assert((r + new Radian(1)).toFloat() == 1);
		asserts.assert((r + d).toFloat() == Math.PI);
		
		return asserts.done();
	}
	
	// public function length() {
		
	// 	return asserts.done();
	// }
	
	public function temperature() {
		final k = new Kelvin(0);
		final c:Celsius = k;
		final f:Fahrenheit = k;
		
		asserts.assert(k.toFloat() == 0);
		asserts.assert(c.toFloat() == -273.15);
		asserts.assert(f.toFloat() == -459.67);
		
		asserts.assert(k == f);
		asserts.assert(f == k);
		asserts.assert(k == c);
		asserts.assert(c == k);
		asserts.assert(f.toKelvin() == c);
		asserts.assert(c.toKelvin() == f);
		
		return asserts.done();
	}
	
	public function time() {
		final s = new Second(7200);
		final m:Minute = s;
		final h:Hour = s;
		
		asserts.assert(s.toFloat() == 7200);
		asserts.assert(m.toFloat() == 120);
		asserts.assert(h.toFloat() == 2);
		
		asserts.assert(s == m);
		asserts.assert(m == s);
		asserts.assert(s == h);
		asserts.assert(h == s);
		asserts.assert(m.toSecond() == h);
		asserts.assert(h.toSecond() == m);
		
		return asserts.done();
	}
}
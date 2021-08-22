package;

import why.unit.energy.*;
import why.unit.electricity.*;
import why.unit.temperature.*;
import why.unit.angle.*;
import why.unit.time.*;
import why.unit.digital.*;

import tink.unit.*;
import tink.testrunner.*;

@:asserts
@:analyzer(no_const_propagation)
class RunTests {
	
	static function main() {
		Runner.run(TestBatch.make([
			new RunTests(),
			new MathTest(),
			new DateTest(),
		])).handle(Runner.exit);
	}
	
	function new() {}
	
	public function angle() {
		final r = new Radian(Math.PI);
		final d:Degree = r;
		
		asserts.assert(r.toFloat() == Math.PI);
		asserts.assert(d.toFloat() == 180);
		
		asserts.assert(r == d);
		asserts.assert(d == r);
		asserts.assert((r / 10) == new Degree(18));
		asserts.assert((r / new Degree(18)) == 10);
		// asserts.assert((10 / r) == new Degree(18));
		asserts.assert((new Degree(1800) / r) == 10);
		
		final r = new Radian(0);
		asserts.assert((r + new Radian(1)).toFloat() == 1);
		asserts.assert((r + d).toFloat() == Math.PI);
		
		final d = new Degree(60);
		final r:Radian = d;
		asserts.assert(approxEq(d.cos(), 0.5));
		asserts.assert(approxEq(r.cos(), 0.5));
		
		final d = new Degree(30);
		final r:Radian = d;
		asserts.assert(approxEq(d.sin(), 0.5));
		asserts.assert(approxEq(r.sin(), 0.5));
		
		final d = new Degree(45);
		final r:Radian = d;
		asserts.assert(approxEq(d.tan(), 1));
		asserts.assert(approxEq(r.tan(), 1));
		
		final d = Degree.atan2(1, 1);
		final r = Radian.atan2(1, 1);
		asserts.assert(d.toFloat() == 45);
		asserts.assert(r == d);
		
		return asserts.done();
	}
	
	// public function length() {
		
	// 	return asserts.done();
	// }
	
	public function temperature() {
		final k = new Kelvin(0);
		final c:Celsius = k;
		final f:Fahrenheit = k;
		
		asserts.assert(k.symbol == 'K');
		asserts.assert(c.symbol == '°C');
		asserts.assert(f.symbol == '°F');
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
		final ms:Millisecond = s;
		final m:Minute = s;
		final h:Hour = s;
		
		asserts.assert(s.toFloat() == 7200);
		asserts.assert(ms.toFloat() == 7200000);
		asserts.assert(m.toFloat() == 120);
		asserts.assert(h.toFloat() == 2);
		
		asserts.assert(s == m);
		asserts.assert(m == s);
		asserts.assert(s == h);
		asserts.assert(h == s);
		asserts.assert(m.toSecond() == h);
		asserts.assert(h.toSecond() == m);
		
		final s = new Second(100355.125);
		final b = s.breakdown();
		
		asserts.assert(b.d.toFloat() == 1);
		asserts.assert(b.h.toFloat() == 3);
		asserts.assert(b.m.toFloat() == 52);
		asserts.assert(b.s.toFloat() == 35.125);
		
		return asserts.done();
	}
	
	public function electricity() {
		final a = new Ampere(10);
		final v = new Volt(220);
		final w = a * v;
		
		asserts.assert(w.symbol == 'W');
		asserts.assert(w.toFloat() == 2200);
		
		final a = w / v;
		asserts.assert(a.symbol == 'A');
		asserts.assert(a.toFloat() == 10);
		
		final v = w / a;
		asserts.assert(v.symbol == 'V');
		asserts.assert(v.toFloat() == 220);
		
		return asserts.done();
	}
	
	public function energy() {
		final w = new Watt(1000);
		final s = new Second(10);
		final j = w * s;
		final kw:Kilowatt = w;
		
		asserts.assert(w.symbol == 'W');
		asserts.assert(j.symbol == 'J');
		asserts.assert(kw.symbol == 'kW');
		asserts.assert(j.toFloat() == 10000);
		asserts.assert(kw.toFloat() == 1);
		
		final kwh = new KilowattHour(1);
		final j:Joule = kwh;
		asserts.assert(kwh.toFloat() == 1);
		asserts.assert(kwh.symbol == 'kWh');
		asserts.assert(j.toFloat() == 3600000);
		asserts.assert((j:KilowattHour).toFloat() == 1);
		
		return asserts.done();
	}
	
	public function digital() {
		final b = new Byte(1024 * 1024);
		final ki:Kibibyte = b;
		final mi:Mebibyte = b;
		asserts.assert(ki.symbol == 'KiB');
		asserts.assert(mi.symbol == 'MiB');
		asserts.assert(ki.toFloat() == 1024);
		asserts.assert(mi.toFloat() == 1);
		
		final b = new Byte(1000 * 1000);
		final k:Kilobyte = b;
		final m:Megabyte = b;
		asserts.assert(k.symbol == 'KB');
		asserts.assert(m.symbol == 'MB');
		asserts.assert(k.toFloat() == 1000);
		asserts.assert(m.toFloat() == 1);
		
		return asserts.done();
	}
	
	static function approxEq(a:Float, b:Float) {
		return Math.abs(a - b) < 0.000001;
	}
}
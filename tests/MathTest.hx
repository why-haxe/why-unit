package;

import why.Math;
import why.unit.angle.*;

@:asserts
class MathTest {
	public function new() {}
	
	public function acos() {
		asserts.assert(Math.acos(1) == new Radian(0));
		asserts.assert(Math.acos(1) == new Degree(0));
		
		asserts.assert(Math.acos(0) == new Radian(Math.PI / 2));
		asserts.assert(Math.acos(0) == new Degree(90));
		
		asserts.assert(Math.acos(-1) == new Radian(Math.PI));
		asserts.assert(Math.acos(-1) == new Degree(180));
		
		return asserts.done();
	}
	
	public function atan() {
		asserts.assert(Math.atan(0) == new Radian(0));
		asserts.assert(Math.atan(0) == new Degree(0));
		
		asserts.assert(Math.atan(1) == new Radian(Math.PI / 4));
		asserts.assert(Math.atan(1) == new Degree(45));
		
		asserts.assert(Math.atan(-1) == new Radian(-Math.PI / 4));
		asserts.assert(Math.atan(-1) == new Degree(-45));
		
		return asserts.done();
	}
	
	public function atan2() {
		asserts.assert(Math.atan2(0, 1) == new Radian(0));
		asserts.assert(Math.atan2(0, 1) == new Degree(0));
		
		asserts.assert(Math.atan2(1, 1) == new Radian(Math.PI / 4));
		asserts.assert(Math.atan2(1, 1) == new Degree(45));
		
		asserts.assert(Math.atan2(-1, 1) == new Radian(-Math.PI / 4));
		asserts.assert(Math.atan2(-1, 1) == new Degree(-45));
		
		return asserts.done();
	}
	
	public function cos() {
		asserts.assert(approxEq(Math.cos(new Radian(0)), 1));
		asserts.assert(approxEq(Math.cos(new Degree(0)), 1));
		
		asserts.assert(approxEq(Math.cos(new Radian(Math.PI / 2)), 0));
		asserts.assert(approxEq(Math.cos(new Degree(90)), 0));
		
		asserts.assert(approxEq(Math.cos(new Radian(Math.PI)), -1));
		asserts.assert(approxEq(Math.cos(new Degree(180)), -1));
		
		asserts.assert(approxEq(Math.cos(new Radian(Math.PI * 3 / 2)), 0));
		asserts.assert(approxEq(Math.cos(new Degree(270)), 0));
		
		asserts.assert(approxEq(Math.cos(new Radian(Math.PI * 2)), 1));
		asserts.assert(approxEq(Math.cos(new Degree(360)), 1));
		
		return asserts.done();
	}
	
	public function sin() {
		asserts.assert(approxEq(Math.sin(new Radian(0)), 0));
		asserts.assert(approxEq(Math.sin(new Degree(0)), 0));
		
		asserts.assert(approxEq(Math.sin(new Radian(Math.PI / 2)), 1));
		asserts.assert(approxEq(Math.sin(new Degree(90)), 1));
		
		asserts.assert(approxEq(Math.sin(new Radian(Math.PI)), 0));
		asserts.assert(approxEq(Math.sin(new Degree(180)), 0));
		
		asserts.assert(approxEq(Math.sin(new Radian(Math.PI * 3 / 2)), -1));
		asserts.assert(approxEq(Math.sin(new Degree(270)), -1));
		
		asserts.assert(approxEq(Math.sin(new Radian(Math.PI * 2)), 0));
		asserts.assert(approxEq(Math.sin(new Degree(360)), 0));
		
		return asserts.done();
	}
	
	public function tan() {
		asserts.assert(approxEq(Math.tan(new Radian(0)), 0));
		asserts.assert(approxEq(Math.tan(new Degree(0)), 0));
		
		asserts.assert(approxEq(Math.tan(new Radian(Math.PI / 4)), 1));
		asserts.assert(approxEq(Math.tan(new Degree(45)), 1));
		
		asserts.assert(approxEq(Math.tan(new Radian(-Math.PI / 4)), -1));
		asserts.assert(approxEq(Math.tan(new Degree(-45)), -1));
		
		return asserts.done();
	}
	
	
	
	static function approxEq(a:Float, b:Float) {
		return Math.abs(a - b) < 0.000001;
	}
}
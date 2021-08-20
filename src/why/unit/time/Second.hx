package why.unit.time;

abstract Second(Float) {
	public static inline final SYMBOL = 's';
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	public function breakdown() {
		var s:Second = cast this;
		final d = new Day(Std.int((s:Day).toFloat()));
		s = s - (d:Second);
		
		final h = new Hour(Std.int((s:Hour).toFloat()));
		s = s - (h:Second);
		
		final m = new Minute(Std.int((s:Minute).toFloat()));
		s = s - (m:Second);
		
		return {
			d: d,
			h: h,
			m: m,
			s: s,
		}
	}
	
	@:op(-A) public static function neg(v:Second):Second;
	@:op(A+B) public static function add(lhs:Second, rhs:Second):Second;
	@:op(A-B) public static function sub(lhs:Second, rhs:Second):Second;
	@:op(A*B) public static function mulFloat(lhs:Second, rhs:Float):Second;
	@:op(A/B) public static function divFloat(lhs:Second, rhs:Float):Second;
	@:op(A/B) public static function div(lhs:Second, rhs:Second):Float;
	@:op(A>B) public static function gt(lhs:Second, rhs:Second):Bool;
	@:op(A<B) public static function lt(lhs:Second, rhs:Second):Bool;
	@:op(A>=B) public static function gte(lhs:Second, rhs:Second):Bool;
	@:op(A<=B) public static function lte(lhs:Second, rhs:Second):Bool;
	@:op(A==B) public static function eq(lhs:Second, rhs:Second):Bool;
	@:op(A!=B) public static function neq(lhs:Second, rhs:Second):Bool;
}
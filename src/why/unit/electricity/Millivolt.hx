package why.unit.electricity;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.electricity.Millivolt(v))
#end
abstract Millivolt(Float) {
	public static inline final SYMBOL = 'mV';
	
	static inline final VOLT = 0.001;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromVolt(v:Volt):Millivolt
		return new Millivolt(v.toFloat() / VOLT);
	
	@:to public inline function toVolt():Volt
		return new Volt(this * VOLT);
}
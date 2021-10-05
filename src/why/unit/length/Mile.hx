package why.unit.length;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.length.Mile(v))
#end
abstract Mile(Float) {
	public static inline final SYMBOL = 'mi';
	static inline final METERS = 1609.344;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromMeter(v:Meter):Mile
		return new Mile(v / METERS);
	
	@:to public inline function toMeter():Meter
		return new Meter(this * METERS);
}
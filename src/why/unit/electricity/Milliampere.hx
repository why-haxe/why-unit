package why.unit.electricity;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.electricity.Milliampere(v))
#end
abstract Milliampere(Float) {
	public static inline final SYMBOL = 'mA';
	
	static inline final AMPERE = 0.001;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromAmpere(v:Ampere):Milliampere
		return new Milliampere(v.toFloat() / AMPERE);
	
	@:to public inline function toAmpere():Ampere
		return new Ampere(this * AMPERE);
}
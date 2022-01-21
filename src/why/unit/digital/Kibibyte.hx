package why.unit.digital;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.digital.Kibibyte(v))
#end
abstract Kibibyte(Float) {
	public static inline final SYMBOL = 'KiB';
	
	static inline final BYTES = 1024;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromByte(v:Byte):Kibibyte
		return new Kibibyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}
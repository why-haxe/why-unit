package why.unit.digital;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.digital.Megabyte(v))
#end
abstract Megabyte(Float) {
	public static inline final SYMBOL = 'MB';
	
	static inline final BYTES = 1000 * 1000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	
	@:from public static inline function fromByte(v:Byte):Megabyte
		return new Megabyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}
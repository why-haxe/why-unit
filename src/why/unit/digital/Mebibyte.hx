package why.unit.digital;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.digital.Mebibyte(v))
#end
abstract Mebibyte(Float) {
	public static inline final SYMBOL = 'MiB';
	
	static inline final BYTES = 1024 * 1024;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	public inline function print() return this + symbol;
	
	@:from public static inline function fromByte(v:Byte):Mebibyte
		return new Mebibyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}
package why.unit.digital;

#if tink_json
@:jsonStringify(v -> v.toFloat())
@:jsonParse(v -> new why.unit.digital.Kilobyte(v))
#end
abstract Kilobyte(Float) {
	public static inline final SYMBOL = 'KB';
	
	static inline final BYTES = 1000;
	
	public inline function new(v) this = v;
	
	public var symbol(get, never):String;
	inline function get_symbol() return SYMBOL;
	public inline function toFloat() return this;
	public inline function print() return this + symbol;
	
	@:from public static inline function fromByte(v:Byte):Kilobyte
		return new Kilobyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}

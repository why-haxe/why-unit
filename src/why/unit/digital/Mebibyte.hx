package why.unit.digital;

abstract Mebibyte(Float) {
	public static inline final SYMBOL = 'MiB';
	
	static inline final BYTES = 1024 * 1024;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromByte(v:Byte):Mebibyte
		return new Mebibyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}
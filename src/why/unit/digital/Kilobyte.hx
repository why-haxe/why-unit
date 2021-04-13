package why.unit.digital;

abstract Kilobyte(Float) {
	public static inline final SYMBOL = 'KB';
	
	static inline final BYTES = 1000;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromByte(v:Byte):Kilobyte
		return new Kilobyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}

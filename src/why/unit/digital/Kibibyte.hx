package why.unit.digital;

abstract Kibibyte(Float) {
	static inline final BYTES = 1024;
	
	public inline function new(v) this = v;
	
	public inline function toFloat() return this;
	
	@:from public static inline function fromByte(v:Byte):Kibibyte
		return new Kibibyte(v.toFloat() / BYTES);
	
	@:to public inline function toByte():Byte
		return new Byte(Math.round(this * BYTES));
}
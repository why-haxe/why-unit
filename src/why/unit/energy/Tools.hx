package why.unit.energy;

class Tools {
	public static inline function joule(v:Float) return new Joule(v);
	public static inline function kilowatt(v:Float) return new Kilowatt(v);
	public static inline function kilowattHour(v:Float) return new KilowattHour(v);
	public static inline function watt(v:Float) return new Watt(v);
}
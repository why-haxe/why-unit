package why.unit.electricity;

class Tools {
	public static inline function ampere(v:Float) return new Ampere(v);
	public static inline function coulomb(v:Float) return new Coulomb(v);
	public static inline function volt(v:Float) return new Volt(v);
}
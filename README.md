# Units of Measurement and their conversions

- All units are abstracts over `Float`
- SI units should contain no `@:from/@:to` casts
- Non-SI units should contain `@:from/@:to` casts to their equivalent SI units.

References:
- https://en.wikipedia.org/wiki/International_System_of_Units
- https://en.wikipedia.org/wiki/SI_base_unit
  - Summary table: https://en.wikipedia.org/wiki/International_System_of_Units#Base_units
- https://en.wikipedia.org/wiki/SI_derived_unit
  - Summary table: https://en.wikipedia.org/wiki/International_System_of_Units#Derived_units
- https://en.wikipedia.org/wiki/Conversion_of_units

### Convenient Type Conversions

By utilizing the powerful type system of Haxe, we can have zero-overhead automatic type-conversion between different types.

Example:

```haxe
final a = new Ampere(10);
final v = new Volt(220);

final w = a * v;
$type(w); // Watt
trace(w.symbol); // 'W'
trace(w.toFloat()); // 2200

final a = w / v;
$type(a); // Ampere
trace(a.symbol); // 'A'
trace(a.toFloat()); // 10

final v = w / a;
$type(v); // Volt
trace(v.symbol); // 'V'
trace(v.toFloat()); // 220
```

Generated code (js):

```js
let v = 220;
let a = 10;
let w = a * v;
console.log("W");
console.log(w);

let a = w / v;
console.log("A");
console.log(a);

let v = w / a;
console.log("V");
console.log(v);
```

### Drop-in Replacement for Date, DateTools and Math in stdlib

Apply proper units in these classes. For example,  `date.getTime()` will give you `Millisecond`, trigonometric functions in Math will accept and return `Radian`, and so on.

Best used with a top-level `import.hx`:

```haxe
import why.util.Date;
import why.util.Math;

using why.util.DateTools;
```


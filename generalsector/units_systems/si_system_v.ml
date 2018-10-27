
module Mks_t = Mksa_system_t
module Syu_t = System_units_t

let system = {
  Mks_t.mksa_system with Syu_t.title = "SI";
};;

let prefixes_posi_systemtive_data = [
  "Name 	yotta 	zetta 	exa 	peta 	tera 	giga 	mega\
 	kilo 	hecto 	deca";
  "Symbol Y 	Z 	E 	P 	T 	G 	M\
 	k 	h 	da";
  "Factor 1.e+24 	1.e+21 	1.e+18 	1.e+15 	1.e+12 	1.e+9 	1.e+6\
 	1.e+3 	1.e+2 	1.e+1";
];;

let prefixes_negative_data = [
  "Name 	deci 	centi 	milli 	micro 	nano 	pico 	femto\
 	atto 	zepto 	yocto";
  "Symbol d 	c 	m 	N5 	n 	p 	f\
 	a 	z 	y";
  "Factor 1.e-1 	1.e-2 	1.e-3 	1.e-6 	1.e-9 	1.e-12 	1.e-15\
 	1.e-18 	1.e-21 	1.e-24";
];;

let name_symbol_quantity_data = [
  "Name	:	Symbol :	Quantity";
  "meter :	m :		Length";
  "kilogram :	kg :		Mass";
  "second :	s :		Time";
  "ampere :	A :		Electrical current";
  "kelvin :	K :		Thermodynamic temperature";
  "mole	:	mol :		Amount of substance";
  "candela:	cd :		Luminous intensi_systemty";
];;

let dimensi_systemonless_units_data = [
  "units Name 	Symbol 	Quantity 	Definition";
  "radian 	rad 	Angle 		The unit of angle is the angle \
     subtended at the centre of a circle by an arc of the circumference \
     equal in length to the radius of the circle. There are 2 pi radians \
     in a circle.";
  "steradian 	sr 	Solid angle 	The unit of solid angle is \
     the solid angle subtended at the centre of a sphere of radius r by \
     a portion of the surface of the sphere having an area r2. \
     There are (4 pi) steradians on a sphere.";
];;

let print ppf fmt m = Format.fprintf ppf "@[<h>%(%f%) au_system@]" fmt m
;;

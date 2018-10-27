open Make_test_v;;

testing "Coordinate_symbol_v with
   Coordinate_symbol_u_any.ml";;

(* toplevel 
   #use "Coordinate_symbol_u_any.ml";; 

 *)

let sym_x = Coordinate_symbol_v.make "x" "angstrom";;

test_number 1 (
sym_x
(* : Coordinate_symbol_t.coordinate_symbol *)
=
  Coordinate_symbol_t.Coordinate_cartesian_symbol
   (Coordinate_cartesian_symbol_t.X "angstrom")
);;

let sym_z = Coordinate_symbol_v.z "meter";;

test_number 2 (
sym_z
(* : Coordinate_symbol_t.coordinate_symbol *)
=
  Coordinate_symbol_t.Coordinate_cartesian_symbol
   (Coordinate_cartesian_symbol_t.Z "meter")
);;

let nam_z = Coordinate_symbol_v.name sym_z;;

test_number 3 (
nam_z 
(* : string *)
=
"z"
);;

let str_z = Coordinate_symbol_v.string_off sym_z;;

test_number 4 (
str_z 
(* : string *)
= 
"meter"
);;

let lna_z = Coordinate_symbol_v.longname sym_z;;

test_number 5 (
lna_z 
(* : string *)
=
"Coordinate_symbol_t.Z"
);;

let fna_z = Coordinate_symbol_v.fullname sym_z;;

test_number 6 (
fna_z 
(* : string *)
=
"Coordinate_symbol_t.Z \"meter\""
);;

let sym_cca_x = Coordinate_symbol_v.coordinate_cartesian_symbol_off_coordinate_symbol sym_x;;

test_number 7 (
sym_cca_x
(* : Coordinate_cartesian_symbol_t.coordinate_cartesian_symbol *)
  =
Coordinate_cartesian_symbol_t.X "angstrom"
);;

let is_cca_x = Coordinate_symbol_v.is_coordinate_cartesian_symbol_off_coordinate_symbol sym_x;;

test_number 8 (
is_cca_x
(* : bool *)
  =
true
);;

let is_x = Coordinate_symbol_v.is_x sym_x;;

test_number 9 (
is_x
(* : bool *)
  =
true
);;

let sym_of_x = Coordinate_symbol_v.coordinate_symbol_of_coordinate_cartesian_symbol sym_cca_x;;

test_number 10 (
sym_of_x
(* : Coordinate_symbol_t.coordinate_symbol *) 
=
sym_x
);;

open Make_test_v;;

testing "Units_tuple_v with
       Units_tuple_u_any.ml"

(* toplevel 
   #use "Units_tuple_u_any.ml";; 

*)

open Units_tuple_v;;

let uni_a = Units_v.make "angstrom" "";;

test_number 1 (
( uni_a : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let kin_uni_a = Units_v.kind uni_a;;

test_number 2 (
(kin_uni_a : string ) = 
"actual"
);;

let sna_uni_a = Units_v.shortname uni_a;;

test_number 3 (
(sna_uni_a : string ) = 
"length angstrom"
);;

let uni_b = Units_v.make "bohr" "";;

test_number 4 (
( uni_b : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);;

let kin_uni_b = Units_v.kind uni_b;;

test_number 5 (
(kin_uni_b : string ) = 
"actual"
);;

let sna_uni_b = Units_v.shortname uni_b;;

test_number 6 (
(sna_uni_b : string ) = 
"length bohr"
);;

let uni_c = Units_v.make "bohr" "";;

test_number 7 (
( uni_c : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)
);;

let kin_uni_c = Units_v.kind uni_c;;

test_number 8 (
(kin_uni_c : string ) = 
"actual"
);;

let sna_uni_c = Units_v.shortname uni_c;;

test_number 9 (
(sna_uni_c : string ) = 
"length bohr"
);;

let boo_ab = are_homogeneous uni_a uni_b;;

test_number 10 (
(boo_ab : bool ) = 
false
);;

let boo_bc = are_homogeneous uni_b uni_c;;

test_number 11 (
(boo_bc : bool ) = 
true
);;

let uni_bbc = Trio_v.make uni_b uni_b uni_c;;

test_number 12 (
( uni_bbc: Units_t.units Trio_t.trio ) =
  (Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

let uni_bbc_t = Tuple_v.tuple_of_trio uni_bbc;; 

test_number 13 (
(uni_bbc_t : Units_t.units Tuple_t.tuple ) =
  Tuple_t.Trio
   (Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

test_number 14 (
uni_bbc_tup = make uni_bbc_t
);;

let uni_abc = Trio_v.make uni_a uni_b uni_c;;

test_number 15 (
( uni_abc : Units_t.units Trio_t.trio ) =
  (Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

let uni_abc_t = Tuple_v.tuple_of_trio uni_abc;; 

test_number 16 (
(uni_abc_t : Units_t.units Tuple_t.tuple ) =
  Tuple_t.Trio
   (Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))
);;

test_raises_some_exc make uni_abc_t;;

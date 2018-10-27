(* $Id: tarray.ml,v 1.4 2007-09-19 19:50:38 colonna Exp $ *)

open Make_test_v;;

(** {3 Array1_v.} *)

testing "Array1_v";;

(* toplevel 
   #use "tarray_v.ml";; 
 *)

module Ar1_v = Array1_v
 
let str_a = [|"a"; "b"; "c"; "d"|];; 
let int_a = [| 1; 2; 3; 4|];; 
let psi_a = Array1_v.pair_array_of_array_of_array str_a int_a;;
let psi_m = Array1_v.pair_array2_of_array_of_array str_a int_a;;

let tr_psi_m = Array2_v.transposed psi_m;;

let pis_a = Array1_v.pair_array_of_array_of_array int_a str_a ;;
let pis_m = Array1_v.pair_array2_of_array_of_array int_a str_a ;;
let tr_pis_m = Array2_v.transposed pis_m;;

test_number 1 (
psi_a
=
[|("a", 1); ("b", 2); ("c", 3); ("d", 4)|]
);;

test_number 2 (
psi_m
=
[|[|("a", 1); ("a", 2); ("a", 3); ("a", 4)|];
  [|("b", 1); ("b", 2); ("b", 3); ("b", 4)|];
  [|("c", 1); ("c", 2); ("c", 3); ("c", 4)|];
  [|("d", 1); ("d", 2); ("d", 3); ("d", 4)|]|]
);;

test_number 3 (
tr_psi_m
=
[|[|("a", 1); ("b", 1); ("c", 1); ("d", 1)|];
  [|("a", 2); ("b", 2); ("c", 2); ("d", 2)|];
  [|("a", 3); ("b", 3); ("c", 3); ("d", 3)|];
  [|("a", 4); ("b", 4); ("c", 4); ("d", 4)|]|]
);;

test_number 4 (
pis_a
=
[|(1, "a"); (2, "b"); (3, "c"); (4, "d")|]
);;

test_number 5 (
pis_m
=
[|[|(1, "a"); (1, "b"); (1, "c"); (1, "d")|];
  [|(2, "a"); (2, "b"); (2, "c"); (2, "d")|];
  [|(3, "a"); (3, "b"); (3, "c"); (3, "d")|];
  [|(4, "a"); (4, "b"); (4, "c"); (4, "d")|]|]
);;

test_number 6 (
tr_pis_m
=
[|[|(1, "a"); (2, "a"); (3, "a"); (4, "a")|];
  [|(1, "b"); (2, "b"); (3, "b"); (4, "b")|];
  [|(1, "c"); (2, "c"); (3, "c"); (4, "c")|];
  [|(1, "d"); (2, "d"); (3, "d"); (4, "d")|]|]
);;


open Make_test_v;;

(** {3 Tests for Hermite_v.} *)

testing "Hermite_v";;

(* toplevel 
   #use "Thermite_v.ml";; 
 *)

let h = Hermite_v.hermite 2 3.;;

test_number 1 (
h 
  =
34.
);;

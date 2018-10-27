(* $Id: Exp $ *)

open Gentest_v;;

(** {3 Tests for Fonction_v.} *)

testing "Fonction_v";;

(* toplevel #"tfonction_v.ml";; *)

testi 0 (
Fonction_v.value_on_r (Fonction_t.Constant 3.) 5.
= 3.
&&
Fonction_v.value_on_r (Fonction_t.Monomial 2) 5.
= 25.
&&
Fonction_v.value_on_r (Fonction_t.Polynomial [|(0., 0); (5., 1); (-1., 2);|]) 5.
= 0.
);;

(** P(x) = 0 + 5x -x^2 
    P'(x) = 5 -2x *)
 
let scl_fct_a = [|
  (0., (Fonction_t.Monomial 0)); 
  (5., (Fonction_t.Monomial 1)); 
   (-1., (Fonction_t.Monomial 2));  
|];;

testi 1 (
Fonction_v.value_on_r (Fonction_t.Linear_combination scl_fct_a) 5.
= 0.
);;

let df =   
Fonction_v.derivative (Fonction_t.Polynomial [|(0., 0); (5., 1); (-1., 2);|]) ;;

testi 2 (
Fonction_v.value_on_r df 5.
=
-5.
);;

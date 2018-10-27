open Gentest_v;;

(** {3 Tests for Chemicalset_state_v.} *)

testing "Chemicalset_state_v";;

(* toplevel 
   #use "tchemicalset_state_v.ml";; 
 *)

(* Modules *)

module Idx_p = Index_p
module Ord_p = Ordinal_p

module Asi_t = Chemicalset_state_t  
module Asi_v = Chemicalset_state_v

(** Chemicalset_state. *)

let idx = Idx_p.make 0;;
let ord = Ord_p.make 1;;

let idx_bag = Asi_t.Bag (-1);;
let idx_can = Asi_t.Pcn idx;;
let idx_tin = Asi_t.Tin ord;;
let idx_wbr = Asi_t.Web Asi_t.W_right;;

testi 0 (
Asi_v.name idx_bag
=
"B_-1"
);;

testi 1 (
Asi_v.name idx_can
=
"C_0"
);;

testi 2 (
Asi_v.name idx_tin 
=
"T_1"
);;

testi 3 (
Asi_v.name idx_wbr 
=
"W_r"
);;

open Make_test_v;;

(** {3 Tests for Chemicalset_state_v.} *)

testing "Chemicalset_state_v";;

(* toplevel 
   #use "chemicalset_state_u_any.ml";; 
 *)

(* Modules *)



(** Chemicalset_state. *)

let idx = Index_p.make 0;;
let ord = Ordinal_p.make 1;;

let idx_bag = Chemicalset_state_t.Bag (-1);;
let idx_can = Chemicalset_state_t.Pcn idx;;
let idx_tin = Chemicalset_state_t.Tin ord;;
let idx_wbr = Chemicalset_state_t.Web Chemicalset_state_t.W_right;;

test_number 0 (
Chemicalset_state_v.name idx_bag
=
"B_-1"
);;

test_number 1 (
Chemicalset_state_v.name idx_can
=
"C_0"
);;

test_number 2 (
Chemicalset_state_v.name idx_tin 
=
"T_1"
);;

test_number 3 (
Chemicalset_state_v.name idx_wbr 
=
"W_r"
);;

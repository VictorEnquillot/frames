(** {3 Tests for chemicalset_index_v.} *)

open Make_test_v;;

testing "chemicalset_index_v";;

(* toplevel 
   #use "chemicalset_index_u_any.ml";; 
 *)

(* Modules *)


(** Systemset_index. *)

let prs_neu = Protonation_index_t.Neutral;;
let sta_prs = Chemical_index_t.Protonation_index prs_neu;;

test_number 0 (
Chemicalset_index_v.name sta_prs
=
"N"
);;


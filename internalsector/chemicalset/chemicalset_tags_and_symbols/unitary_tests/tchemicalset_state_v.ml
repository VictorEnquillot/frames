(** {3 Tests for chemicalset_index_v.} *)

open Gentest_v;;

testing "chemicalset_index_v";;

(* toplevel 
   #use "tchemicalset_index_v.ml";; 
 *)

(* Modules *)

module CsS_t = Chemicalset_index_t  
module AsS_v = Chemicalset_index_v
module ChS_t = Chemical_index_t
module ChS_v = Chemical_index_v
module PrS_t = Protonation_index_t

(** Systemset_index. *)

let prs_neu = PrS_t.Neutral;;
let sta_prs = ChS_t.Protonation_index prs_neu;;

testi 0 (
AsS_v.name sta_prs
=
"N"
);;


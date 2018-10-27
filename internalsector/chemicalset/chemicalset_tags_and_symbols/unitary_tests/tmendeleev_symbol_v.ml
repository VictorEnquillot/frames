open Gentest_v;;

(** {3 Tests for Mendeleev_symbol_v.} *)

testing "Mendeleev_symbol_v";;

(* toplevel 
   #use "tmendeleev_symbol_v.ml";; 
 *)

(* Modules *)

module Mns_t = Mendeleev_symbol_t
module Mns_v = Mendeleev_symbol_v
module Idx_p = Index_p 

(** c *)

let mnd_s = Mns_t.S;;

let val_s = Mns_v.default_valence_of_mendeleev_symbol mnd_s ;;

testi 0 (
val_s
=
Idx_p.two
);;

testi 1 (
Mns_v.allowed_valence_of_mendeleev_symbol mnd_s Idx_p.four
=
Idx_p.four
);;

testi 2 (
Mns_v.read (Scanf.Scanning.from_string "He")
=
Mns_t.He
);;

testi 3 (
Mns_v.read (Scanf.Scanning.from_string "Uuu")
=
Mns_t.Uuu
);;


(** {3 Tests for l_symmetry_symbol_v.} *)

open Gentest_v;;

testing "l_symmetry_symbol_v";;

(* toplevel 
   #use "tl_symmetry_symbol_v.ml";; 
 *)

(* Modules *)

module Lsy_t = L_symmetry_symbol_t
module Lsy_v = L_symmetry_symbol_v

(** Simulation. *)

let smb_lsy_2 = Lsy_v.make 2;;

testi 0 (
smb_lsy_2 
=
 Lsy_t.D
);;

testi 1 (
Lsy_v.int_of_l_symmetry_symbol smb_lsy_2
=
2
);;

testi 2 (
Lsy_v.index_of_l_symmetry_symbol smb_lsy_2
=
Index_p.two
)
;;

testi 3 ( 
Lsy_v.name smb_lsy_2
=
"D"
);;

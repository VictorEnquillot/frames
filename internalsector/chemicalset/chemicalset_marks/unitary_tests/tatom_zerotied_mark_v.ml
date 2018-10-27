open Make_test_v;;

(** {3 Tests for Atom_zerotied_mark_v.} *)

testing "Atom_zerotied_mark_v with
   tatom_zerotied_mark_v.ml";; 

(* toplevel 
   #use "tatom_zerotied_mark_v.ml";; 
 *)

(* Ar *)

let sym_ato = Atom_zerotied_symbol_v.ar;;

let vin_ato = Vsepr_index_v.mon_c ;;

let mar_ato = Atom_zerotied_mark_v.make sym_ato vin_ato;;

test_number 1 (
mar_ato (* : Atom_zerotied_mark_t.atom_zerotied_mark *) 
=
(sym_ato, vin_ato)
);;


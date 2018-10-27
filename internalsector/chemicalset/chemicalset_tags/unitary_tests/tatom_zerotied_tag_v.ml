open Make_test_v;;

(** {3 Tests for Atom_zerotied_tag_v.} *)

testing "Atom_zerotied_tag_v with
   tatom_zerotied_tag_v.ml";; 

(* toplevel 
   #use "tatom_zerotied_tag_v.ml";; 
 *)

(* Ar *)

let sym_ato = Atom_zerotied_symbol_v.ar;;

let idx_ato = [1] ;;

let tag_ato = Atom_zerotied_tag_v.make sym_ato idx_ato;;

test_number 1 (
tag_ato (* : Atom_zerotied_tag_t.atom_zerotied_tag *) 
=
(sym_ato, idx_ato)
);;


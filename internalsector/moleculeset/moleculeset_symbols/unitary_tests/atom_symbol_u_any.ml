open Make_test_v;;

(** {3 Tests for Atom_symbol_v.} *)

testing "Atom_symbol_v";;

(* toplevel 
   #use "atom_symbol_u_any.ml";; 
 *)

let sym_f = Atom_symbol_v.fm1;; 

test_number 0 (
sym_f (* : Atom_symbol_t.atom_symbol *) 
  =
Atom_symbol_t.Atom_core_twotied_symbol
  (Atom_symbol_t.Atws_t.Atom_core_twotied_double_double_symbol
     Atom_symbol_t.Atws_t.Adds_t.C_dd)
);;

test_number 1 (
Atom_symbol_v.name sym_f (* : Molecule_polymer_symbol_t.valence *) 
  =
"Dstw_C"
);;

test_number 2 (
Atom_symbol_v.molecule_polymer_symbol_off_atom_symbol sym_f
=
Molecule_polymer_symbol_t.F
);;



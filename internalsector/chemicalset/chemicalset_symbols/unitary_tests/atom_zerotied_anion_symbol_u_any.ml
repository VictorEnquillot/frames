open Make_test;;

(** {3 Tests for Atom_zerotied_anion_symbol_v.} *)

testing "Atom_zerotied_anion_symbol_v with
   atom_zerotied_anion_symbol_u_any.ml";;

(* toplevel 
   #use "atom_zerotied_anion_symbol_u_any.ml";; 
 *)

let sym_f = Atom_zerotied_anion_symbol_v.fm1;; 

test_number 0 (
sym_f 
(* : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol *)
  =
Atom_zerotied_anion_symbol_t.Atom_zerotied_anion_minusone_symbol
  Atom_zerotied_anion_minusone_symbol_t.Fm1
);;

test_number 1 (
Atom_zerotied_anion_symbol_v.name sym_f 
(* : Mendeleev_symbol_t.valence *) 
  =
"fm1"
);;


open Make_test;;

(** {3 Tests for Chemicalset_symbol_v.} *)

testing "Chemicalset_symbol_v";;

(* toplevel 
   #use "chemicalset_symbol_u_any.ml";; 
 *)

(* Modules *)


(** C *)

let smb_atm = Atom_symbol_v.c;;
let set_smb_atm = Chemicalset_symbol_t.Atom_symbol smb_atm;;

test_number 0 (
set_smb_atm
=
Chemicalset_symbol_t.Atom_symbol (Atom_symbol_t.Element Mendeleev_symbol_t.C)
);;

test_number 1 (
Chemicalset_symbol_v.name set_smb_atm
=
"Atom C"
);;

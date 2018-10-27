open Gentest_v;;

(** {3 Tests for Chemicalset_symbol_v.} *)

testing "Chemicalset_symbol_v";;

(* toplevel 
   #use "tchemicalset_symbol_v.ml";; 
 *)

(* Modules *)

module Ass_t = Chemicalset_symbol_t
module Ass_v = Chemicalset_symbol_v
module Ats_t = Atom_symbol_t
module Ats_v = Atom_symbol_v

(** C *)

let smb_atm = Ats_v.c;;
let set_smb_atm = Ass_t.Atom_symbol smb_atm;;

testi 0 (
set_smb_atm
=
Ass_t.Atom_symbol (Atom_symbol_t.Element Mendeleev_symbol_t.C)
);;

testi 1 (
Ass_v.name set_smb_atm
=
"Atom C"
);;

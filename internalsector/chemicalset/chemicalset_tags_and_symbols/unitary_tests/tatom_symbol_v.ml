open Gentest_v;;

(** {3 Tests for Atom_symbol_v.} *)

testing "Atom_symbol_v";;

(* toplevel 
   #use "tatom_symbol_v.ml";; 
 *)

module Ats_v = Atom_symbol_v
module Mns_t = Mendeleev_symbol_t

let smb_c_dd = Atom_symbol_v.c_dd;; 

testi 0 (
smb_c_dd (* : Atom_symbol_t.atom_symbol *) 
  =
Atom_symbol_t.Atom_twotied_symbol
  (Atom_symbol_t.Atws_t.Atom_twotied_double_double_symbol
     Atom_symbol_t.Atws_t.Adds_t.C_dd)
);;

testi 1 (
Ats_v.name smb_c_dd (* : Mendeleev_symbol_t.valence *) 
  =
"Dstw_C"
);;

testi 2 (
Ats_v.mendeleev_symbol_off_atom_symbol smb_c_dd
=
Mns_t.C
);;



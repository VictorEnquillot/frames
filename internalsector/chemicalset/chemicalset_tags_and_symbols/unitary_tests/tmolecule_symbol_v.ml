open Gentest_v;;

(** {3 Tests for Molecule_symbol_v.} *)

testing "Molecule_symbol_v";;

(* toplevel 
   #use "tmolecule_symbol_v.ml";; 
 *)

(* Modules *)

module Mls_t = Molecule_symbol_t
module Mls_v = Molecule_symbol_v
module Idx_p = Index_p

(** c *)

let smb_water = Mls_v.make_of_string "water";;

testi 0 (
smb_water (* : Molecule_symbol_t.molecule_symbol *) 
  =  
  Molecule_symbol_t.Molecule_linear_symbol
   (Molecule_symbol_t.Sms_t.Polygon_molecule_symbol
     (Molecule_symbol_t.Sms_t.Angular_molecule_symbol
       Molecule_symbol_t.Sms_t.Water))
);;
  
testi 1 (
Mls_v.name smb_water
=
"Water"
);;


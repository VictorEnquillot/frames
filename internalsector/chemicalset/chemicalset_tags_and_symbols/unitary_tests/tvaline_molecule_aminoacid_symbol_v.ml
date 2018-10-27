(** {3 Valine Molecule_aminoacid Symbol.} *)

open Gentest_v;;

testing "Valine Molecule_aminoacid_symbol_v";;

(* toplevel 
   #use "tvaline_molecule_aminoacid_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v

(** Molecule_aminoacid Symbol *)

let smb_ama = Mas_v.valine;;
let smb_amr = Mas_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama;;
let smb_amn = Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama;;

testi 0 (
smb_ama 
(*  : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
  Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
   (Molecule_aminoacid_symbol_t.Mafs_t.Molecule_aminoacid_regular_symbol
     Molecule_aminoacid_symbol_t.Mafs_t.Mars_t.Valine)
);;

testi 1 (
smb_amn 
(* Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol *)
=
Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_regular_symbol
Molecule_aminoacid_fragmented_symbol_t.Mars_t.Valine
);;

testi 2 (
smb_amr (* : Mas_t.molecule_aminoacid_regular_symbol *)
  = 
Molecule_aminoacid_regular_symbol_t.Valine
);;

testi 4 (
Mas_v.read (Scanf.Scanning.from_string "valine") 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
smb_ama
);;

testi 5 (
Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Valine
);;

testi 6 (
Mas_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_regular_symbol *)
 = 
smb_amr
);;

testi 7 (
Mas_v.is_molecule_aminoacid_regular smb_ama
);;

testi 8 (
Mas_v.is_molecule_aminoacid_fragmented smb_ama
);;

testi 9 (
Mas_v.name smb_ama
=
"Valine"
);;

testi 10 (
Mas_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol *)
=
Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_fragmented_olc_symbol
 (Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_regular_olc_symbol
   Molecule_aminoacid_olc_symbol_t.V)
);;

testi 11 (
Mas_v.molecule_aminoacid_tlc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol *)
=
Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_fragmented_tlc_symbol
 (Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_regular_tlc_symbol
   Molecule_aminoacid_tlc_symbol_t.Val)
);;


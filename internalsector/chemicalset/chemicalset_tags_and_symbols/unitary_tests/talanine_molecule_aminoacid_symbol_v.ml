(** {3 Alanine Molecule_aminoacid Symbol.} *)

open Gentest_v;;

testing "Alanine Molecule_aminoacid_symbol_v";;

(* toplevel 
   #use "talanine_molecule_aminoacid_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v

(** Molecule_aminoacid Symbol *)

let smb_ama = Mas_v.molecule_aminoacid_symbol_of_string "aLaNine";;
let smb_amr = Mas_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama;;
let smb_amn = Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama;;

testi 0 (
smb_ama (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
  (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

testi 1 (
Mas_v.alanine (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
smb_ama
);;

testi 2 (
smb_amn (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *) 
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol 
  Molecule_aminoacid_symbol_t.Alanine
);;

testi 3 (
smb_amr (* : Mas_t.molecule_aminoacid_regular_symbol *)
  = 
Mas_t.Alanine
);;

testi 4 (
Mas_v.read (Scanf.Scanning.from_string "alaNIne") 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
=
smb_ama
);;

testi 5 (
Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama 
(* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine
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
"Alanine"
);;

testi 10 (
Mas_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol *)
=
Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_fragmented_olc_symbol
 (Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_regular_olc_symbol
   Molecule_aminoacid_olc_symbol_t.A)
);;

testi 11 (
Mas_v.molecule_aminoacid_tlc_symbol_off_molecule_aminoacid_symbol smb_ama
(* : Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol *)
=
Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_fragmented_tlc_symbol
 (Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_regular_tlc_symbol
   Molecule_aminoacid_tlc_symbol_t.Ala)
);;


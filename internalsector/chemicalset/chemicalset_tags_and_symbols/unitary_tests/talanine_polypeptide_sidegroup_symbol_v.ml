(** {3 Alanine Polypeptide_sidegroup Symbol.} *)

open Gentest_v;;

testing "Alanine Polypeptide_sidegroup_symbol_v";;

(* toplevel 
   #use "talanine_polypeptide_sidegroup_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Scs_v = Polypeptide_sidegroup_symbol_v
module Scs_t = Polypeptide_sidegroup_symbol_t

(** Polypeptide_sidegroup Symbol *)

let smb_ama = Mas_v.molecule_aminoacid_symbol_of_string "aLaNine";;
let smb_amn = Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_ama;;
let smb_amr = Mas_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_ama;;

let smb_sdc = Scs_v.polypeptide_sidegroup_symbol_of_molecule_aminoacid_symbol smb_ama;;

testi 0 (
smb_ama (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol *)
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol
  (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

testi 1 (
smb_amn (* : Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol *) 
  =
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol 
  Molecule_aminoacid_symbol_t.Alanine
);;

testi 2 (
smb_amr (* : Mas_t.molecule_aminoacid_regular_symbol *)
  = 
Mas_t.Alanine
);;

testi 3 (
smb_sdc
=
Polypeptide_sidegroup_symbol_t.Methyl
);;

testi 4 (
Scs_v.name smb_sdc
=
"Methyl"
);;

testi 5 (
Scs_v.molecule_aminoacid_regular_symbol_off_polypeptide_sidegroup_symbol smb_sdc
=
smb_amr
);;

testi 6 (
Scs_v.molecule_aminoacid_fragmented_symbol_off_polypeptide_sidegroup_symbol smb_sdc
=
smb_amn
);;

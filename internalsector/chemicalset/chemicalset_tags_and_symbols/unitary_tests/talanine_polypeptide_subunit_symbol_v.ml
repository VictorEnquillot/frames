(** {3 Alanine Molecule_aminoacid Symbol.} *)

open Gentest_v;;

testing "Alanine Polypeptide_subunit_symbol_v";;

(* toplevel 
   #use "talanine_polypeptide_subunit_symbol_v.ml";; 
*)

module Idx_p = Index_p
module Brl_v = Booted_repeated_list_v
module Mas_v = Molecule_aminoacid_symbol_v
module Als_t = Polypeptide_subunit_symbol_t
module Als_v = Polypeptide_subunit_symbol_v

(** Molecule_aminoacid Symbol *)

let smb_mar = Mas_v.alanine_f;;
let smb_malx_g2a = Als_v.make_of_count_of_molecule_aminoacid_fragmented_symbol Idx_p.two smb_mar;;
let smb_malx_g0a = Als_v.make_of_count_of_molecule_aminoacid_fragmented_symbol Idx_p.zero smb_mar;;

let smb_brl = Brl_v.make_of_extension_of_count_of_boot 
Mas_v.alanine_f Idx_p.three Mas_v.glycine_s;;
 
testi 0 (
smb_malx_g2a 
(* : Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol *)
  =
Polypeptide_subunit_symbol_t.Regular_leftextended_symbol
  (Polypeptide_subunit_symbol_t.Idx_p.two,
  Polypeptide_subunit_symbol_t.Mas_t.Alanine)
);;

testi 1 (
Als_v.shortname smb_malx_g2a
=
"G2A"
);;

testi 2 (
smb_malx_g0a (* : Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol *)
 =
Polypeptide_subunit_symbol_t.Regular_leftextended_symbol
 (Polypeptide_subunit_symbol_t.Idx_p.zero,
  Polypeptide_subunit_symbol_t.Mas_t.Alanine)
);;

testi 3 (
Als_v.shortname smb_malx_g0a
=
"xA"
);;

(*
testi 4 (
Als_v.make_of_polyglycinefragmentedended_symbol_booted_repeated_list smb_brl

);:
*)

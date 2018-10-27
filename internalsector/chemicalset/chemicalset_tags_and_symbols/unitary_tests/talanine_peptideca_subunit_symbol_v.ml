(** {3 Alanine Molecule_aminoacid Symbol.} *)

open Gentest_v;;

testing "Alanine Peptideca_subunit_symbol_v";;

(* toplevel 
   #use "talanine_peptideca_subunit_symbol_v.ml";; 
*)

module Mas_v = Molecule_aminoacid_symbol_v
module Als_t = Peptideca_subunit_symbol_t
module Als_v = Peptideca_subunit_symbol_v

(** Molecule_aminoacid Symbol *)

let smb_amn = Mas_v.alanine_n;;
let smb_alx_g2a = Als_v.make_of_int_of_molecule_aminoacid_glycineno_symbol 2 smb_amn;;
let smb_alx_g0a = Als_v.make_of_int_of_molecule_aminoacid_glycineno_symbol 0 smb_amn;;

testi 0 (
smb_alx_g2a 
(* : Peptideca_subunit_symbol_t.peptideca_subunit_symbol *)
  =
([Peptideca_subunit_symbol_t.Mas_t.Glycine;
  Peptideca_subunit_symbol_t.Mas_t.Glycine],
 Peptideca_subunit_symbol_t.Mas_t.Molecule_aminoacid_regular_symbol
   Peptideca_subunit_symbol_t.Mas_t.Alanine)
);;

testi 1 (
Als_v.shortname smb_alx_g2a
=
"G2A"
);;

testi 2 (
smb_alx_g0a (* : Peptideca_subunit_symbol_t.peptideca_subunit_symbol *)
 =
  ([],
   Peptideca_subunit_symbol_t.Mas_t.Molecule_aminoacid_regular_symbol
    Peptideca_subunit_symbol_t.Mas_t.Alanine)
);;

testi 3 (
Als_v.shortname smb_alx_g0a
=
"xA"
);;

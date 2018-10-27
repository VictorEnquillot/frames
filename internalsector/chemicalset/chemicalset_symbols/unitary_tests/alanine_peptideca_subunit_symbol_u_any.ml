(** {3 Alanine Molecule_aminoacid Symbol.} *)

open Make_test;;

testing "Alanine Peptideca_subunit_symbol_v";;

(* toplevel 
   #use "alanine_peptideca_subunit_symbol_u_any.ml";; 
*)


(** Molecule_aminoacid Symbol *)

let smb_amn = Molecule_aminoacid_symbol_v.alanine_n;;
let smb_alx_g2a = Peptideca_subunit_symbol_v.make_of_int_of_molecule_aminoacid_glycineno_symbol 2 smb_amn;;
let smb_alx_g0a = Peptideca_subunit_symbol_v.make_of_int_of_molecule_aminoacid_glycineno_symbol 0 smb_amn;;

test_number 0 (
smb_alx_g2a 
(* : Peptideca_subunit_symbol_t.peptideca_subunit_symbol *)
  =
([Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Glycine;
  Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Glycine],
 Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol
   Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Alanine)
);;

test_number 1 (
Peptideca_subunit_symbol_v.shortname smb_alx_g2a
=
"G2A"
);;

test_number 2 (
smb_alx_g0a (* : Peptideca_subunit_symbol_t.peptideca_subunit_symbol *)
 =
  ([],
   Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol
    Peptideca_subunit_symbol_t.Molecule_aminoacid_symbol_t.Alanine)
);;

test_number 3 (
Peptideca_subunit_symbol_v.shortname smb_alx_g0a
=
"xA"
);;

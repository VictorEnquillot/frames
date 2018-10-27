(** {3 Alanine Residue Embedded Symbol.} *)

open Gentest_v;;

testing "Alanine Residue_embedded_symbol_v";;

(* toplevel 
   #use "talanine_residue_embedded_symbol_v.ml";; 
*)

module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Ats_v = Atom_symbol_v
module Pcs_t = Peptideca_symbol_t
module Pcs_v = Peptideca_symbol_v
module Pes_t = Peptideca_embedded_symbol_t
module Res_t = Residue_embedded_symbol_t
module Res_v = Residue_embedded_symbol_v
module Rss_t = Residue_symbol_t
module Rss_v = Residue_symbol_v
module Sds_t = Polypeptide_sidegroup_symbol_t

(** Residue Embedded Symbol *)

let smb_amr = Aas_t.Alanine;;
let smb_ama = Aas_t.Molecule_aminoacid_regular_symbol smb_amr;;
let smb_amo = Aas_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol smb_ama;;

let smb_rse = Res_v.make smb_ama;;
let smb_res = Rss_v.make_of_residue_embedded_symbol smb_rse;;

testi 0 (
smb_rse (* : Res_t.residue_embedded_symbol *)
=
Residue_embedded_symbol_t.Sgl_t.Singlet
   (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine)
);;

testi 1 (
Res_v.make_of_molecule_aminoacid_olc_symbol smb_amo
=
smb_rse
);;

testi 2 (
Res_v.make_of_molecule_aminoacid_regular_symbol smb_amr
=
smb_rse
);;

testi 3 (
smb_res (* : Rss_t.residue_symbol *)
=
Either_or_t.Or
 (Residue_symbol_t.Res_t.Sgl_t.Singlet
   (Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine))
);;

testi 4 (
Res_v.molecule_aminoacid_symbol_off_residue_embedded_symbol smb_rse
=
smb_ama
);;

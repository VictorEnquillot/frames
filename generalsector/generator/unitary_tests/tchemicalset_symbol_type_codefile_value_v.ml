open Gentest_v;;

testing "Chemicalset Symbol Type Codefile_value_v";;

(* toplevel 
   #use "tchemicalset_symbol_type_codefile_value_v.ml";; 
 *)

let nam_cod = "tchemicalset_symbol_type_codefile_value_v.ml";; 

module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Lst_v = List_v
module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v

let nam_ent = "chemicalset";;
let smb_ent = Ens_v.make nam_ent;; 
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_abb = Its_v.upgrading;;

let smb_cfi = Cfs_t.Type_symbol;;
let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;

let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;
let val_cfi = Cfv_v.make kyl_cfi;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules;
 Its_v.typing;
 Its_v.ending]
);;

testi 1 ( 
Lst_v.drop_last_elements_of_int_of_list 1 val_cfi 
(* : Codefile_value_t.Itv_t.item_value list *)
=
[Codefile_value_t.Itv_t.Tre_t.Leaf ["(** {3 A Symbol for a Chemicalset.} *)"];
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Modules.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["module Ses_t = Segment_symbol_t"; "module Res_t = Residue_symbol_t";
     "module Pss_t = Polypeptide_sidegroup_symbol_t";
     "module Pes_t = Peptideca_symbol_t";
     "module Nts_t = Nucleotide_symbol_t";
     "module Nss_t = Nucleoside_symbol_t";
     "module Nbs_t = Nitrogenous_base_symbol_t";
     "module Mos_t = Molecule_symbol_t";
     "module Mats_t = Molecule_aminoacid_tlc_symbol_t";
     "module Maos_t = Molecule_aminoacid_olc_symbol_t";
     "module Mas_t = Molecule_aminoacid_symbol_t";
     "module Mes_t = Mendeleev_symbol_t"; "module Grs_t = Grouping_symbol_t";
     "module Frs_t = Fragment_symbol_t";
     "module Cts_t = Cterminal_subunit_symbol_t";
     "module Cls_t = Cluster_symbol_t"; "module Chs_t = Chain_symbol_t";
     "module Brs_t = Bridge_symbol_t"; "module Bxs_t = Box_symbol_t";
     "module Bns_t = Bond_symbol_t"; "module Bls_t = Block_symbol_t";
     "module Ats_t = Atom_symbol_t"; "module Ags_t = Aggregate_symbol_t"];
   Codefile_value_t.Itv_t.Tre_t.Leaf []]);
 Codefile_value_t.Itv_t.Tre_t.Inner (["(** {6 Typing.} *)"],
  [Codefile_value_t.Itv_t.Tre_t.Leaf
    ["type chemicalset_symbol =";
     "  | Aggregate_symbol of Ags_t.aggregate_symbol";
     "  | Atom_symbol of Ats_t.atom_symbol";
     "  | Block_symbol of Bls_t.block_symbol";
     "  | Bond_symbol of Bns_t.bond_symbol";
     "  | Box_symbol of Bxs_t.box_symbol";
     "  | Bridge_symbol of Brs_t.bridge_symbol";
     "  | Chain_symbol of Chs_t.chain_symbol";
     "  | Cluster_symbol of Cls_t.cluster_symbol";
     "  | Cterminal_subunit_symbol of Cts_t.cterminal_subunit_symbol";
     "  | Fragment_symbol of Frs_t.fragment_symbol";
     "  | Grouping_symbol of Grs_t.grouping_symbol";
     "  | Mendeleev_symbol of Mes_t.mendeleev_symbol";
     "  | Molecule_aminoacid_symbol of Mas_t.molecule_aminoacid_symbol";
     "  | Molecule_aminoacid_olc_symbol of Maos_t.molecule_aminoacid_olc_symbol";
     "  | Molecule_aminoacid_tlc_symbol of Mats_t.molecule_aminoacid_tlc_symbol";
     "  | Molecule_symbol of Mos_t.molecule_symbol";
     "  | Nitrogenous_base_symbol of Nbs_t.nitrogenous_base_symbol";
     "  | Nucleoside_symbol of Nss_t.nucleoside_symbol";
     "  | Nucleotide_symbol of Nts_t.nucleotide_symbol";
     "  | Peptideca_symbol of Pes_t.peptideca_symbol";
     "  | Polypeptide_sidegroup_symbol of Pss_t.polypeptide_sidegroup_symbol";
     "  | Residue_symbol of Res_t.residue_symbol";
     "  | Segment_symbol of Ses_t.segment_symbol"; ";;"]])]
);;

testi 2 (
nam_fil_cfi 
(* : string *)
=
"chemicalset_symbol_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;


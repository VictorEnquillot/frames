open Gentest_v;;

testing "Atom_symbol Implementation Modules Item_value_v";;

(* toplevel 
   #use "tatom_symbol_implementation_modules_item_value_v.ml";; 
 *)

let nam_cod = "tatom_symbol_implementation_modules_item_v.ml";;

module Cfs_v = Codefile_symbol_v
module Cls_v = Caml_line_symbol_v
module Clv_v = Caml_line_value_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnp_v = Constructor_path_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cpmdf_v = Caml_paragraph_modules_definitions_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cstp_v = Constructor_symbol_tree_provider_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Cpt_v = Constructor_path_tree_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itvp_v = Item_value_provider_v
module Lst_v = List_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.modules;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt_l = Tre_v.list_off_tree mrk_cnt_t;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 

let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;
let pth_cnt = Tre_v.root_off_tree pth_cnt_t;;
 
let ctt_cpg = Cpc_v.make pth_cnt kyl_itm;;
let ctt_cpg_s_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;

let smb_cnt_t = Cstp_v.provide smb_cnt;;
let smb_cnt_s_l = Cst_v.anyson_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t;;
let smb_cnt_u_l = Cst_v.up_constructor_symbol_list_of_constructor_symbol_tree smb_cnt_t;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let ecs_st_l = Cpmdf_v.anyson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_type smb_cnt;;
let ecs_si_l = Cpmdf_v.anyson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_implementation smb_cnt;;

let ecs_ut_l = Cpmdf_v.up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_type smb_cnt;;
let ecs_ui_l = Cpmdf_v.up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_implementation smb_cnt;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let smb_cpg_l = Tre_v.list_off_tree frm_itm;; 
let smb_cpg_h = List.nth smb_cpg_l 0;;
let smb_cpg_ix = List.nth smb_cpg_l 1;;
let smb_cpg_tl = List.nth smb_cpg_l 2;;
let smb_cpg_il = List.nth smb_cpg_l 3;;

let smb_cli_tlt_l = Cpmdf_v.retrieve_modules_type_definitions_local_in_codefile_type ctt_cpg;;
let smb_cli_tli_l = Cpmdf_v.retrieve_modules_type_definitions_local_in_codefile_implementation ctt_cpg;;
let smb_cli_ili_l = Cpmdf_v.retrieve_modules_implementation_definitions_local_in_codefile_implementation ctt_cpg;;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 (
 smb_cnt 
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_several_symbol "atom")
);;

testi 1 (
ctt_cpg
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom"),
   [1])],
 [("item", "modules"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "atom")])
);;

testi 2 (
trp_imc 
(* :
  (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol, Category_symbol_t.category_symbol) Triplet_t.triplet *)
=
  (Item_symbol_t.Modules_symbol,
   Codefile_symbol_t.Implementation_symbol,
   Category_symbol_t.Symbol_symbol)
);;

testi 3 (
List.length smb_cnt_s_l 
= 
96
);;

testi 4 (
List.length smb_cli_tli_l 
=
33
);;

testi 5 (
List.length smb_cli_ili_l 
=
32
);;

testi 6 (
List.length smb_cli_tlt_l 
=
7
);;

testi 7 (
nam_fil_itm
(* : string *)
= 
"atom_symbol_modules_v.ml"
);;

let val_itm = Itvp_v.provide kyl_itm;;

testi 8 (
val_itm 
(* : Item_value_t.item_value *)
=
  Item_value_t.Tre_t.Inner (["(** {6 Modules.} *)"],
   [Item_value_t.Tre_t.Leaf
     ["module A6s_v = Atom_sixtied_symbol_v";
      "module A5s_v = Atom_fivetied_symbol_v";
      "module A4s_v = Atom_fourtied_symbol_v";
      "module A3ddds_v = Atom_threetied_double_double_double_symbol_v";
      "module A3cccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v";
      "module A3sccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v";
      "module A3ssds_v = Atom_threetied_single_single_double_symbol_v";
      "module A3ssss_v = Atom_threetied_single_single_single_symbol_v";
      "module A3s_v = Atom_threetied_symbol_v";
      "module A2dds_v = Atom_twotied_double_double_symbol_v";
      "module A2cds_v = Atom_twotied_conjugated_double_symbol_v";
      "module A2ccs_v = Atom_twotied_conjugated_conjugated_symbol_v";
      "module A2sts_v = Atom_twotied_single_triple_symbol_v";
      "module A2sds_v = Atom_twotied_single_double_symbol_v";
      "module A2scs_v = Atom_twotied_single_conjugated_symbol_v";
      "module A2sss_v = Atom_twotied_single_single_symbol_v";
      "module A2s_v = Atom_twotied_symbol_v";
      "module A1ts_v = Atom_onetied_triple_symbol_v";
      "module A1ss_v = Atom_onetied_single_symbol_v";
      "module A1ds_v = Atom_onetied_double_symbol_v";
      "module A1cs_v = Atom_onetied_conjugated_symbol_v";
      "module A1s_v = Atom_onetied_symbol_v";
      "module Has_v = Halfbridge_symbol_v";
      "module A0cp3s_v = Atom_zerotied_cation_plus_three_symbol_v";
      "module A0cp2s_v = Atom_zerotied_cation_plus_two_symbol_v";
      "module A0cp1s_v = Atom_zerotied_cation_plus_one_symbol_v";
      "module A0cs_v = Atom_zerotied_cation_symbol_v";
      "module A0am2s_v = Atom_zerotied_anion_minus_two_symbol_v";
      "module A0am1s_v = Atom_zerotied_anion_minus_one_symbol_v";
      "module A0as_v = Atom_zerotied_anion_symbol_v";
      "module A0rs_v = Atom_zerotied_raregas_symbol_v";
      "module A0s_v = Atom_zerotied_symbol_v"];
    Item_value_t.Tre_t.Leaf
     ["module A3ddds_t = Atom_threetied_double_double_double_symbol_t";
      "module A3cccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t";
      "module A3sccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t";
      "module A3ssds_t = Atom_threetied_single_single_double_symbol_t";
      "module A3ssss_t = Atom_threetied_single_single_single_symbol_t";
      "module A2dds_t = Atom_twotied_double_double_symbol_t";
      "module A2cds_t = Atom_twotied_conjugated_double_symbol_t";
      "module A2ccs_t = Atom_twotied_conjugated_conjugated_symbol_t";
      "module A2sts_t = Atom_twotied_single_triple_symbol_t";
      "module A2sds_t = Atom_twotied_single_double_symbol_t";
      "module A2scs_t = Atom_twotied_single_conjugated_symbol_t";
      "module A2sss_t = Atom_twotied_single_single_symbol_t";
      "module A1ts_t = Atom_onetied_triple_symbol_t";
      "module A1ss_t = Atom_onetied_single_symbol_t";
      "module A1ds_t = Atom_onetied_double_symbol_t";
      "module A1cs_t = Atom_onetied_conjugated_symbol_t";
      "module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t";
      "module A0cp2s_t = Atom_zerotied_cation_plus_two_symbol_t";
      "module A0cp1s_t = Atom_zerotied_cation_plus_one_symbol_t";
      "module A0am2s_t = Atom_zerotied_anion_minus_two_symbol_t";
      "module A0am1s_t = Atom_zerotied_anion_minus_one_symbol_t";
      "module Has_t = Halfbridge_symbol_t";
      "module A0cs_t = Atom_zerotied_cation_symbol_t";
      "module A0as_t = Atom_zerotied_anion_symbol_t";
      "module A0rs_t = Atom_zerotied_raregas_symbol_t";
      "module A6s_t = Atom_sixtied_symbol_t";
      "module A5s_t = Atom_fivetied_symbol_t";
      "module A4s_t = Atom_fourtied_symbol_t";
      "module A3s_t = Atom_threetied_symbol_t";
      "module A2s_t = Atom_twotied_symbol_t";
      "module A1s_t = Atom_onetied_symbol_t";
      "module A0s_t = Atom_zerotied_symbol_t";
      "module Ats_t = Atom_symbol_t"];
    Item_value_t.Tre_t.Leaf []])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;;
Itv_v.write oc val_itm;;
close_out oc;

(************************
testi 9 (
Lst_v.left_half_off_list smb_cnt_s_l 
(* : Constructor_symbol_t.constructor_symbol list *)
=[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_onetied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_twotied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_threetied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_fourtied");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_fivetied"));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_sixtied"));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_raregas");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_anion");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_cation");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "halfbridge");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ar");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "he");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "kr");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ne");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "xe");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_zerotied_anion_minus_one");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_zerotied_anion_minus_two");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "f_1m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "h_1m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "cl_1m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "br_1m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "i_1m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "o_2m");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "s_2m");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_zerotied_cation_plus_one");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_zerotied_cation_plus_two");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_zerotied_cation_plus_three");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "h_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "k_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "li_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "na_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ni_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "cu_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "mg_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ca_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "fe_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "zn_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "cu_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "fe_3p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ni_3p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbc");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbd");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbs");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbt");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol
      "atom_onetied_conjugated"));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_nodeoneline_symbol
      "atom_onetied_double"));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_onetied_single")]
);;

testi 10 (
Lst_v.right_half_off_list smb_cnt_s_l 
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_cation_plus_two");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_cation_plus_three");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "h_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "k_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "li_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "na_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ni_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "cu_1p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "mg_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ca_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "fe_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "zn_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "cu_2p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "fe_3p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "ni_3p");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbc");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbd");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbs");
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_bare_symbol "hbt")]
);;

testi 11 (
Lst_v.left_half_off_list smb_cnt_u_l 
(* : Constructor_symbol_t.constructor_symbol list *)
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_raregas");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_anion");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_anion_minus_one");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_anion_minus_two");]
);;

testi 12 (
Lst_v.right_half_off_list smb_cnt_u_l 
(* : Constructor_symbol_t.constructor_symbol list *)
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "atom_cation");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_cation_plus_one");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_cation_plus_two");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol
    "atom_cation_plus_three");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "halfbridge")]
);;

testi 13 (
Lst_v.left_half_off_list ecs_st_l
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_raregas"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_anion"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "atom_cation"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol "halfbridge"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "ar"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "he"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "kr"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "ne"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "xe"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "atom_anion_minus_one"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "atom_anion_minus_two"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "f_1m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "h_1m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "cl_1m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "br_1m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "i_1m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "o_2m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "s_2m"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "atom_cation_plus_one"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T)]
);;

testi 14 (
Lst_v.right_half_off_list ecs_st_l
=
[(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "atom_cation_plus_two"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_local_symbol
     "atom_cation_plus_three"),
  Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "h_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "k_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "li_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "na_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "ni_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "cu_1p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "mg_2p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "ca_2p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "fe_2p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "zn_2p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "cu_2p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "fe_3p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "ni_3p"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "hbc"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "hbd"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "hbs"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_bare_symbol "hbt"),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty)]
);;

testi 15 (
Lst_v.left_half_off_list mrk_cnt_l
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
[(Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "atom"),
  [1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_raregas"),
  [1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "ar"),
  [1; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "he"),
  [2; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "kr"),
  [3; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "ne"),
  [4; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "xe"),
  [5; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_anion"),
  [2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_anion_minus_one"),
  [1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "f_1m"),
  [1; 1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "h_1m"),
  [2; 1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "cl_1m"),
  [3; 1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "br_1m"),
  [4; 1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "i_1m"),
  [5; 1; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_anion_minus_two"),
  [2; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "o_2m"),
  [1; 2; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "s_2m"),
  [2; 2; 2; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_cation"),
  [3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_cation_plus_one"),
  [1; 3; 1])]
);;

testi 16 (
Lst_v.right_half_off_list mrk_cnt_l
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
[(Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "h_1p"),
  [1; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "k_1p"),
  [2; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "li_1p"),
  [3; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "na_1p"),
  [4; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "ni_1p"),
  [5; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "cu_1p"),
  [6; 1; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_cation_plus_two"),
  [2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "mg_2p"),
  [1; 2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "ca_2p"),
  [2; 2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "fe_2p"),
  [3; 2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "zn_2p"),
  [4; 2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "cu_2p"),
  [5; 2; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_cation_plus_three"),
  [3; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "fe_3p"),
  [1; 3; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "ni_3p"),
  [2; 3; 3; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol "halfbridge"),
  [4; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "hbc"),
  [1; 4; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "hbd"),
  [2; 4; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "hbs"),
  [3; 4; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "hbt"),
  [4; 4; 1])]
);;

testi 17 (
smb_cpg_h
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Cps_t.Heading_symbol
  ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
          "atom"),
     [1])],
   [("item", "modules"); ("codefile", "implementation");
    ("category", "symbol"); ("entity", "atom")])
);;

testi 18 (
smb_cpg_ix
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Cps_t.Modules_definitions_symbol
 (Item_formula_t.Cps_t.Modules_implementation_definitions_symbol
   (Item_formula_t.Cps_t.Modules_implementation_local_definitions_symbol
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "modules"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 19 (
smb_cpg_tl
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Cps_t.Modules_definitions_symbol
  (Item_formula_t.Cps_t.Modules_type_definitions_symbol
     (Item_formula_t.Cps_t.Modules_type_local_definitions_symbol
        ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
	     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
		"atom"),
           [1])],
         [("item", "modules"); ("codefile", "implementation");
          ("category", "symbol"); ("entity", "atom")])))
);;

testi 20 (
smb_cpg_il
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Cps_t.Modules_definitions_symbol
 (Item_formula_t.Cps_t.Modules_implementation_definitions_symbol
   (Item_formula_t.Cps_t.Modules_implementation_external_definitions_symbol
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
           "atom"),
        [1])],
      [("item", "modules"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom")])))
);;

testi 21 (
smb_cli_ili_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "halfbridge"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_three"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_raregas"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V))]
);;

testi 22 (
smb_cli_tli_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_three"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "halfbridge"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_raregas"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T))]
);;


testi 23 (
smb_cli_tlt_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "halfbridge"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_raregas"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T))]
);;

testi 24 (
smb_cli_ili_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "halfbridge"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_three"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation_plus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_cation"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_two"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion_minus_one"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_anion"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_proper_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_local_symbol
        "atom_raregas"),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Symbol_symbol,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V))]
);;

testi 25 (
List.map Clv_v.make smb_cli_ili_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module Has_v = Halfbridge_symbol_v";
 "module A0cp3s_v = Atom_cation_plus_three_symbol_v";
 "module A0cp2s_v = Atom_cation_plus_two_symbol_v";
 "module A0cp1s_v = Atom_cation_plus_one_symbol_v";
 "module A0cs_v = Atom_cation_symbol_v";
 "module A0am2s_v = Atom_anion_minus_two_symbol_v";
 "module A0am1s_v = Atom_anion_minus_one_symbol_v";
 "module A0as_v = Atom_anion_symbol_v";
 "module A0rs_v = Atom_raregas_symbol_v"]
);;

testi 26 (
List.map Clv_v.make smb_cli_tli_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module A0cp3s_t = Atom_cation_plus_three_symbol_t";
 "module A0cp2s_t = Atom_cation_plus_two_symbol_t";
 "module A0cp1s_t = Atom_cation_plus_one_symbol_t";
 "module A0am2s_t = Atom_anion_minus_two_symbol_t";
 "module A0am1s_t = Atom_anion_minus_one_symbol_t";
 "module Has_t = Halfbridge_symbol_t";
 "module A0cs_t = Atom_cation_symbol_t";
 "module A0as_t = Atom_anion_symbol_t";
 "module A0rs_t = Atom_raregas_symbol_t";
 "module A0s_t = Atom_symbol_t"]
);;

testi 27 (
List.map Clv_v.make smb_cli_tlt_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module Has_t = Halfbridge_symbol_t";
 "module A0cs_t = Atom_cation_symbol_t";
 "module A0as_t = Atom_anion_symbol_t";
 "module A0rs_t = Atom_raregas_symbol_t"]
);;


*************)

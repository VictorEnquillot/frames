open Gentest_v;;

testing "Aggregate_symbol Type Modules Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_type_modules_item_value_v.ml";; 
 *)

let nam_cod = "taggregate_symbol_type_modules_item_v.ml";;

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

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;
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
let ecs_si_l = Cpmdf_v.anyson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_type smb_cnt;;

let ecs_ut_l = Cpmdf_v.up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_type smb_cnt;;
let ecs_ui_l = Cpmdf_v.up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol smb_cat Cfs_v.codefile_type smb_cnt;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let smb_cpg_l = Tre_v.list_off_tree frm_itm;; 

let smb_cli_tlt_l = Cpmdf_v.retrieve_modules_type_definitions_local_in_codefile_type ctt_cpg;;
let smb_cli_tli_l = Cpmdf_v.retrieve_modules_type_definitions_local_in_codefile_type ctt_cpg;;
let smb_cli_ili_l = Cpmdf_v.retrieve_modules_type_definitions_local_in_codefile_type ctt_cpg;;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 (
 smb_cnt 
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_oneline_symbol
   (Constructor_symbol_t.Constructor_proper_datastructure_symbol
     (Constructor_symbol_t.Constructor_proper_doublet_symbol "aggregate")))
);;

testi 1 (
ctt_cpg
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1])],
 [("item", "modules"); ("codefile", "type");
  ("category", "symbol"); ("entity", "aggregate")])
);;

testi 2 (
trp_imc 
(* :
  (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol, Category_symbol_t.category_symbol) Triplet_t.triplet *)
=
  (Item_symbol_t.Modules_symbol,
   Codefile_symbol_t.Type_symbol,
   Category_symbol_t.Symbol_symbol)
);;

testi 3 (
List.length smb_cnt_s_l 
= 
3
);;

testi 4 (
List.length ecs_st_l 
= 
3
);;

testi 5 (
List.length smb_cpg_l
=
3
);;

testi 6 (
List.length smb_cli_tli_l 
=
2
);;

testi 7 (
List.length smb_cli_ili_l 
=
2
);;

testi 8 (
List.length smb_cli_tlt_l 
=
2
);;

testi 9 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_modules_t.ml"
);;

let val_itm = Itvp_v.provide kyl_itm;;

testi 10 (
val_itm 
(* : Item_value_t.item_value *)
=
 Item_value_t.Tre_t.Inner (["(** {6 Modules.} *)"],
   [Item_value_t.Tre_t.Leaf
      ["module Ord_p = Ordinal_p"; "module Dbt_t = Doublet_t"];
    Item_value_t.Tre_t.Leaf []])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;;
Itv_v.write oc val_itm;;
close_out oc;

testi 11 (
smb_cnt_s_l 
(* : Constructor_symbol_t.constructor_symbol list *)
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_datastructure_symbol
        Constructor_symbol_t.Exs_t.Doublet)));

 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_barebasic_symbol
    Constructor_symbol_t.Ens_t.String);

 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_type_symbol
        Constructor_symbol_t.Exs_t.Ordinal)))]
);;

testi 12 (
smb_cnt_u_l 
(* : Constructor_symbol_t.constructor_symbol list *)
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_proper_datastructure_symbol
      (Constructor_symbol_t.Constructor_proper_doublet_symbol "aggregate")));

 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_datastructure_symbol
        Constructor_symbol_t.Exs_t.Doublet)))]
);;

testi 13 (
ecs_st_l
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
     Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.T);

 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
     Entitycategorysuffix_t.Ens_t.String),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);

 (Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_type_symbol
     Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.P)]
);;

testi 14 (
mrk_cnt_l
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
[(Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
         "aggregate"))),
  [1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_external_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
         Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Doublet))),
  [1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
     Cmtp_v.Csdt_t.Cnm_t.Cns_t.Ens_t.String),
  [1; 1; 1]);
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_external_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Entity_external_type_symbol
         Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Ordinal))),
  [2; 1; 1])]
);;

testi 15 (
smb_cpg_l
(* : Item_formula_t.item_formula *)
=
[Item_formula_t.Cps_t.Heading_symbol
  ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
          (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
            "aggregate"))),
     [1])],
   [("item", "modules"); ("codefile", "type"); ("category", "symbol");
    ("entity", "aggregate")]);
 Item_formula_t.Cps_t.Modules_definitions_symbol
  (Item_formula_t.Cps_t.Modules_type_definitions_symbol
    (Item_formula_t.Cps_t.Modules_type_local_definitions_symbol
      ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
          (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
            (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
              (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
                "aggregate"))),
         [1])],
       [("item", "modules"); ("codefile", "type"); ("category", "symbol");
        ("entity", "aggregate")])));
 Item_formula_t.Cps_t.Modules_definitions_symbol
  (Item_formula_t.Cps_t.Modules_type_definitions_symbol
    (Item_formula_t.Cps_t.Modules_type_external_definitions_symbol
      ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
          (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
            (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
              (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
                "aggregate"))),
         [1])],
       [("item", "modules"); ("codefile", "type"); ("category", "symbol");
        ("entity", "aggregate")])))]
);;

testi 16 (
smb_cli_ili_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_type_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Ordinal),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.P));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Doublet),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T))]
);;

testi 17 (
smb_cli_tli_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_type_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Ordinal),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.P));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Doublet),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T))]
);;

testi 18 (
smb_cli_tlt_l 
=
[Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_type_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Ordinal),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.P));
 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Module_m_eq_m_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Doublet),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.T))]
);;

testi 19 (
List.map Clv_v.make smb_cli_ili_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module Ord_p = Ordinal_p"; "module Dbt_t = Doublet_t"]
);;

testi 20 (
List.map Clv_v.make smb_cli_tli_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module Ord_p = Ordinal_p"; "module Dbt_t = Doublet_t"]
);;

testi 21 (
List.map Clv_v.make smb_cli_tlt_l
(* : Caml_line_value_t.caml_line_value list *)
=
["module Ord_p = Ordinal_p";"module Dbt_t = Doublet_t"]
);;


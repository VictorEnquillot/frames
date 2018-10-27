open Gentest_v;;

testing "Aggregate Symbol Implementation Extracting Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_implementation_extracting_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "taggregate_symbol_implementation_extracting_item_value_v.ml";; 

module Aba_v = Abbreviation_argument_v
module Abm_v = Abbreviation_module_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
module Clv_v = Caml_line_value_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cpt_v = Constructor_path_tree_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cpfdf_v = Caml_paragraph_functions_definitions_formula_v
module Cpv_v = Caml_paragraph_value_v
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Itv_v = Item_value_v
module Sco_v = Scope_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cnt_dst = Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;
let pth_cnt = Tre_v.root_off_tree pth_cnt_t;; 

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg_l = Tre_v.list_off_tree ctt_cpg_t;;
let ctt_cpg_agg = List.nth ctt_cpg_l 0;;
let ctt_cpg_dbt = List.nth ctt_cpg_l 1;;
let ctt_cpg_str = List.nth ctt_cpg_l 2;;
let ctt_cpg_ord = List.nth ctt_cpg_l 3;;

let ecc_agg = Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_agg;;
let ecc_dbt = Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_dbt;;
let ecc_str = Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_str;;
let ecc_ord = Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_ord;;

let ecs_agg = Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_agg;;
let ecs_dbt = Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_dbt;;
let ecs_str = Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_str;;
let ecs_ord = Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_ord;;
let ecs_str_b = Cpc_v.bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg_str;;
let ecs_ord_b = Cpc_v.bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg_ord;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg_agg;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

let smb_cpg_t = frm_itm;;
let smb_cpg_l = Tre_v.list_off_tree smb_cpg_t;;
let smb_cpg_hdr = List.nth smb_cpg_l 0;;
let smb_cpg_sot_str = List.nth smb_cpg_l 1;;
let smb_cpg_sot_ord = List.nth smb_cpg_l 2;;
let smb_cpg_gs_l =  [smb_cpg_sot_str; smb_cpg_sot_ord];;

let ctt_cpg_gs_l = List.map Cps_v.caml_paragraph_context_off_caml_paragraph_symbol smb_cpg_gs_l;;

let ecc_gs_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_gs_l;;
let ecs_gs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_gs_l;;

let smb_cli_str_l = Cpfdf_v.retrieve_function_s_off_t_t_argument_datastructure ctt_cpg_str;; 
let smb_cli_ord_l = Cpfdf_v.retrieve_function_s_off_t_t_argument_datastructure ctt_cpg_ord;; 
let smb_cli_str = Cls_v.let_s_off_t_t_argument ctt_cpg_str;;
let smb_cli_ord = Cls_v.let_s_off_t_t_argument ctt_cpg_ord;;
let val_cli_str = Clv_v.make smb_cli_str;;
let val_cli_ord = Clv_v.make smb_cli_ord;;

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
mrk_cnt_t 
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
Cmtp_v.Csdt_t.Tre_t.Inner
 ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1]),
 [Cmtp_v.Csdt_t.Tre_t.Inner
   ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_external_symbol
          (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
            Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Doublet))),
     [1; 1]),
   [Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
         Cmtp_v.Csdt_t.Cnm_t.Cns_t.Ens_t.String),
      [1; 1; 1]);
    Cmtp_v.Csdt_t.Tre_t.Leaf
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_external_symbol
           (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Entity_external_type_symbol
             Cmtp_v.Csdt_t.Cnm_t.Cns_t.Exs_t.Ordinal))),
      [2; 1; 1])])])
);;

testi 2 (
ctt_cpg_t 
=
Tree_t.Node
 (([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
          (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
            "aggregate"))),
     [1])],
   [("item", "extracting"); ("codefile", "implementation");
    ("category", "symbol"); ("entity", "aggregate")]),
 [Tree_t.Node
   (([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
            (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
              Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
       [1; 1]);
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
            (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
              "aggregate"))),
       [1])],
     [("item", "extracting"); ("codefile", "implementation");
      ("category", "symbol"); ("entity", "aggregate")]),
   [Tree_t.Leaf
     ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
           Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
        [1; 1; 1]);
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
             (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
               Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
        [1; 1]);
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")]);
    Tree_t.Leaf
     ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
             (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_type_symbol
               Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Ordinal))),
        [2; 1; 1]);
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
             (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
               Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
        [1; 1]);
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")])])])
);;

testi 3 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Extracting_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 4 (
smb_cpg_hdr 
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
  =
Item_formula_t.Cps_t.Heading_symbol
 ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")])
);;

testi 5 (
smb_cpg_sot_str
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
  =
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_t_datastructure_argument
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
           Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
        [1; 1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
               Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
        [1; 1]);
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "extracting"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")])))
);;

testi 6 (
ctt_cpg_str
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
      Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
   [1; 1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
          Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "aggregate")])
);;

testi 7 (
smb_cpg_sot_str
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
 =
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_t_datastructure_argument
      ctt_cpg_str ))
);;

testi 8 (
ctt_cpg_str
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
      Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
   [1; 1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
          Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
   [1; 1]);
  (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1])],
 [("item", "extracting"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "aggregate")])
);;

testi 9 (
smb_cpg_sot_ord
(* : Item_formula_t.Cps_t.caml_paragraph_symbol *)
 =
Item_formula_t.Cps_t.Functions_definitions_symbol
 (Item_formula_t.Cps_t.Function_argument_symbol
   (Item_formula_t.Cps_t.Function_s_off_t_t_datastructure_argument
      ctt_cpg_ord ))
);;

testi 10 (
frm_itm
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Tre_t.Inner (smb_cpg_hdr,
 [Item_formula_t.Tre_t.Leaf smb_cpg_sot_str; 
  Item_formula_t.Tre_t.Leaf smb_cpg_sot_ord;]) 
);;

testi 11 (
ctt_cpg_agg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
  =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")]);
);;

testi 12 (
ctt_cpg_dbt 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
  =
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
           Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")])
);;
 
testi 13 (
ctt_cpg_str
(* : Caml_paragraph_context_t.caml_paragraph_context *)
  =
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
       Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
    [1; 1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
           Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")])
);;

testi 14 (
ctt_cpg_ord 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
  =
 ([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_type_symbol
           Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Ordinal))),
    [2; 1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
           Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
    [1; 1]);
   (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
  [("item", "extracting"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")])
);;

testi 15 (
ctt_cpg_l = [ctt_cpg_agg; ctt_cpg_dbt; ctt_cpg_str; ctt_cpg_ord] 
);;

testi 16 (
smb_cpg_gs_l 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol list *)
=
[smb_cpg_sot_str; smb_cpg_sot_ord]
);;

testi 17 (
ctt_cpg_gs_l
=
[ctt_cpg_str; ctt_cpg_ord]
);;

testi 18 (
ecs_agg 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol
    "aggregate"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, 
 Entitycategorysuffix_t.Cfs_t.V)
);;

testi 19 (
ecs_dbt 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
  (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
    Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.V)
);;

testi 20 (
ecs_str 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
    Entitycategorysuffix_t.Ens_t.String),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.Empty)
);;

testi 21 (
ecs_str_b 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
ecs_str
);;

testi 22 (
smb_cli_str
(* : Caml_line_symbol_t.caml_line_symbol *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_s_off_t_t_argument_symbol ctt_cpg_str)
);;

testi 23 (
ecs_ord 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
  =
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
  (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_type_symbol
    Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.P)
);;

testi 24 (
ecs_ord_b 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
  =
ecs_ord
);;

testi 25 (
smb_cli_ord
(* : Caml_line_symbol_t.caml_line_symbol *)
=
Caml_line_symbol_t.Pair_symbol
 (Caml_line_symbol_t.Let_s_off_t_t_argument_symbol ctt_cpg_ord)
);;


testi 26 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_extracting_v.ml"
);;

testi 27 (
val_cli_str
=
"let string_off_aggregate_symbol smb_age ="
);;

let val_itm = Itv_v.make kyl_itm;;

testi 28 (
val_itm 
(* : Item_value_t.item_value *)
  =
Item_value_t.Tre_t.Inner (["(** {6 Extracting.} *)"],

 [Item_value_t.Tre_t.Leaf
   ["let string_off_aggregate_symbol smb_age =";
    "  Dbt_v.left_off_doublet smb_age"; 
    ";;"];

  Item_value_t.Tre_t.Leaf
   ["let ordinal_off_aggregate_symbol smb_age =";
    "  Dbt_v.right_off_doublet smb_age"; 
    ";;"]])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;



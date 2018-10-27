open Gentest_v;;

testing "Aggregate Symbol Type Typing Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_type_typing_item_value_v.ml";; 
 *)

let nam_cod = "taggregate_symbol_type_typing_item_value_v.ml";; 

module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpt_v = Constructor_path_tree_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cptf_v = Caml_paragraph_types_definitions_formula_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itvp_v = Item_value_provider_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t
module Tre_v = Tree_v

(* Extracting from aggregate *)

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let smb_itm = Its_v.typing;;
let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let smb_cnt = Cns_v.make smb_ent;; 
let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;

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
let ecs_str_b = Cpc_v.bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg_str;;

let ecs_ord = Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_ord;;
let ecs_ord_b = Cpc_v.bottom_entitycategorysuffix_off_caml_paragraph_context ctt_cpg_ord;;
let ecs_gs_l = Cpc_v.grandson_entitycategorysuffix_list_of_caml_paragraph_context ctt_cpg_agg;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg_agg;;
let frm_itm = Itf_v.retrieve kyl_itm;;

let smb_cpg_t = frm_itm;;
let smb_cpg_l = Tre_v.list_off_tree smb_cpg_t;;
let smb_cpg_hdr = List.nth smb_cpg_l 0;;
let smb_cpg_tdf = List.nth smb_cpg_l 1;;

let smb_cpg_gs_l = [smb_cpg_tdf];;
let ctt_cpg_gs_l = List.map Cps_v.caml_paragraph_context_off_caml_paragraph_symbol smb_cpg_gs_l;;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

let smb_cds = Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt;;

let smb_cli_l= Cptf_v.retrieve_datastructure_type_definition ctt_cpg_agg smb_cds;;


testi 0 ( 
kyl_itm 
(* : (string * string) list *)
=
[
 ("item", "typing"); ("codefile", "type"); ("category", "symbol");
 ("entity", "aggregate")
]
);;

testi 1 (
frm_itm 
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Tre_t.Inner
  (Cps_v.heading ctt_cpg_agg,
   [Item_formula_t.Tre_t.Leaf (Cps_v.type_definition ctt_cpg_agg)] )
);;

testi 2 (
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

testi 3 ( 
pth_cnt_t 
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag list Tree_t.tree *)
=
Constructor_path_tree_t.Tre_t.Inner
 ([(Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
       (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
         (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
           "aggregate"))),
    [1])],
 [Constructor_path_tree_t.Tre_t.Inner
   ([(Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
           (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
             Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
      [1; 1]);
     (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
   [Constructor_path_tree_t.Tre_t.Leaf
     [(Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_barebasic_symbol
          Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Ens_t.String),
       [1; 1; 1]);
      (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
            (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
              Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
       [1; 1]);
      (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
            (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
              "aggregate"))),
       [1])];
    Constructor_path_tree_t.Tre_t.Leaf
     [(Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
            (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_type_symbol
              Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Ordinal))),
       [2; 1; 1]);
      (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_external_symbol
            (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
              Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Exs_t.Doublet))),
       [1; 1]);
      (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
            (Constructor_path_tree_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
              "aggregate"))),
       [1])]])])
);;

testi 4 (
ecs_agg 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol
    "aggregate"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, 
 Entitycategorysuffix_t.Cfs_t.T)
);;

testi 5 (
ecs_dbt 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
  (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
    Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.T)
);;

testi 6 (
ecs_str 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
    Entitycategorysuffix_t.Ens_t.String),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.Empty)
);;

testi 7 (
ecs_ord 
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_type_symbol
      Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal),
 Entitycategorysuffix_t.Cts_t.Empty, 
 Entitycategorysuffix_t.Cfs_t.P)
);;

let val_itm = Itvp_v.provide kyl_itm;;

testi 8 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_typing_t.ml"
);;

testi 9 (
val_itm 
(* : Item_value_t.item_value *)
=
Item_value_t.Tre_t.Inner (["(** {6 Typing.} *)"],
    [Item_value_t.Tre_t.Leaf
       ["type aggregate_symbol =";
	"  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet"; 
	";;"]
   ])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;



open Gentest_v;;

testing "Aggregate Symbol Implementation Naming Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_implementation_naming_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)

let nam_cod = "taggregate_symbol_implementation_naming_item_value_v.ml";; 

module Aba_v = Abbreviation_argument_v
module Abm_v = Abbreviation_module_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cls_t = Caml_line_symbol_t
module Cls_v = Caml_line_symbol_v
module Clv_v = Caml_line_value_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cptp_v = Constructor_path_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cpfdf_v = Caml_paragraph_functions_definitions_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cpv_v = Caml_paragraph_value_v
module Csu_v = Codefile_suffix_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Kyl_v = Key_list_v
module Its_v = Item_symbol_v
module Idf_v = Item_datastructure_formula_v
module Itf_v = Item_formula_v
module Itv_v = Item_value_v
module Sco_v = Scope_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.naming;;

let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt_t = Cptp_v.provide smb_cnt;;
let pth_cnt = Tre_v.root_off_tree pth_cnt_t;; 

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg_r = Tre_v.root_off_tree ctt_cpg_t;;
let ctt_cpg_agg = ctt_cpg_r;; (* root *)
let ctt_cpg_s_l = Tre_v.topsonnode_list_off_tree ctt_cpg_t;;
let ctt_cpg_s = List.hd ctt_cpg_s_l;; 

let ecs_t = Cpc_v.entitycategorysuffix_tree_off_key_list kyl_itm;;
let ecs_as_l = Tre_v.anysonnode_list_off_tree ecs_t;;
let ecs_s = List.nth ecs_as_l 0;;
let ecs_a = List.nth ecs_as_l 1;;
let ecs_b = List.nth ecs_as_l 2;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg_r;;

let smb_cpg_t = Idf_v.retrieve_datastructure kyl_itm;;
let smb_cpg_l = Tre_v.list_off_tree smb_cpg_t;;
let smb_cpg_hdr = List.nth smb_cpg_l 0;;
let smb_cpg_fun = List.nth smb_cpg_l 1;;
let smb_cpg_s_l = [smb_cpg_fun];;

let smb_cli_l = Cpfdf_v.retrieve_function_name_function ctt_cpg_r;;
let val_cli_l = List.map Clv_v.make smb_cli_l;;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 (
ctt_cpg_r 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1])],
 [("item", "naming"); ("codefile", "implementation");
  ("category", "symbol"); ("entity", "aggregate")])
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
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Naming_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 3 (
smb_cpg_t 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol Tree_t.tree *)
=
Item_formula_t.Tre_t.Inner
 (Item_formula_t.Cps_t.Heading_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "naming"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Functions_definitions_symbol
     (Item_formula_t.Cps_t.Function_function_symbol
       (Item_formula_t.Cps_t.Function_name_function
         ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
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
          [("item", "naming"); ("codefile", "implementation");
           ("category", "symbol"); ("entity", "aggregate")]))))])
);;

testi 9 (
smb_cli_l 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
[Caml_paragraph_formula_t.Cls_t.Constant_symbol
  Caml_paragraph_formula_t.Cls_t.Let_name_eq_function_symbol;

 Caml_paragraph_formula_t.Cls_t.Singlet_symbol
  (Caml_paragraph_formula_t.Cls_t.Pipe_datastructure_s_arrow_symbol
    (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Entity_external_symbol
      (Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
        Caml_paragraph_formula_t.Cls_t.Ecs_t.Ens_t.Exs_t.Doublet),
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cts_t.Empty,
     Caml_paragraph_formula_t.Cls_t.Ecs_t.Cfs_t.V));

 Caml_paragraph_formula_t.Cls_t.Datastructure_symbol
  (Caml_paragraph_formula_t.Cls_t.Doublet_name_s_a_b_symbol
    ([(Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
        (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
          (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
            (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
              "aggregate"))),
       [1])],
     [("item", "naming"); ("codefile", "implementation");
      ("category", "symbol"); ("entity", "aggregate")]));
 Caml_paragraph_formula_t.Cls_t.Constant_symbol
  Caml_paragraph_formula_t.Cls_t.Double_semicolon_symbol]
);;

testi 4 (
ecs_s
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
     Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.V)
);;

testi 5 (
ecs_a
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
 (Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
     Entitycategorysuffix_t.Ens_t.String),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.Empty);
);;

testi 6 (
ecs_b
(* : Entitycategorysuffix_t.entitycategorysuffix *)
=
 (Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_type_symbol
     Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.P)
);;

testi 7 (
ecs_as_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[ecs_s; ecs_a; ecs_b]
);;

testi 8 (
ctt_cpg_s
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
 [("item", "naming"); ("codefile", "implementation"); ("category", "symbol");
  ("entity", "aggregate")])
);;

testi 10 ( 
val_cli_l 
(* : Caml_line_value_t.caml_line_value list *)
=
  ["let name = function"; 
   "  | Doublet _dbt ->";
   "  Dbt_v.name (Format.sprintf \"%s\") Ord_p.name smb_age"; 
   ";;"]
);;

testi 11 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_naming_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 12 (
val_itm 
(* : Item_value_t.item_value *)
  =
Item_value_t.Tre_t.Inner (["(** {6 Naming.} *)"],
   [Item_value_t.Tre_t.Leaf
     ["let name smb_age =";
      "  Dbt_v.name (Format.sprintf \"%s\") Ord_p.name smb_age"; 
      ";;"]])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;



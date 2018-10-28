open Gentest_v;;

testing "Aggregate Symbol Implementation Printing Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_implementation_printing_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)

let nam_cod = "taggregate_symbol_implementation_printing_item_value_v.ml";; 

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
let smb_itm = Its_v.printing;;

let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cnt_dst = Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t;;
let ctt_cpg_l = Tre_v.list_off_tree ctt_cpg_t;;
let ctt_cpg_agg = List.nth ctt_cpg_l 0;;
let ctt_cpg_dbt = List.nth ctt_cpg_l 1;;
let ctt_cpg_str = List.nth ctt_cpg_l 2;;
let ctt_cpg_ord = List.nth ctt_cpg_l 3;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

let smb_cpg_t =  frm_itm;;
let smb_cpg_l = Tre_v.list_off_tree smb_cpg_t;;
let smb_cpg_hdr = List.nth smb_cpg_l 0;;
let smb_cpg_nam = List.nth smb_cpg_l 1;;
let smb_cpg_gs_l =  [smb_cpg_nam;];;
let ctt_cpg_gs_l = List.map Cps_v.caml_paragraph_context_off_caml_paragraph_symbol smb_cpg_gs_l;;
let ecc_gs_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cpg_gs_l;;
let ecs_gs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cpg_gs_l;;

let smb_cli_l = Cpfdf_v.retrieve_function_print_argument ctt_cpg;;
let smb_cli_teq = List.nth smb_cli_l 0;;
let smb_cli_abt = List.nth smb_cli_l 1;;

let val_cli_teq = Clv_v.make  smb_cli_teq;;
let val_cli_abt = Clv_v.make  smb_cli_abt;;

testi 0 (
ctt_cpg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "aggregate"))),
   [1])],
 [("item", "printing"); ("codefile", "implementation");
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
ctt_cpg_t 
=
Tree_t.Node
 (([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
          (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
            "aggregate"))),
     [1])],
   [("item", "printing"); ("codefile", "implementation");
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
     [("item", "printing"); ("codefile", "implementation");
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
      [("item", "printing"); ("codefile", "implementation");
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
      [("item", "printing"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")])])])
);;

testi 3 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Printing_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 4 (
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
    [("item", "printing"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Functions_definitions_symbol
     (Item_formula_t.Cps_t.Function_argument_symbol
       (Item_formula_t.Cps_t.Function_print_argument
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
          [("item", "printing"); ("codefile", "implementation");
           ("category", "symbol"); ("entity", "aggregate")]))))])
);;

testi 5 (
ecc_gs_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
   (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
      Entitycategorycodefile_t.Ens_t.Exs_t.Doublet),
  Entitycategorycodefile_t.Cts_t.Empty,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 6 (
ecs_gs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
    (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
       Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
  Entitycategorysuffix_t.Cts_t.Empty, 
  Entitycategorysuffix_t.Cfs_t.V)]
);;

testi 7 (
frm_itm
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Tre_t.Inner
 (Item_formula_t.Cps_t.Heading_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "printing"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Functions_definitions_symbol
     (Item_formula_t.Cps_t.Function_argument_symbol
       (Item_formula_t.Cps_t.Function_print_argument
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
          [("item", "printing"); ("codefile", "implementation");
           ("category", "symbol"); ("entity", "aggregate")]))))])
);;

testi 8 ( 
smb_cli_teq 
(* : Caml_paragraph_formula_t.Cls_t.caml_line_symbol *)
=
  Caml_paragraph_formula_t.Cls_t.Singlet_symbol
   (Caml_paragraph_formula_t.Cls_t.Let_print_t_eq_symbol
     ([(Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "printing"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")]))
);;

testi 9 ( 
smb_cli_abt 
(* : Caml_paragraph_formula_t.Cls_t.caml_line_symbol *)
=
  Caml_paragraph_formula_t.Cls_t.Datastructure_symbol
   (Caml_paragraph_formula_t.Cls_t.Doublet_print_s_a_b_symbol
     ([(Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
             (Caml_paragraph_formula_t.Cls_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
               "aggregate"))),
        [1])],
      [("item", "printing"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")]))
);;

testi 10 (
smb_cli_l 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
[smb_cli_teq; smb_cli_abt; Cls_v.double_semicolon ()]
);;

testi 11 ( 
val_cli_teq 
=
"let print ppf smb_age ="
);;

testi 12 ( 
val_cli_abt 
=
"  Dbt_v.print (Format.fprintf ppf \"%s\") Ord_p.print ppf smb_age"
);;

testi 13 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_printing_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 14 (
val_itm 
(* : Item_value_t.item_value *)
  =
 Item_value_t.Tre_t.Inner (["(** {6 Printing.} *)"],
   [Item_value_t.Tre_t.Leaf
     ["let print ppf smb_age =";
      "  Dbt_v.print (Format.fprintf ppf \"%s\") Ord_p.print ppf smb_age";
      ";;"]])
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


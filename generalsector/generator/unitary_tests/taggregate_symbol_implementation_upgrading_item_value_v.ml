open Gentest_v;;

testing "Aggregate Symbol Implementation Upgrading Item_value_v";;

(* toplevel 
   #use "taggregate_symbol_implementation_upgrading_item_value_v.ml";; 
 *)

(** smb_cpg is hinted from ctt_cpg through the tag
    1 -> heading
    2 -> function
*)
let nam_cod = "taggregate_symbol_implementation_upgrading_item_value_v.ml";; 

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
module Cps_v = Caml_paragraph_symbol_v
module Cptf_v = Caml_paragraph_types_definitions_formula_v
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
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.upgrading;;

let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cnt_dst = Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt;;
let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg_t = Cpc_v.caml_paragraph_context_tree_of_constructor_tag_tree_of_item_key_list mrk_cnt_t kyl_itm;;
let ctt_cpg = Tre_v.root_off_tree ctt_cpg_t;;

let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let smb_cpg_agg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg_agg = Cps_v.name smb_cpg_agg;;

let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let smb_cns_l = Cpc_v.son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg;;
let smb_ens_l = List.map Cns_v.entity_symbol_off_constructor_symbol smb_cns_l;;
let ecc_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cps_l;;
let ecs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cps_l;;

let frm_itm = Itf_v.retrieve kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

let smb_cpg_t = Itf_v.retrieve_upgrading_datastructure mrk_cnt_t kyl_itm ;;

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
 [("item", "upgrading"); ("codefile", "implementation");
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
   [("item", "upgrading"); ("codefile", "implementation");
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
     [("item", "upgrading"); ("codefile", "implementation");
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
      [("item", "upgrading"); ("codefile", "implementation");
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
      [("item", "upgrading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "aggregate")])])])
);;

testi 3 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Upgrading_symbol, 
 Codefile_symbol_t.Implementation_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 4 (
smb_cpg_t 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol Tree_t.tree *)
=
Tree_t.Node
 (Caml_paragraph_symbol_t.Heading_symbol
   ([(Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Caml_paragraph_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [])
);;

testi 5 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_external_symbol
  (Entity_symbol_t.Exs_t.Entity_external_datastructure_symbol
    Entity_symbol_t.Exs_t.Doublet)]
);;

testi 6 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_datastructure_symbol
        Constructor_symbol_t.Exs_t.Doublet)))]
);;

testi 7 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
  =
[([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
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
  [("item", "upgrading"); ("codefile", "implementation");
   ("category", "symbol"); ("entity", "aggregate")])]
);;

testi 8 (
ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_external_symbol
   (Entitycategorycodefile_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
     Entitycategorycodefile_t.Ens_t.Exs_t.Doublet),
  Entitycategorycodefile_t.Cts_t.Empty,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 9 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   (Entitycategorysuffix_t.Ens_t.Exs_t.Entity_external_datastructure_symbol
     Entitycategorysuffix_t.Ens_t.Exs_t.Doublet),
  Entitycategorysuffix_t.Cts_t.Empty, Entitycategorysuffix_t.Cfs_t.V)]
);;

testi 10 (
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
    [("item", "upgrading"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "aggregate")]),
 [])
);;

testi 11 (
nam_fil_itm
(* : string *)
= 
"aggregate_symbol_upgrading_v.ml"
);;

let val_itm = Itv_v.make kyl_itm;;

testi 12 (
val_itm 
(* : Item_value_t.item_value *)
  =
Item_value_t.Tre_t.Inner (["(** {6 Upgrading.} *)"], [])

);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;



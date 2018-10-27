open Gentest_v;;

testing "Polyproline Symbol Type Typing Caml_paragraph_value_v";;

(* toplevel 
   #use "tpolyproline_symbol_type_typing_caml_paragraph_value_v.ml";; 
 *)

let nam_cod = "tpolyproline_symbol_type_typing_caml_paragraph_value_v.ml";; 

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
module Sco_v = Scope_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "polyproline";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;
let smb_itm = Its_v.typing;;

let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg = Cpc_v.make pth_cnt kyl_itm;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg = Cps_v.name smb_cpg;;
let frm_cpg = Cpf_v.retrieve smb_cpg;;
let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let smb_cns_l = Cpc_v.son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg;;
let smb_ens_l = List.map Cns_v.entity_symbol_off_constructor_symbol smb_cns_l;;
let ecc_l = List.map Cpc_v.entitycategorycodefile_off_caml_paragraph_context ctt_cps_l;;
let ecs_l = List.map Cpc_v.entitycategorysuffix_off_caml_paragraph_context ctt_cps_l;;

let smb_cds = Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt;;

let nam_fil_cpg = Cpv_v.caml_paragraph_file_name_of_caml_paragraph_symbol smb_cpg;;

testi 0 (
smb_cpg 
(* : Caml_paragraph_symbol_t.caml_paragraph_symbol *)
=
Cps_v.type_definition ctt_cpg
);;

testi 1 (
 trp_imc 
(* : (Item_symbol_t.item_symbol, Codefile_symbol_t.codefile_symbol,
   Category_symbol_t.category_symbol)
  Triplet_t.triplet *)
=
(Item_symbol_t.Typing_symbol, 
 Codefile_symbol_t.Type_symbol,
 Category_symbol_t.Symbol_symbol)
);;

testi 2 (
ctt_cpg 
(* : Caml_paragraph_context_t.caml_paragraph_context *)
=
([(Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
      (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
        (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
          "polyproline"))),
   [1])],
 [("item", "typing"); ("codefile", "type"); ("category", "symbol");
  ("entity", "polyproline")])
);;

testi 3 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_fictive_symbol
   (Constructor_symbol_t.Constructor_barebasic_symbol
      Constructor_symbol_t.Ens_t.String);

 Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_oneline_symbol
      (Constructor_symbol_t.Constructor_external_symbol
         Constructor_symbol_t.Exs_t.Ordinal))]
);;

testi 4 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_symbol_t.Entity_barebasic_symbol Entity_symbol_t.String);
 Entity_symbol_t.Entity_external_symbol Entity_symbol_t.Exs_t.Ordinal]
);;

testi 5 (
ctt_cps_l 
(* : Caml_paragraph_context_t.caml_paragraph_context list *)
  =
[([(Cns_v.constructor_symbol_of_entityname "string", [1; 1]);
   ((Cns_v.constructor_symbol_of_entityname "polyproline"), [1])],
  kyl_itm);
 ([((Cns_v.constructor_symbol_of_entityname "ordinal"), [1; 1]);
   ((Cns_v.constructor_symbol_of_entityname "polyproline"), [1])],
  kyl_itm);
]
);;

testi 6 (
 ecc_l 
(* : Entitycategorycodefile_t.entitycategorycodefile list *)
 =
[(Entitycategorycodefile_t.Ens_t.Entity_fictive_symbol
   (Entitycategorycodefile_t.Ens_t.Entity_barebasic_symbol
     Entitycategorycodefile_t.Ens_t.String),
  Entitycategorycodefile_t.Cts_t.Empty,
  Entitycategorycodefile_t.Cfs_t.Empty);

 (Entitycategorycodefile_t.Ens_t.Entity_external_symbol
   Entitycategorycodefile_t.Ens_t.Exs_t.Ordinal,
  Entitycategorycodefile_t.Cts_t.Empty,
  Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]
);;

testi 7 (
ecs_l 
(* : Entitycategorysuffix_t.entitycategorysuffix list *)
=
[(Entitycategorysuffix_t.Ens_t.Entity_fictive_symbol
   (Entitycategorysuffix_t.Ens_t.Entity_barebasic_symbol
     Entitycategorysuffix_t.Ens_t.String),
  Entitycategorysuffix_t.Cts_t.Empty, 
  Entitycategorysuffix_t.Cfs_t.Empty);

 (Entitycategorysuffix_t.Ens_t.Entity_external_symbol
   Entitycategorysuffix_t.Ens_t.Exs_t.Ordinal,
  Entitycategorysuffix_t.Cts_t.Empty, 
  Entitycategorysuffix_t.Cfs_t.P)]
);;

testi 8 (
frm_cpg 
(* : Caml_paragraph_formula_t.caml_paragraph_formula *)
=
[Cls_v.type_definition ctt_cpg;

 Caml_paragraph_formula_t.Cls_t.Datastructure_symbol
  (Caml_paragraph_formula_t.Cls_t.Type_pipe_doublet_a_b_symbol ctt_cps_l);
 Cls_v.double_semicolon ();
]
);;

testi 9 (
val_cpg
(* : Caml_paragraph_value_t.caml_paragraph_value *)
=
["type polyproline_symbol =";
 "  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet";
";;"]
);;

let val_cpg = Cpv_v.make smb_cpg;;

testi 10 (
nam_fil_cpg
(* : string *)
= 
"polyproline_symbol_typing_type_definition_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cpg;; 
Cpv_v.write oc val_cpg;;
close_out oc;


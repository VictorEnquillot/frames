open Gentest_v;;

testing "Polypeptide Constructor_symbol_v";;

(* toplevel 
   #use "tpolypeptide_constructor_symbol_v.ml";; 
 *)

let nam_cod = "tpolypeptide_constructor_symbol_v.ml";; 

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
module Sco_v = Scope_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v
module Scp_v = Scope_provider_v

let nam_ent = "polypeptide";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;
let smb_itm = Its_v.typing;;

let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cnt = Tre_v.root_off_tree mrk_cnt_t;; 
let pth_cnt = [mrk_cnt];;

let ctt_cpg = Cpc_v.make pth_cnt kyl_itm;;
let trp_imc = Cpc_v.symboltriplet_off_caml_paragraph_context ctt_cpg;;

let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;
let nam_cpg = Cps_v.name smb_cpg;;

let ctt_cps_l = Cpc_v.son_caml_paragraph_context_list_off_caml_paragraph_context ctt_cpg;;
let smb_cns_l = Cpc_v.son_constructor_symbol_list_off_caml_paragraph_context ctt_cpg;;
let smb_cnt_ppn = List.nth smb_cns_l 1;;
let smb_cnt_pgn = List.nth smb_cns_l 2;;

let smb_ent_pgn = Cns_v.entity_symbol_off_constructor_symbol smb_cnt_pgn;;
let smb_ent_ppn = Cns_v.entity_symbol_off_constructor_symbol smb_cnt_ppn;;

let smb_ens_l = List.map Cns_v.entity_symbol_off_constructor_symbol smb_cns_l;;

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
    (Caml_paragraph_context_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
      "polypeptide"),
   [1])],
 [("item", "typing"); ("codefile", "type"); ("category", "symbol");
  ("entity", "polypeptide")])
);;

testi 3 (
smb_cns_l
(* : Constructor_symbol_t.constructor_symbol list *)
  =
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_several_symbol "polypeptide_regular");
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_proper_datastructure_symbol
      (Constructor_symbol_t.Constructor_proper_doublet_symbol "polyproline")));
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_proper_datastructure_symbol
      (Constructor_symbol_t.Constructor_proper_doublet_symbol "polyglycine")))]
);;

testi 4 (
smb_ent_ppn 
(* : Entity_symbol_t.entity_symbol *)
 =
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_proper_datastructure_symbol "polyproline")
);;

testi 5 (
smb_ent_ppn 
=
Ens_v.make "polyproline"
);;

testi 6 (
smb_ent_pgn 
(* : Entity_symbol_t.entity_symbol *)
 =
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_proper_datastructure_symbol "polyglycine")
);;

testi 7 (
smb_ent_pgn 
=
Ens_v.make "polyglycine"
);;

testi 8 (
smb_ens_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_local_symbol "polypeptide_regular");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper_datastructure_symbol "polyproline");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper_datastructure_symbol "polyglycine")]
);;


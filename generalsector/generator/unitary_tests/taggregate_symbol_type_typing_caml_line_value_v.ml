open Gentest_v;;

testing "Aggregate Symbol Type_definition Caml_line_value_v";;

(* toplevel 
   #use "taggregate_symbol_type_typing_caml_line_value_v.ml";; 
 *)

module Clv_v = Caml_line_value_v
module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let smb_enr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let val_tgt = Tgv_v.make smb_enr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_itm = Its_v.typing;;
let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;
let frm_itm = Itf_v.retrieve kyl_itm;;

let smb_cpg = Cps_v.type_definition;;
let kyl_cpg = ("caml_paragraph", "type_definition") :: kyl_itm;;

let smb_cnt = Cns_v.make smb_ent;;
let mrk_cnt = Cnm_v.make smb_cnt [1];;

let pth_cnt_t = Itf_v.constructor_path_tree_off_item_formula frm_itm;;
let pth_cnt_l = Tre_v.list_off_tree pth_cnt_t;;
let pth_cnt_cpg = [(List.hd (List.nth pth_cnt_l 1))] ;;

let ctt_cpg = Cpc_v.make pth_cnt_cpg kyl_itm;;
let smb_cpg = Cps_v.bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context ctt_cpg;;

let smb_cli_pss = Cls_v.type_pipe_s_of_s_dot_s ctt_cpg;;
let val_cli_pss = Clv_v.make smb_cli_pss;;

let smb_cli_tdf = Cls_v.type_definition ctt_cpg;;
let val_cli_tdf = Clv_v.make smb_cli_tdf;;

testi 0 (
pth_cnt_cpg 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt]
);;

testi 1 (
Cpc_v.top_entitycategorycodefile_off_caml_paragraph_context ctt_cpg
(* : Entitycategorycodefile_t.entitycategorycodefile *)
 =
(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 2 (
Cpc_v.top_entitycategorysuffix_off_caml_paragraph_context ctt_cpg
(* : Entitycategorysuffix_t.entitycategorysuffix *)
 =
(Entitycategorysuffix_t.Ens_t.Entity_proper_symbol
  (Entitycategorysuffix_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
 Entitycategorysuffix_t.Cts_t.Symbol_symbol, Entitycategorysuffix_t.Cfs_t.T)
);;

testi 3 (
smb_cli_pss
(* : Caml_line_symbol_t.caml_line_symbol *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.Type_pipe_s_of_s_dot_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "typing"); ("codefile", "type"); ("category", "symbol");
     ("entity", "aggregate")]))
);;

testi 4 (
val_cli_pss
(* : Caml_line_value_t.caml_line_value *)
= 
""
);;

testi 5 (
smb_cli_tdf
(* : Caml_line_symbol_t.caml_line_symbol *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.Type_definition_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
         (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_datastructure_symbol
           (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_doublet_symbol
             "aggregate"))),
      [1])],
    [("item", "typing"); ("codefile", "type"); ("category", "symbol");
     ("entity", "aggregate")]))
);;

testi 6 (
val_cli_tdf
(* : Caml_line_value_t.caml_line_value *)
= 
"type aggregate_symbol ="
);;


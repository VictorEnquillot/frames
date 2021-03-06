open Gentest_v;;

testing "Atom Symbol Type_definition Caml_line_value_v";;

(* toplevel 
   #use "tatom_symbol_type_typing_type_definition_caml_line_value_v.ml";; 
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

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

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

testi 0 (
pth_cnt_cpg 
(* : Constructor_path_t.constructor_path *)
=
[mrk_cnt]
);;

testi 1 (
smb_cli_pss
(* : Caml_line_symbol_t.caml_line_symbol *)
=
Caml_line_symbol_t.Singlet_symbol
 (Caml_line_symbol_t.Type_pipe_s_of_s_dot_s_symbol
   ([(Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Caml_line_symbol_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "typing"); ("codefile", "type"); ("category", "symbol");
     ("entity", "atom")]))
);;

testi 2 (
val_cli_pss
(* : Caml_line_value_t.caml_line_value *)
= 
""
);;

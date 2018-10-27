open Gentest_v;;

testing "Aggregate Symbol Type Codefile_value_v";;

(* toplevel 
   #use "taggregate_symbol_type_codefile_value_v.ml";; 
 *)

let nam_cod = "taggregate_symbol_type_codefile_value_v.ml";; 

module Cff_v = Codefile_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Cfv_v = Codefile_value_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpt_v = Constructor_path_tree_v
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itvp_v = Item_value_provider_v
module Lst_v = List_v
module Tre_v = Tree_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;; 
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_type;;

let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat);;
let kyl_cfi = [("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let pth_cnt_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;
let pth_cnt_l = Tre_v.list_off_tree pth_cnt_t;;

let nam_fil_cfi = Cfv_v.codefile_file_name_of_key_list kyl_cfi;;
let val_cfi = Cfv_v.make kyl_cfi;;
let val_cli_l = Cfv_v.caml_line_value_list_off_codefile_value val_cfi;;

testi 0 (
frm_cfi
(* Item_symbol_t.item_symbol list *) 
= 
[Its_v.heading;
 Its_v.modules;
 Its_v.typing;
 Its_v.ending]
);;

testi 1 (
Lst_v.drop_last_elements_of_int_of_list 2 val_cli_l 
(* : Caml_line_value_t.caml_line_value list *) =
["(** {3 A Symbol for a Aggregate.} *)"; 
 "(** {6 Modules.} *)";
 "module Ord_p = Ordinal_p"; 
 "module Dbt_t = Doublet_t";
 "(** {6 Typing.} *)"; 
 "type aggregate_symbol =";
 "  | Doublet of (string, Ord_p.ordinal) Dbt_t.doublet"; 
 ";;"]
);;

testi 2 (
nam_fil_cfi
(* : string *)
= 
"aggregate_symbol_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_cfi;; 
Cfv_v.write oc val_cfi;;
close_out oc;


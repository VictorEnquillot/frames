open Gentest_v;;

testing "Atom Symbol Implenetation Naming Item_value_v";;

(* toplevel 
   #use "tatom_symbol_implementation_naming_item_value_v.ml";; 
 *)

module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.naming;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itv_v.make kyl_itm;;

testi 0 (
frm_itm 
(* : Item_formula_t.item_formula *)
= 
Item_formula_t.Tre_t.Leaf
  (Item_formula_t.Cps_t.Functions_definitions_symbol
     (Item_formula_t.Cps_t.Function_function_symbol
	(Item_formula_t.Cps_t.Function_name_function
           ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
		"atom"),
              [1])],
            [("item", "naming"); ("codefile", "implementation");
             ("category", "symbol"); ("entity", "atom")]))))
);;

testi 1 (
val_itm 
(* : Item_value_t.item_value *)
=
  Item_value_t.Tre_t.Leaf
   ["let name = function"; 
    "  | Ats_v smb_at0 ->";
    "      A0s_v.name smb_at0";
    "  | Ats_v smb_at1 ->";
    "      A1s_v.name smb_at1"; 
    "  | Ats_v smb_at2 ->";
    "      A2s_v.name smb_at2";
    "  | Ats_v smb_at3 ->";
    "      A3s_v.name smb_at3";
    "  | Ats_v smb_at4 ->";
    "      A4s_v.name smb_at4"; 
    "  | Ats_v smb_at5 ->";
    "      A5s_v.name smb_at5"; 
    "  | Ats_v smb_at6 ->";
    "      A6s_v.name smb_at6";
    ";;"]
);;

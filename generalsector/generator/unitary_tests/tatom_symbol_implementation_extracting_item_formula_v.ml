open Gentest_v;;

testing "Atom Extracting Item_formula_v";;

(* toplevel 
   #use "tatom_extracting_item_formula_v.ml";; 
 *)

module Cns_t = Constructor_symbol_t
module Cts_v = Category_symbol_v
module Cps_t = Caml_paragraph_symbol_t
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Itv_v = Item_value_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v

module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t

let nam_ent = "atom";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itv_v.make kyl_itm;;

testi 0 (
val_itm
(* : Item_formula_t.item_formula *)
  =

);;


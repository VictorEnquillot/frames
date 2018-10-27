open Gentest_v;;

testing "Atom_onetied Implementation Extracting Item_value_v";;

(* toplevel 
   #use "tatom_onetied_symbol_implementation_extracting_item_value_v.ml";; 
 *)

let nam_cod = "tatom_onetied_symbol_implementation_extracting_item_value_v.ml";;

module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cps_t = Caml_paragraph_symbol_t
module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Cpt_v = Constructor_path_tree_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_t = Tree_t
module Tre_v = Tree_v

(* Extracting from atom_onetied *)

let nam_ent = "atom_onetied";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi ;;
Tgp_v.store_force "current" val_tgt;; 

let smb_cfi = Cfs_t.Implementation_symbol;;
let smb_itm = Its_v.extracting;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;
let mrk_cnt_t = Cmtp_v.provide smb_cnt;;

let pth_cnl_t = Cpt_v.constructor_path_tree_of_constructor_tag_tree mrk_cnt_t;;

let val_itm = Itv_v.make kyl_itm;;
let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;

testi 0 ( 
kyl_itm 
= 
[("item", "extracting"); ("codefile", "implementation");
 ("category", "symbol"); ("entity", "atom_onetied")]
);;

testi 1 (
nam_fil_itm
(* : string *)
= 
"atom_onetied_symbol_extracting_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


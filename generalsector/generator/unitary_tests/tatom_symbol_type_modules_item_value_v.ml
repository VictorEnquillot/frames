open Gentest_v;;

testing "Atom Symbol Type Modules Item_value_v";;

(* toplevel 
   #use "tatom_symbol_type_modules_item_value_v.ml";; 
 *)

let nam_cod = "tatom_symbol_type_modules_item_value_v.ml";; 
 
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Itp_v = Item_value_provider_v
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
let smb_cfi = Cfs_v.codefile_type;;
let smb_itm = Its_v.modules;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let mrk_cnt_t = Cmtp_v.provide smb_cnt;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;
let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itp_v.provide kyl_itm;;

testi 0 (
frm_itm 
(* : Item_formula_t.item_formula *)
= 
Item_formula_t.Tre_t.Inner
 (Item_formula_t.Cps_t.Heading_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom"),
      [1])],
    [("item", "modules"); ("codefile", "type"); ("category", "symbol");
     ("entity", "atom")]),
 [Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Modules_definitions_symbol
     (Item_formula_t.Cps_t.Modules_type_definitions_symbol
       (Item_formula_t.Cps_t.Modules_type_local_definitions_symbol
         ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
               "atom"),
            [1])],
          [("item", "modules"); ("codefile", "type"); ("category", "symbol");
           ("entity", "atom")]))));
  Item_formula_t.Tre_t.Leaf
   (Item_formula_t.Cps_t.Modules_definitions_symbol
     (Item_formula_t.Cps_t.Modules_type_definitions_symbol
       (Item_formula_t.Cps_t.Modules_type_external_definitions_symbol
         ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
               "atom"),
            [1])],
          [("item", "modules"); ("codefile", "type"); ("category", "symbol");
           ("entity", "atom")]))))])
);;

testi 1 (
val_itm 
(* : Item_value_t.item_value *)
=
Item_value_t.Tre_t.Inner (["(** {6 Modules.} *)"],
 [Item_value_t.Tre_t.Leaf
   ["module A6s_t = Atom_sixtied_symbol_t";
    "module A5s_t = Atom_fivetied_symbol_t";
    "module A4s_t = Atom_fourtied_symbol_t";
    "module A3s_t = Atom_threetied_symbol_t";
    "module A2s_t = Atom_twotied_symbol_t";
    "module A1s_t = Atom_onetied_symbol_t";
    "module A0s_t = Atom_zerotied_symbol_t"];
  Item_value_t.Tre_t.Leaf []])
);;

testi 2 (
nam_fil_itm
(* : string *)
= 
"atom_symbol_modules_t.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;

Format.fprintf Format.str_formatter "create file %s" nam_fil_itm;
Format.flush_str_formatter ();;




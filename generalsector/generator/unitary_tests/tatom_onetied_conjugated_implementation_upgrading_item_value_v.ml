open Gentest_v;;

testing "Atom_onetied_conjugated Implementation Upgrading Item_value_v";;

(* toplevel 
   #use "tatom_onetied_conjugated_implementation_upgrading_item_value_v.ml";; 
 *)

let nam_cod = "tatom_onetied_conjugated_implementation_upgrading_item_value_v.ml";;

module Cls_v = Caml_line_symbol_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cnm_v = Constructor_tag_v
module Cns_v = Constructor_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Fio_v = Fileio_v
module Itf_v = Item_formula_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgp_v = Target_value_provider_v
module Tgv_v = Target_value_v
module Tre_v = Tree_v

let nam_ent = "atom_onetied_conjugated";;
let smb_ent = Ens_v.make nam_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.upgrading;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let nam_fil_itm = Itv_v.item_file_name_of_key_list kyl_itm;;
let frm_itm = Itf_v.retrieve kyl_itm;;
let val_itm = Itv_v.make kyl_itm;;

testi 0 (
frm_itm 
(* : Item_formula_t.item_formula *)
=
  Item_formula_t.Tre_t.Inner
   (Item_formula_t.Cps_t.Heading_symbol
     ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
         (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
             "atom_onetied_conjugated")),
        [1])],
      [("item", "upgrading"); ("codefile", "implementation");
       ("category", "symbol"); ("entity", "atom_onetied_conjugated")]),
   [Item_formula_t.Tre_t.Leaf
     (Item_formula_t.Cps_t.Functions_definitions_symbol
       (Item_formula_t.Cps_t.Function_constant_symbol
         ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_fictive_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_bare_symbol
               "o_c"),
            [1; 1]);
           (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
             (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_oneline_symbol
               (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_nodeoneline_symbol
                 "atom_onetied_conjugated")),
            [1])],
          [("item", "upgrading"); ("codefile", "implementation");
           ("category", "symbol"); ("entity", "atom_onetied_conjugated")])))])
);;

testi 1 (
val_itm 
(* : Item_value_t.item_value *)
=
  Item_value_t.Tre_t.Inner (["(** {6 Upgrading.} *)"],
   [Item_value_t.Tre_t.Leaf
     ["let o_c = atom_onetied_conjugated_symbol_of_atom_onetied_conjugated_symbol A1cs_v.O_c;;"]])
);;

testi 2 (
nam_fil_itm
(* : string *)
= 
"atom_onetied_conjugated_symbol_upgrading_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


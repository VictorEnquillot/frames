open Gentest_v;;

testing "Atom_onetied_single Implementation Extracting Item_value_v";;

(* toplevel 
   #use "tatom_onetied_single_symbol_implementation_extracting_item_value_v.ml";; 
 *)

let nam_cod = "tatom_onetied_single_symbol_implementation_extracting_item_value_v.ml";;

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

(* Extracting from atom_onetied_single *)

let nam_ent = "atom_onetied_single";;
let smb_ent = Ens_v.make nam_ent;;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.make nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;

let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_t.Type_symbol;;

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
 ("category", "symbol"); ("entity", "atom_onetied_single")]
);;

testi 1 (
frm_itm 
(* : Item_formula_t.item_formula *)
=
Item_formula_t.Tre_t.Leaf
 (Item_formula_t.Cps_t.Heading_symbol
   ([(Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_proper_symbol
       (Item_formula_t.Cps_t.Cpc_t.Cnp_t.Cnm_t.Cns_t.Constructor_several_symbol
         "atom_onetied_single"),
      [1])],
    [("item", "extracting"); ("codefile", "implementation");
     ("category", "symbol"); ("entity", "atom_onetied_single")]))
);;

testi 2 (
mrk_cnt_t
(* : Cmtp_v.Csdt_t.constructor_tag_tree *)
=
Cmtp_v.Csdt_t.Tre_t.Inner
 ((Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
    (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
      "atom_onetied_single"),
   [1]),
 [Cmtp_v.Csdt_t.Tre_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "h_s"),
    [1; 1]);
  Cmtp_v.Csdt_t.Tre_t.Leaf
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_fictive_symbol
     (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_bare_symbol "f_s"),
    [1; 1])])
);;

testi 3 ( 
pth_cnl_t 
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag list Tree_t.tree *)
=
Tree_t.Node
 ([(Constructor_path_t.Cnm_t.Cns_t.Constructor_proper_symbol
     (Constructor_path_t.Cnm_t.Cns_t.Constructor_several_symbol
       "atom_onetied_single"),
    [1])],
 [Tree_t.Leaf
   [(Constructor_path_t.Cnm_t.Cns_t.Constructor_fictive_symbol
      (Constructor_path_t.Cnm_t.Cns_t.Constructor_bare_symbol "h_s"),
     [1; 1]);
    (Constructor_path_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Constructor_path_t.Cnm_t.Cns_t.Constructor_several_symbol
        "atom_onetied_single"),
     [1])];
  Tree_t.Leaf
   [(Constructor_path_t.Cnm_t.Cns_t.Constructor_fictive_symbol
      (Constructor_path_t.Cnm_t.Cns_t.Constructor_bare_symbol "f_s"),
     [1; 1]);
    (Constructor_path_t.Cnm_t.Cns_t.Constructor_proper_symbol
      (Constructor_path_t.Cnm_t.Cns_t.Constructor_several_symbol
        "atom_onetied_single"),
     [1])]])
);;

testi 4 (
nam_fil_itm
(* : string *)
= 
"atom_onetied_single_symbol_extracting_v.ml"
);;

let oc = Fio_v.open_write_of_string_of_string_of_file_name nam_cod "oc" nam_fil_itm;; 
Itv_v.write oc val_itm;;
close_out oc;


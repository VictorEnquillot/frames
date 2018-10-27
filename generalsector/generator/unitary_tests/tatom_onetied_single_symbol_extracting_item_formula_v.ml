open Gentest_v;;

testing "Atom_onetied_single Extracting Item_formula_v";;

(* toplevel 
   #use "tatom_onetied_single_extracting_item_formula_v.ml";; 
 *)

module Cstp_v = Constructor_symbol_tree_provider_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module End_v = Entity_data_v
module Ens_v = Entity_symbol_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom_onetied_single";;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.entity_symbol_of_entity_proper_symbol smb_epr;;
let smb_cnt = Cns_v.make smb_ent;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let str_t = End_v.string_tree_of_entityname nam_ent;;
let smb_cnt_t = Cstp_v.provide smb_cnt;;
let mrk_cnt_t = Cmtp_v.provide smb_cnt;;
let mrk_cne_t =
    Tre_v.subtree_remove (fun (s, d) -> ( 
      match s with
      | Cns_t.Constructor_fictive_symbol _ -> true
      | _ -> false
)
) mrk_cnt_t;;

let kyl_itm = [("item", Its_v.name smb_itm); ("codefile", Cfs_v.name smb_cfi); ("category", Cts_v.name smb_cat); ("entity", Ens_v.name smb_ent)];;

let frm_itm = Itf_v.retrieve kyl_itm;;

testi 0 (
 str_t 
(* : string Tree_t.tree *)
=
Tree_t.Node ("atom_onetied_single", 
	     [Tree_t.Leaf "h_s"; Tree_t.Leaf "f_s"])
);;

testi 1 (
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

testi 2 (
mrk_cne_t 
(* : Cmtp_v.Csdt_t.Cnm_t.constructor_tag Tree_t.tree *)
=
Tree_t.Leaf
 (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_proper_symbol
   (Cmtp_v.Csdt_t.Cnm_t.Cns_t.Constructor_several_symbol
     "atom_onetied_single"), 
  [1])
);;

testi 3 (
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

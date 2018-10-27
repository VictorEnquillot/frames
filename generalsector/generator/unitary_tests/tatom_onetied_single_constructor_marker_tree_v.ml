open Gentest_v;;

testing "Atom_onetied_single Constructor_tag_tree_v";;

(* toplevel 
   #use "tatom_onetied_single_constructor_tag_tree_v.ml";; 
 *)

module Cstp_v = Constructor_symbol_tree_provider_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cmt_v = Constructor_tag_tree_v
module Cst_v = Constructor_symbol_tree_v
module Cns_v = Constructor_symbol_v
module Cts_v = Category_symbol_v
module Cpc_v = Caml_paragraph_context_v
module Cps_v = Caml_paragraph_symbol_v
module End_v = Entity_data_v
module Ens_v = Entity_symbol_v
module Est_v = Entity_symbol_tree_v
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

let smb_ent_t = Est_v.make smb_ent;;
let smb_cnt_t = Cst_v.make smb_cnt;;

testi 0 (
smb_cnt
(* : Constructor_symbol_t.constructor_symbol *)
=
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_several_symbol "atom_onetied_single")
);;

testi 1 (
 smb_ent_t
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Node
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_local_symbol "atom_onetied_single"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_symbol_t.Entity_bare_symbol "h_s"));
  Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_symbol_t.Entity_bare_symbol "f_s"))])
);;

testi 2 (
smb_cnt_t
(* : Constructor_symbol_t.constructor_symbol Tree_t.tree *)
  =
Tree_t.Node
 (Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_several_symbol "atom_onetied_single"),
 [Tree_t.Leaf
   (Constructor_symbol_t.Constructor_fictive_symbol
     (Constructor_symbol_t.Constructor_bare_symbol "h_s"));
  Tree_t.Leaf
   (Constructor_symbol_t.Constructor_fictive_symbol
     (Constructor_symbol_t.Constructor_bare_symbol "f_s"))])

);;

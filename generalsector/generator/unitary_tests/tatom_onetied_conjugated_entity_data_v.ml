open Gentest_v;;

testing "Atom_onetied_conjugated Entity_data_v";;

(* toplevel 
   #use "tatom_onetied_conjugated_entity_data_v.ml";; 
 *)

module Cstp_v = Constructor_symbol_tree_provider_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cns_t = Constructor_symbol_t
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

let nam_ent = "atom_onetied_conjugated";;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.entity_symbol_of_entity_proper_symbol smb_epr;;
let smb_cat = Cts_v.category_symbol;;
let smb_cfi = Cfs_v.codefile_implementation;;
let smb_itm = Its_v.extracting;;

let val_tgt = Tgv_v.make smb_epr smb_cat smb_cfi;;
Tgp_v.store_force "current" val_tgt;; 

let nam_fil_ent = End_v.entity_data_filename_of_entityname nam_ent;;
let dat_ent = End_v.entity_data_of_entityname nam_ent;;

let str_t = End_v.string_tree_of_entityname nam_ent;;
let smb_ent_t = Est_v.make smb_ent;;


testi 0 (
End_v.is_entityname_off_string nam_ent
);;

testi 1 (
dat_ent
(* : Entity_data_t.entity_data *)
= 
["o_c"]
);;

testi 2 (
End_v.count_son_of_entityname nam_ent
(* Index_p.index *)
= 
Index_p.one
);;

testi 3 (
End_v.is_singleson_off_entityname nam_ent
(* : bool *)  
  =
  true
);;

testi 4 (
End_v.is_datastructure_off_entityname nam_ent 
(* : bool *)  
  =
  false
);;
  
testi 5 (
 str_t 
(* : string Tree_t.tree *)
=
Tree_t.Node ("atom_onetied_conjugated", 
	     [Tree_t.Leaf "o_c";])
);;

testi 6 (
 smb_ent_t
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Node
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_local_symbol "atom_onetied_conjugated"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_symbol_t.Entity_bare_symbol "o_c"))])
);;


open Gentest_v;;

testing "Atom_onetied_conjugated Entity_symbol_tree_v";;

(* toplevel 
   #use "tatom_onetied_conjugated_entity_symbol_tree_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module End_v = Entity_data_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Est_v = Entity_symbol_tree_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom_onetied_conjugated";;
let smb_epr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.entity_symbol_of_entity_proper_symbol smb_epr;;

let str_t = End_v.string_tree_of_entityname nam_ent;;
let smb_ent_t = Est_v.make smb_ent;;

testi 0 (
smb_epr
(* : Entity_symbol_t.entity_proper_symbol *)
= 
Entity_symbol_t.Entity_local_symbol "atom_onetied_conjugated"
);;

testi 1 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_local_symbol "atom_onetied_conjugated")
);;

testi 2 (
str_t 
(* : string Tree_t.tree *)
=
Tree_t.Node ("atom_onetied_conjugated", 
	     [Tree_t.Leaf "o_c"])
);;

testi 3 (
Ens_v.entity_fictive_symbol_of_string "o_c"
(* : Ens_t.entity_fictive_symbol *)
= 
Ens_t.Entity_bare_symbol "o_c"
);;

testi 4 (
smb_ent_t 
=
Tree_t.Node
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_local_symbol "atom_onetied_conjugated"),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_symbol_t.Entity_bare_symbol "o_c"))])
);;

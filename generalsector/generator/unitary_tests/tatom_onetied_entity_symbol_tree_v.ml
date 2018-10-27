open Gentest_v;;

testing "Atom_onetied Entity_symbol_tree_v";;

(* toplevel 
   #use "tatom_onetied_entity_symbol_tree_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module End_v = Entity_data_v
module Ens_v = Entity_symbol_v
module Est_v = Entity_symbol_tree_v
module Its_v = Item_symbol_v
module Itf_v = Item_formula_v
module Tgv_v = Target_value_v
module Tgp_v = Target_value_provider_v
module Tre_t = Tree_t
module Tre_v = Tree_v

let nam_ent = "atom_onetied";;
let smb_enr = Ens_v.entity_proper_symbol_of_string nam_ent;;
let smb_ent = Ens_v.entity_symbol_of_entity_proper_symbol smb_enr;;

let str_t = End_v.string_tree_of_entityname nam_ent;;
let smb_ent_t = Est_v.make smb_ent;;

testi 0 (
smb_enr
(* : Entity_symbol_t.entity_proper_symbol *)
= 
Entity_symbol_t.Entity_local_symbol "atom_onetied"
);;

testi 1 (
smb_ent 
(* : Entity_symbol_t.entity_symbol *)
=
Entity_symbol_t.Entity_proper_symbol
 (Entity_symbol_t.Entity_local_symbol "atom_onetied")
);;

testi 2 (
str_t 
(* : string Tree_t.tree *)
=
Tree_t.Node ("atom_onetied",
 [Tree_t.Node ("atom_onetied_conjugated", [Tree_t.Leaf "o_c"]);
  Tree_t.Node ("atom_onetied_double", [Tree_t.Leaf "o_d"]);
  Tree_t.Node ("atom_onetied_single", [Tree_t.Leaf "h_s"; Tree_t.Leaf "f_s"]);
  Tree_t.Node ("atom_onetied_triple", [Tree_t.Leaf "n_t"; Tree_t.Leaf "o_t"])])
);;

testi 3 (
smb_ent_t 
=
Tree_t.Node
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_local_symbol "atom_onetied"),
 [Tree_t.Node
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_local_symbol "atom_onetied_conjugated"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "o_c"))]);
  Tree_t.Node
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_local_symbol "atom_onetied_double"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "o_d"))]);
  Tree_t.Node
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_local_symbol "atom_onetied_single"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "h_s"));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "f_s"))]);
  Tree_t.Node
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_local_symbol "atom_onetied_triple"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "n_t"));
    Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_symbol_t.Entity_bare_symbol "o_t"))])])
);;

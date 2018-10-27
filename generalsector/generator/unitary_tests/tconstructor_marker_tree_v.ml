open Gentest_v;;

testing "constructor_tag_tree_v";;

(* toplevel 
   #use "tconstructor_tag_tree_v.ml";; 
 *)

module Cmt_t = Constructor_tag_tree_t
module Cmt_v = Constructor_tag_tree_v
module Cns_v = Constructor_symbol_v
module Dtr_v = Doublet_tree_v
module Ens_v = Entity_symbol_v
module Tre_v = Tree_v

let nam_ent = "atom";;

testi 0 (
Cmt_v.make (Ens_v.make "atom_zerotied_anion")
(* : (Constructor_symbol_t.constructor_symbol * int) Tree_t.tree *)
=
Tree_t.Node
 ((Constructor_symbol_t.Constructor_proper_symbol
    (Constructor_symbol_t.Constructor_several_symbol "atom_zerotied_anion"),
   [1]),
 [Tree_t.Node
   ((Constructor_symbol_t.Constructor_proper_symbol
      (Constructor_symbol_t.Constructor_several_symbol
        "atom_zerotied_anion_minus_one"),
     2),
   [Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "f_1m")),
      [1; 1; 1]);
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "h_1m")),
      [1; 1; 1]);
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "cl_1m")),
      [1; 1; 1]);
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "br_1m")),
      [1; 1; 1]);
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "i_1m")),
      3)]);
  Tree_t.Node
   ((Constructor_symbol_t.Constructor_proper_symbol
      (Constructor_symbol_t.Constructor_several_symbol
        "atom_zerotied_anion_minus_two"),
     2),
   [Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "o_2m")),
      [1; 1; 1]);
    Tree_t.Leaf
     (Constructor_symbol_t.Constructor_fictive_symbol
       (Constructor_symbol_t.Leaf_constructor_fictive_symbol
         (Constructor_symbol_t.Constructor_leave_symbol "s_2m")),
      3)])])
);;

testi 1 (
Cmt_v.make "polyglycine"
(* : (Constructor_symbol_t.constructor_symbol * int) Tree_t.tree *)
=
Tree_t.Node
 ((Constructor_symbol_t.Constructor_proper_symbol
    (Constructor_symbol_t.Constructor_oneline_symbol
      (Constructor_symbol_t.Constructor_proper_datastructure_symbol
        "polyglycine")),
   [1]),
 [Tree_t.Leaf
   (Constructor_symbol_t.Constructor_fictive_symbol
     (Constructor_symbol_t.Node_constructor_fictive_symbol
       (Constructor_symbol_t.Constructor_proper_datastructure_symbol
         (Constructor_symbol_t.Constructor_proper_doublet_symbol
           "indexed_string"))),
    [1; 1])])
);;

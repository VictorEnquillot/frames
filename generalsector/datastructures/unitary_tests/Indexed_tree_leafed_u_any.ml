open Make_test_v;;

testing "Indexed_tree_leafed_v";;

(* toplevel 
   #use "indexed_tree_leafed_u_any.ml";; 
*)


(**      
     "a"        
      ?
     / \
  "v"   b_t       
   1    2

       "b"
        ?
       / \
     "w"  c_t
      1   2

         "c"    
          ?
         /|\
        / | \
     "x" "y" "z"
      1   2   3
*)

type leaf = Leaf of string;;
type node = Inner of string;;

type vertex =
  | V_leaf of leaf
  | V_node of node
;;

let vertex_of_leaf l = V_leaf l;;
let vertex_of_node n = V_node n;;

let v = Leaf "v";;
let w = Leaf "w";;
let x = Leaf "x";;
let y = Leaf "y";;
let z = Leaf "z";;

let a = Inner "a";;
let b = Inner "b";;
let c = Inner "c";;

let x_t = Indexed_tree_leafed_v.make_of_leaf_of_index x;;
let y_t = Indexed_tree_leafed_v.make_of_leaf_of_index y;;
let z_t = Indexed_tree_leafed_v.make_of_leaf_of_index z;;

let v_t = Indexed_tree_leafed_v.make_of_leaf_of_index v;;
let w_t = Indexed_tree_leafed_v.make_of_leaf_of_index w;;

let c_t = Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index c [x_t 1; y_t 2; z_t 3];;
let b_t = Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index b [w_t 1; c_t 2];;
let a_t = Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index a [v_t 1; b_t 2];;

test_number 1 ( 
v_t 1
(* : ('a, 'b, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Leaf (Leaf "v", 1)
);;

test_number 2 (
c_t 2
(* : (node, float, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Inner ((Inner "c", 2),
				  [Tree_leafed_t.Leaf (Leaf "x", 1);
				   Tree_leafed_t.Leaf (Leaf "y", 2);
				   Tree_leafed_t.Leaf (Leaf "z", 3)])
);;

test_number 3 (
b_t 2
(* : (node, float, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Inner ((Inner "b", 2),
				  [Tree_leafed_t.Leaf (Leaf "w", 1);
				   Tree_leafed_t.Inner ((Inner "c", 2),
								     [Tree_leafed_t.Leaf (Leaf "x", 1);
								      Tree_leafed_t.Leaf (Leaf "y", 2);
								      Tree_leafed_t.Leaf (Leaf "z", 3)])])
);;

test_number 4 (
a_t 0
(* : (node, float, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
  =
Tree_leafed_t.Inner ((Inner "a", 0),
				  [Tree_leafed_t.Leaf (Leaf "v", 1);
				   Tree_leafed_t.Inner ((Inner "b", 2),
								     [Tree_leafed_t.Leaf (Leaf "w", 1);
								      Tree_leafed_t.Inner ((Inner "c", 2),
													[Tree_leafed_t.Leaf (Leaf "x", 1);
													 Tree_leafed_t.Leaf (Leaf "y", 2);
													 Tree_leafed_t.Leaf (Leaf "z", 3)])])])
  
);;

test_number 5 ( 
Indexed_tree_leafed_v.root_doublet_off_indexed_tree_leafed (a_t 0)
(* : (node, float) Doublet_t.doublet *)
  = 
(a, 0)
);;

test_number 6 ( 
Indexed_tree_leafed_v.root_off_indexed_tree_leafed (a_t 0)
(* : (node, float) Doublet_t.doublet *)
  = 
a
);;

test_number 7 ( 
Indexed_tree_leafed_v.root_son_doublet_list_off_indexed_tree_leafed_node (a_t 0)
(* : : (node, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed list *)
=
[v_t 1; b_t 2]
);;

test_number 8 ( 
Indexed_tree_leafed_v.indexed_tree_off_indexed_tree_leafed
vertex_of_node vertex_of_leaf (a_t 0)
(* : (vertex, int) Indexed_tree_t.indexed_tree *)
  =
Tree_t.Inner ((V_node (Inner "a"), 0),
 [Tree_t.Leaf (V_leaf (Leaf "v"), 1);
  Tree_t.Inner ((V_node (Inner "b"), 2),
   [Tree_t.Leaf (V_leaf (Leaf "w"), 1);
    Tree_t.Inner ((V_node (Inner "c"), 2),
     [Tree_t.Leaf (V_leaf (Leaf "x"), 1); 
      Tree_t.Leaf (V_leaf (Leaf "y"), 2);
      Tree_t.Leaf (V_leaf (Leaf "z"), 3)])])])
);;

(**
     "a"        
      0
     / \
  "v"  "b"
   1    2
       / \
     "w" "c"    
      1   2
         /|\
        / | \
     "x" "y" "z"
      1   2   3
*)

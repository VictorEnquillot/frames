open Make_test_v;;

testing "Leafed_doublet_tree_v";;

(* toplevel 
   #use "leafed_doublet_tree_u_any.ml";; 
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

let v = Leaf "v";;
let w = Leaf "w";;
let x = Leaf "x";;
let y = Leaf "y";;
let z = Leaf "z";;

let a = Inner "a";;
let b = Inner "b";;
let c = Inner "c";;

let x_t = Ldt_v.make_of_leaf_of_index x;;
let y_t = Ldt_v.make_of_leaf_of_index y;;
let z_t = Ldt_v.make_of_leaf_of_index z;;

let v_t = Ldt_v.make_of_leaf_of_index v;;
let w_t = Ldt_v.make_of_leaf_of_index w;;

let c_t = Ldt_v.make_of_node_of_leafed_doublet_tree_list_of_index c [x_t 1; y_t 2; z_t 3];;
let b_t = Ldt_v.make_of_node_of_leafed_doublet_tree_list_of_index b [w_t 1; c_t 2.];;
let a_t = Ldt_v.make_of_node_of_leafed_doublet_tree_list_of_index a [v_t 1; b_t 2.];;

test_number 1 ( 
v_t 1
(* : ('a, 'b, leaf, int) Leafed_doublet_tree_t.leafed_doublet_tree *)
=
Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "v", 1)
);;

test_number 2 (
c_t 2.
(* : (node, float, leaf, int) Leafed_doublet_tree_t.leafed_doublet_tree *)
=
Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "c", 2.),
 [Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "x", 1);
  Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "y", 2);
  Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "z", 3)])
);;

test_number 3 (
b_t 2.
(* : (node, float, leaf, int) Leafed_doublet_tree_t.leafed_doublet_tree *)
=
Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "b", 2.),
				  [Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "w", 1);
				   Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "c", 2.),
								     [Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "x", 1);
								      Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "y", 2);
								      Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "z", 3)])])
);;

test_number 4 (
a_t 0.
(* : (node, float, leaf, int) Leafed_doublet_tree_t.leafed_doublet_tree *)
  =
Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "a", 0.),
				  [Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "v", 1);
				   Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "b", 2.),
								     [Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "w", 1);
								      Leafed_doublet_tree_t.Tree_leafed_t.Inner ((Inner "c", 2.),
													[Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "x", 1);
      Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "y", 2);
													 Leafed_doublet_tree_t.Tree_leafed_t.Leaf (Leaf "z", 3)])])])
  
);;

test_number 5 ( 
Ldt_v.root_doublet_off_leafed_doublet_tree (a_t 0.)
(* : (node, float) Doublet_t.doublet *)
 = 
(a, 0.)
);;

test_number 6 ( 
Ldt_v.root_son_doublet_list_off_leafed_doublet_tree_node (a_t 0.)
(* : : (node, float, leaf, int) Leafed_doublet_tree_t.leafed_doublet_tree list *)
=
[v_t 1; b_t 2.]
);;

test_number 7 ( 
Ldt_v.doublet_tree_off_leafed_doublet_tree
(fun n -> V_node n) (fun f -> int_of_float f) (fun l -> V_leaf l) (fun i -> i) 
(a_t 0.)
(* : (vertex, int) Doublet_tree_t.doublet_tree *)
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

open Make_test_v;;

testing "Capped_indexed_tree_leafed_v";;

(* toplevel 
   #use "capped_indexed_tree_leafed_u_any.ml";; 
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
type cap = Cap of string;;

type vertex =
  | V_leaf of leaf
  | V_cap_node of cap_node

and cap_node =
  | CN_cap of cap
  | CN_node of node
;;

let vertex_of_leaf l = V_leaf l;;
let vertex_of_cap_node cn = V_cap_node cn;;

let cap_node_of_node n = CN_node n;;
let cap_node_of_cap c = CN_cap c;;

let vertex_of_cap c = V_cap_node (cap_node_of_cap c);;
let vertex_of_node n = V_cap_node (cap_node_of_node n);;

let v = Leaf "v";;
let w = Leaf "w";;
let x = Leaf "x";;
let y = Leaf "y";;
let z = Leaf "z";;

let b = Inner "b";;
let c = Inner "c";;

let a = Cap "a";;

let x_t = Indexed_tree_leafed_v.make_of_leaf_of_index x;;
let y_t = Indexed_tree_leafed_v.make_of_leaf_of_index y;;
let z_t = Indexed_tree_leafed_v.make_of_leaf_of_index z;;

let v_t = Indexed_tree_leafed_v.make_of_leaf_of_index v;;
let w_t = Indexed_tree_leafed_v.make_of_leaf_of_index w;;

let c_t = Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index c [x_t 1; y_t 2; z_t 3];;
let b_t = Indexed_tree_leafed_v.make_of_node_of_indexed_tree_leafed_list_of_index b [w_t 1; c_t 2];;

let a_t = Capped_indexed_tree_leafed_v.make a [v_t 1; b_t 2];;
 
test_number 1 ( 
v_t 1
(* : ('a, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Leaf (Leaf "v", 1)
);;

test_number 2 (
c_t 2
(* : (node, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Inner ((Inner "c", 2),
 [Tree_leafed_t.Leaf (Leaf "x", 1);
  Tree_leafed_t.Leaf (Leaf "y", 2);
  Tree_leafed_t.Leaf (Leaf "z", 3)])
);;

test_number 3 (
b_t 2
(* : (node, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
=
Tree_leafed_t.Inner ((Inner "b", 2),
 [Tree_leafed_t.Leaf (Leaf "w", 1);
  Tree_leafed_t.Inner ((Inner "c", 2),
   [Tree_leafed_t.Leaf (Leaf "x", 1);
    Tree_leafed_t.Leaf (Leaf "y", 2);
    Tree_leafed_t.Leaf (Leaf "z", 3)])])
);;

test_number 4 (
a_t
(* : (cap, node, leaf, int)
    Capped_indexed_tree_leafed_t.capped_indexed_tree_leafed *)
=
(Cap "a",
 [Tree_leafed_t.Leaf (Leaf "v", 1);
  Tree_leafed_t.Inner ((Inner "b", 2),
   [Tree_leafed_t.Leaf (Leaf "w", 1);
    Tree_leafed_t.Inner ((Inner "c", 2),
     [Tree_leafed_t.Leaf (Leaf "x", 1);
      Tree_leafed_t.Leaf (Leaf "y", 2);
      Tree_leafed_t.Leaf (Leaf "z", 3)])])])
);;

test_number 5 ( 
Capped_indexed_tree_leafed_v.cap_off_capped_indexed_tree_leafed a_t
(* : cap *)
= 
Cap "a"
);;

test_number 6 ( 
Capped_indexed_tree_leafed_v.cap_son_indexed_tree_leafed_list_off_capped_indexed_tree_leafed a_t
(* : (node, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed list *)
=
[v_t 1; b_t 2]
);;

test_number 7 ( 
Capped_indexed_tree_leafed_v.indexed_tree_leafed_off_capped_indexed_tree_leafed 
cap_node_of_cap cap_node_of_node (fun l -> l) 5 a_t
(* : (cap_node, leaf, int) Indexed_tree_leafed_t.indexed_tree_leafed *)
 =
Tree_leafed_t.Inner ((CN_cap (Cap "a"), 5),
 [Tree_leafed_t.Leaf (Leaf "v", 1);
  Tree_leafed_t.Inner ((CN_node (Inner "b"), 2),
   [Tree_leafed_t.Leaf (Leaf "w", 1);
    Tree_leafed_t.Inner ((CN_node (Inner "c"), 2),
     [Tree_leafed_t.Leaf (Leaf "x", 1);
      Tree_leafed_t.Leaf (Leaf "y", 2);
      Tree_leafed_t.Leaf (Leaf "z", 3)])])])
);; 

test_number 8 (
Capped_indexed_tree_leafed_v.cap_son_indexed_tree_list_off_capped_indexed_tree_leafed 
vertex_of_node vertex_of_leaf a_t
(* : (vertex, int) Indexed_tree_t.indexed_tree list *)
=
[Tree_t.Leaf (V_leaf (Leaf "v"), 1);
 Tree_t.Inner ((V_cap_node (CN_node (Inner "b")), 2),
	      [Tree_t.Leaf (V_leaf (Leaf "w"), 1);
	       Tree_t.Inner ((V_cap_node (CN_node (Inner "c")), 2),
			    [Tree_t.Leaf (V_leaf (Leaf "x"), 1); 
			     Tree_t.Leaf (V_leaf (Leaf "y"), 2);
			     Tree_t.Leaf (V_leaf (Leaf "z"), 3)])])]
);;

test_number 9 (
Capped_indexed_tree_leafed_v.indexed_tree_off_capped_indexed_tree_leafed vertex_of_cap vertex_of_node vertex_of_leaf 5 a_t
(* : (vertex, int) Indexed_tree_t.indexed_tree *)
=
Tree_t.Inner ((V_cap_node (CN_cap (Cap "a")), 5),
 [Tree_t.Leaf (V_leaf (Leaf "v"), 1);
  Tree_t.Inner ((V_cap_node (CN_node (Inner "b")), 2),
   [Tree_t.Leaf (V_leaf (Leaf "w"), 1);
    Tree_t.Inner ((V_cap_node (CN_node (Inner "c")), 2),
     [Tree_t.Leaf (V_leaf (Leaf "x"), 1); Tree_t.Leaf (V_leaf (Leaf "y"), 2);
      Tree_t.Leaf (V_leaf (Leaf "z"), 3)])])])
);;

test_number 10 (
Capped_indexed_tree_leafed_v.cap_son_tree_list_off_capped_indexed_tree_leafed vertex_of_node vertex_of_leaf a_t
(* : vertex Tree_t.tree list *)
=
[Tree_t.Leaf (V_leaf (Leaf "v"));
 Tree_t.Inner (V_cap_node (CN_node (Inner "b")),
  [Tree_t.Leaf (V_leaf (Leaf "w"));
   Tree_t.Inner (V_cap_node (CN_node (Inner "c")),
    [Tree_t.Leaf (V_leaf (Leaf "x")); 
     Tree_t.Leaf (V_leaf (Leaf "y"));
     Tree_t.Leaf (V_leaf (Leaf "z"))])])]
);;

test_number 11 (
Capped_indexed_tree_leafed_v.tree_off_capped_indexed_tree_leafed vertex_of_cap vertex_of_node vertex_of_leaf a_t 
(* : vertex Tree_t.tree *) =
Tree_t.Inner (V_cap_node (CN_cap (Cap "a")),
 [Tree_t.Leaf (V_leaf (Leaf "v"));
  Tree_t.Inner (V_cap_node (CN_node (Inner "b")),
   [Tree_t.Leaf (V_leaf (Leaf "w"));
    Tree_t.Inner (V_cap_node (CN_node (Inner "c")),
     [Tree_t.Leaf (V_leaf (Leaf "x")); Tree_t.Leaf (V_leaf (Leaf "y"));
      Tree_t.Leaf (V_leaf (Leaf "z"))])])]) 
);;


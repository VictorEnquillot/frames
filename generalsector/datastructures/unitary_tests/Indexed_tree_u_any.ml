open Make_test_v;;

testing "Indexed_tree_v with
    Indexed_tree_u_any.ml";;

(* toplevel 
   #use "Indexed_tree_u_any.ml";; 

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

let v = "v";;
let w = "w";;
let x = "x";;
let y = "y";;
let z = "z";;

let a = "a";;
let b = "b";;
let c = "c";;

let x_t = Indexed_tree_v.make_of_leaf_of_index x;;
let y_t = Indexed_tree_v.make_of_leaf_of_index y;;
let z_t = Indexed_tree_v.make_of_leaf_of_index z;;

let v_t = Indexed_tree_v.make_of_leaf_of_index v;;
let w_t = Indexed_tree_v.make_of_leaf_of_index w;;

let c_t = Indexed_tree_v.make_of_node_of_indexed_tree_list_of_index c [x_t 1; y_t 2; z_t 3];;
let b_t = Indexed_tree_v.make_of_node_of_indexed_tree_list_of_index b [w_t 1; c_t 2];;
let a_t = Indexed_tree_v.make_of_node_of_indexed_tree_list_of_index a [v_t 1; b_t 2];;

test_number 1 ( 
v_t 1
(* : (string, int) Indexed_tree_t.indexed_tree *)
= 
Tree_t.Leaf ("v", 1)
);;

test_number 2 (
c_t 2
(* : (string, int) Indexed_tree_t.indexed_tree *)
  =
Tree_t.Inner (("c", 2),
	     [Tree_t.Leaf ("x", 1); Tree_t.Leaf ("y", 2); Tree_t.Leaf ("z", 3)])
);;

test_number 3 (
b_t 2
(* : (string, int) Indexed_tree_t.indexed_tree *)
=
Tree_t.Inner (("b", 2),
 [Tree_t.Leaf ("w", 1);
  Tree_t.Inner (("c", 2),
   [Tree_t.Leaf ("x", 1); Tree_t.Leaf ("y", 2); Tree_t.Leaf ("z", 3)])])
);;

test_number 4 (
a_t 0
(* : (string, int) Indexed_tree_t.indexed_tree *)
=
Tree_t.Inner (("a", 0),
 [Tree_t.Leaf ("v", 1);
  Tree_t.Inner (("b", 2),
   [Tree_t.Leaf ("w", 1);
    Tree_t.Inner (("c", 2),
     [Tree_t.Leaf ("x", 1); Tree_t.Leaf ("y", 2); Tree_t.Leaf ("z", 3)])])])
);;

test_number 5 ( 
Indexed_tree_v.root_doublet_off_indexed_tree (a_t 0)
(* : (string, int) Doublet_t.doublet *)
= 
("a", 0)
);;

test_number 6 ( 
Indexed_tree_v.root_off_indexed_tree (a_t 0)
(* : string *)
= 
"a"
);;

test_number 7 (
Indexed_tree_v.root_sonindexedtree_list_off_indexed_tree (a_t 0)   
(* : (string, int) Doublet_t.doublet Tree_t.tree list *)
=
[Tree_t.Leaf ("v", 1);
 Tree_t.Inner (("b", 2),
  [Tree_t.Leaf ("w", 1);
   Tree_t.Inner (("c", 2),
    [Tree_t.Leaf ("x", 1); Tree_t.Leaf ("y", 2); Tree_t.Leaf ("z", 3)])])]
);;

test_number 8 ( 
Indexed_tree_v.root_son_doublet_list_off_indexed_tree (a_t 0)
(* : (string, int) Doublet_t.doublet list *)
= 
[("v", 1); ("b", 2)]
);;

test_number 9 (
Indexed_tree_v.left_tree_off_indexed_tree (a_t 0)
(* : string Tree_t.tree *) 
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "v";
  Tree_t.Inner ("b",
   [Tree_t.Leaf "w";
    Tree_t.Inner ("c", [Tree_t.Leaf "x"; Tree_t.Leaf "y"; Tree_t.Leaf "z"])])])
);;

test_number 10 (
Indexed_tree_v.right_tree_off_indexed_tree (a_t 0)
(* : int Tree_t.tree *)
=
Tree_t.Inner (0,
 [Tree_t.Leaf 1;
  Tree_t.Inner (2,
   [Tree_t.Leaf 1;
    Tree_t.Inner (2, [Tree_t.Leaf 1; Tree_t.Leaf 2; Tree_t.Leaf 3])])])
);;

let nam = Indexed_tree_v.name (fun s->s) (Format.sprintf "%i") (a_t 0);;

(*

test_number 11 (
(nam : string ) =
  "{(a, 0),\n  [\n  (v, 1) {(b, 2),\n  [\n  (w, 1) {(c, 2),\n  [\n  (x, 1) (y, 2) (z, 3)\n  ]}\n  ]}\n  ]}"
);;

test_number 12 (
Indexed_tree_v.son_doublet_list_of_predicate_of_indexed_tree
(fun (n,i) -> i=2) (a_t 0)
(* : (string, int) Doublet_t.doublet list *)
= 
[]
);;

test_number 13 (
Indexed_tree_v.subindexedtree_list_of_predicate_of_indexed_tree
(fun (n,i) -> n="b") (a_t 0)
=
[]
);;
*)

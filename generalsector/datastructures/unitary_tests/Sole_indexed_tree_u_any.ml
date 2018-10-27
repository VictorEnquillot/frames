open Make_test_v;;

testing "sole_indexed_tree_u_any.ml";;

(* toplevel 
   #use "sole_indexed_tree_u_any.ml";; 
*)


(** tree a
     a
    / \
   b   c---x
      / \
     d   e
        /|\
       f g h
*)

let b = Tree_v.make "b" [];;
let d = Tree_v.make "d" [];;
let f = Tree_v.make "f" [];;
let g = Tree_v.make "g" [];;
let h = Tree_v.make "h" [];;
let x = Tree_v.make_of_leaf "x";;

let e = Tree_v.make "e" [f; g; h];;
let c = Tree_v.make "c" [d; e; x];;
let a = Tree_v.make "a" [b; c];;

let b_in_e = Tree_v.replace_of_vertex_of_value_of_tree "e" "b" a;;
let d_in_e = Tree_v.replace_of_vertex_of_value_of_tree "e" "d" a;;

let nni_a = Sole_indexed_tree_v.make a ;;
let nni_b_in_e = Sole_indexed_tree_v.make b_in_e ;;
let nni_d_in_e = Sole_indexed_tree_v.make d_in_e ;;

test_number 1 (
nni_a
(* : string Sole_indexed_tree_t.sole_indexed_tree *)
=
Tree_t.Inner (("a", [1]),
 [Tree_t.Leaf ("b", [1; 1]);
  Tree_t.Inner (("c", [2; 1]),
   [Tree_t.Leaf ("d", [1; 2; 1]);
    Tree_t.Inner (("e", [2; 2; 1]),
     [Tree_t.Leaf ("f", [1; 2; 2; 1]); 
      Tree_t.Leaf ("g", [2; 2; 2; 1]);
      Tree_t.Leaf ("h", [3; 2; 2; 1])]);
    Tree_t.Leaf ("x", [3; 2; 1])])])
);;

test_number 2 (
 nni_b_in_e
(* : string Sole_indexed_tree_t.sole_indexed_tree *)
=
Tree_t.Inner (("a", [1]),
 [Tree_t.Leaf ("b", [1; 1]);
  Tree_t.Inner (("c", [2; 1]),
   [Tree_t.Leaf ("d", [1; 2; 1]);
    Tree_t.Inner (("b", [2; 2; 1]),
     [Tree_t.Leaf ("f", [1; 2; 2; 1]); 
      Tree_t.Leaf ("g", [2; 2; 2; 1]);
      Tree_t.Leaf ("h", [3; 2; 2; 1])]);
    Tree_t.Leaf ("x", [3; 2; 1])])])
);;

test_number 3 (
 nni_d_in_e
(* : string Sole_indexed_tree_t.sole_indexed_tree *)
=
Tree_t.Inner (("a", [1]),
 [Tree_t.Leaf ("b", [1; 1]);
  Tree_t.Inner (("c", [2; 1]),
   [Tree_t.Leaf ("d", [1; 2; 1]);
    Tree_t.Inner (("d", [2; 2; 1]),
     [Tree_t.Leaf ("f", [1; 2; 2; 1]);
      Tree_t.Leaf ("g", [2; 2; 2; 1]);
      Tree_t.Leaf ("h", [3; 2; 2; 1])]);
    Tree_t.Leaf ("x", [3; 2; 1])])])
);;

test_number 4 (
Sole_indexed_tree_v.node_of_sole_index_of_tree [2; 2; 1] d_in_e
(* : string *)
= 
"d"
);;

test_number 5 (
Sole_indexed_tree_v.sole_index_list_of_node_of_tree "d" d_in_e
(* : Sole_index_t.sole_index list *)
= 
[[1; 2; 1]; 
 [2; 2; 1]]
);;

test_number 6 (
Sole_indexed_tree_v.path_of_sole_index_of_tree [2; 2; 1] d_in_e
(* : string list *)
= 
["d"; "c"; "a"]
);;

open Make_test_v;;

testing "Sole_index_u_any.ml";;

(* toplevel 
   #use "Sole_index_u_any.ml";; 

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

let nam = Sole_index_v.name [1; 2; 1];;
test_number 1 (
(nam : string ) =
"[1; 2; 1]"
);;

let soi_t = Sole_index_v.sole_index_tree_of_tree a;;

test_number 2 (
(soi_t : int list Tree_t.tree ) =
Tree_t.Inner ([1],
 [Tree_t.Leaf [1; 1];
  Tree_t.Inner ([2; 1],
   [Tree_t.Leaf [1; 2; 1];
    Tree_t.Inner ([2; 2; 1],
     [Tree_t.Leaf [1; 2; 2; 1]; 
      Tree_t.Leaf [2; 2; 2; 1];
      Tree_t.Leaf [3; 2; 2; 1]]);
    Tree_t.Leaf [3; 2; 1]])])
);;

let soi_l = Tree_v.node_list_off_tree soi_t;;

test_number 3 (
soi_l
(* : Sole_index_t.sole_index list *)
=
  [[1]; [1; 1]; [2; 1]; [1; 2; 1]; [2; 2; 1]; [1; 2; 2; 1]; [2; 2; 2; 1];
   [3; 2; 2; 1]; [3; 2; 1]]
);;

test_number 4 (
Sole_index_v.sole_index_tree_off_sole_index_list_of_sole_index soi_l [2; 1]
(* : Sole_index_t.sole_index Tree_t.tree *)
=
Tree_t.Inner ([2; 1],
 [Tree_t.Leaf [1; 2; 1];
  Tree_t.Inner ([2; 2; 1],
   [Tree_t.Leaf [1; 2; 2; 1]; Tree_t.Leaf [2; 2; 2; 1];
    Tree_t.Leaf [3; 2; 2; 1]]);
  Tree_t.Leaf [3; 2; 1]])
);;


let soi_t = Sole_index_v.sole_index_tree_of_tree_of_root_sole_index a [1; 5; 6];;

test_number 5 (
soi_t 
(* : Sole_index_t.sole_index Tree_t.tree *)
=
  Tree_t.Inner ([1; 5; 6],
   [Tree_t.Leaf [1; 1; 5; 6];
    Tree_t.Inner ([2; 1; 5; 6],
     [Tree_t.Leaf [1; 2; 1; 5; 6];
      Tree_t.Inner ([2; 2; 1; 5; 6],
       [Tree_t.Leaf [1; 2; 2; 1; 5; 6]; 
	Tree_t.Leaf [2; 2; 2; 1; 5; 6];
        Tree_t.Leaf [3; 2; 2; 1; 5; 6]]);
      Tree_t.Leaf [3; 2; 1; 5; 6]])])
);;

let soi_l = Tree_v.node_list_off_tree soi_t;;

test_number 6 (
soi_l
(* : Sole_index_t.sole_index list *)
=
[[1; 5; 6]; [1; 1; 5; 6]; [2; 1; 5; 6]; [1; 2; 1; 5; 6]; [2; 2; 1; 5; 6];
   [1; 2; 2; 1; 5; 6]; [2; 2; 2; 1; 5; 6]; [3; 2; 2; 1; 5; 6];
   [3; 2; 1; 5; 6]]
);;

test_number 7 (
Sole_index_v.sole_index_tree_of_tree b_in_e
(* : int list Tree_t.tree *)
=
Sole_index_v.sole_index_tree_of_tree a
);;

test_number 8 (
Sole_index_v.sole_index_tree_of_tree d_in_e
(* : (string * int list) Tree_t.tree *)
=
Sole_index_v.sole_index_tree_of_tree a
);;

test_number 9 (
Sole_index_v.current_index_off_sole_index [2; 4]
=
2
);;

test_number 10 (
Sole_index_v.father_sole_index_off_sole_index [2; 4; 6]
=
[4; 6]
);;

test_number 11 (
Sole_index_v.father_index_off_sole_index [2; 4; 6]
=
4
);;

test_number 12 (
Sole_index_v.son_sole_index_list_of_length_of_sole_index 3 [2; 4]
=
[[1; 2; 4]; [2; 2; 4]; [3; 2; 4]]
);;

test_number 13 (
Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index 5 3 [2; 4]
=
[[5; 2; 4]; [6; 2; 4]; [7; 2; 4]]
);;

test_number 14 (
Sole_index_v.sole_index_list_off_sole_index [3; 2; 4]
=
[[3; 2; 4]; [2; 4]; [4]]
);;

test_number 15 (
Sole_index_v.compare [6; 2; 1] [3; 1; 2]
=
-1
);;

let soi = Sole_index_v.next [6; 2; 4];;

test_number 16 (
soi
=
[7; 2; 4]
);;

let hid = Sole_index_v.head_index [6; 2; 4];;

test_number 17 (
(hid : int ) =
6
);;

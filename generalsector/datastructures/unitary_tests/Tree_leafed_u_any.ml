open Make_test_v;;

testing "Tree_leafed_v";;

(* toplevel 
   #use "Tree_leafed_u_any.ml";; 

*)


(**      

     a
    / \
   2   c
      / \
     4   e
        /|\
       6 7 8

*)

type truc =
  | String of string
  | Integer of int
;;

let make_of_string s = 
  String s
;;

let make_of_integer i = 
  Integer i
;;

let name_off_string s = 
  Format.sprintf "%s" s 
;;

let name_off_integer i = 
  Format.sprintf "%i" i 
;;

let name_off_truc = function
  | String s -> name_off_string s
  | Integer i -> name_off_integer i
;;

let string_off_truc = function
  | String s -> s
  | _ -> failwith "Not_String:string_off_truc"
;;

let integer_off_truc = function
  | Integer s -> s
  | _ -> failwith "Not_Integer:integer_off_trucer"
;;

let h_ = Tree_leafed_t.Leaf 8;;
let g_ = Tree_leafed_t.Leaf 7;;
let f_ = Tree_leafed_t.Leaf 6;;
let b_ = Tree_leafed_t.Leaf 2;;
let d_ = Tree_leafed_t.Leaf 4;;

let e_ = Tree_leafed_t.Inner ("e", [f_; g_; h_]);;
let c_ = Tree_leafed_t.Inner ("c", [d_; e_]);;
let a_ = Tree_leafed_t.Inner ("a", [b_; c_]);;

let h = Tree_leafed_v.make_of_leaf 8;;
let g = Tree_leafed_v.make_of_leaf 7;;
let f = Tree_leafed_v.make_of_leaf 6;;
let b = Tree_leafed_v.make_of_leaf 2;;
let d = Tree_leafed_v.make_of_leaf 4;;

let e = Tree_leafed_v.make_of_node "e" [f; g; h];;
let c = Tree_leafed_v.make_of_node "c" [d; e];;
let a = Tree_leafed_v.make_of_node "a" [b; c];;

let str_t =
  Tree_t.Inner ( "a",
   [Tree_t.Leaf ( "2");
    Tree_t.Inner ( "c",
     [Tree_t.Leaf ( "4");
      Tree_t.Inner ( "e",
       [Tree_t.Leaf ( "6"); 
	Tree_t.Leaf ( "7");
        Tree_t.Leaf ( "8")])])])
;;

test_number 1 ( 
h (* : (node, node) Tree_leafed_v.Tree_leafed_t.tree_leafed *) 
  = 
Tree_leafed_t.Leaf 8
);;

test_number 2 ( 
g (* : (node, node) Tree_leafed_v.Tree_leafed_t.tree_leafed *) 
= 
Tree_leafed_t.Leaf 7
);;

test_number 3 ( 
f (* : (node, node) Tree_leafed_v.Tree_leafed_t.tree_leafed *) 
= 
Tree_leafed_t.Leaf 6
);;

test_number 4 ( 
b (* : (node, node) Tree_leafed_v.Tree_leafed_t.tree_leafed *) 
= 
Tree_leafed_t.Leaf 2
);;

test_number 5 ( 
d (* : (node, node) Tree_leafed_v.Tree_leafed_t.tree_leafed *) 
= 
Tree_leafed_t.Leaf 4
);;

test_number 6 (
e (* : (string, int) Tree_leafed_t.tree_leafed *)
  =
Tree_leafed_t.Inner ("e",
  [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7; Tree_leafed_t.Leaf 8])
);;

test_number 7 (
c (* : (string, int) Tree_leafed_t.tree_leafed *) 
=
Tree_leafed_t.Inner ("c",
 [Tree_leafed_t.Leaf 4;
  Tree_leafed_t.Inner ("e",
   [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7; Tree_leafed_t.Leaf 8])])
);;

test_number 8 (
 a (* : (string, int) Tree_leafed_t.tree_leafed *) 
=
Tree_leafed_t.Inner ("a",
 [Tree_leafed_t.Leaf 2;
  Tree_leafed_t.Inner ("c",
   [Tree_leafed_t.Leaf 4;
    Tree_leafed_t.Inner ("e",
     [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7; Tree_leafed_t.Leaf 8])])])
);;

test_number 9 (
Tree_leafed_v.name name_off_string name_off_integer h
=
"8"
);;

let nam = Tree_leafed_v.name name_off_string name_off_integer c;;

test_number 10 (
(nam : string ) =
"{c, [\n   4 {e, [\n   6 7 8\n  ]}\n  ]}"
);;

let nam = Tree_leafed_v.name name_off_string name_off_integer a;;

test_number 11 (
(nam : string ) =
  "{a, [\n   2 {c, [\n   4 {e, [\n   6 7 8\n  ]}\n  ]}\n  ]}"
);;

test_number 12 (
Tree_leafed_v.map (fun s -> s^"_") (fun i -> (-i)) a
(* : (string, int) Tree_leafed_t.tree_leafed *)
  =
Tree_leafed_t.Inner ("a_",
 [Tree_leafed_t.Leaf (-2);
  Tree_leafed_t.Inner ("c_",
   [Tree_leafed_t.Leaf (-4);
    Tree_leafed_t.Inner ("e_",
     [Tree_leafed_t.Leaf (-6); 
      Tree_leafed_t.Leaf (-7);
      Tree_leafed_t.Leaf (-8)])])])
);;

test_number 13 (
Tree_leafed_v.map2 (fun s t -> s^":"^t) (fun i j -> i +j ) a a
(* : (string, int) Tree_leafed_t.tree_leafed *)
  =
Tree_leafed_t.Inner ("a:a",
 [Tree_leafed_t.Leaf 4;
  Tree_leafed_t.Inner ("c:c",
   [Tree_leafed_t.Leaf 8;
    Tree_leafed_t.Inner ("e:e",
     [Tree_leafed_t.Leaf 12; Tree_leafed_t.Leaf 14; Tree_leafed_t.Leaf 16])])])
);;

(* a tree of truc *)

let s_t = Tree_leafed_v.map make_of_string make_of_integer a;;

test_number 14 (
s_t 
(* : (truc, truc) Tree_leafed_t.tree_leafed *)
=
  Tree_leafed_t.Inner (String "a",
   [Tree_leafed_t.Leaf (Integer 2);
    Tree_leafed_t.Inner (String "c",
     [Tree_leafed_t.Leaf (Integer 4);
      Tree_leafed_t.Inner (String "e",
       [Tree_leafed_t.Leaf (Integer 6); Tree_leafed_t.Leaf (Integer 7);
        Tree_leafed_t.Leaf (Integer 8)])])])
);;

let t_t = Tree_leafed_v.tree_off_tree_leafed make_of_string make_of_integer a;;

test_number 15 (
t_t 
=
  Tree_t.Inner (String "a",
   [Tree_t.Leaf (Integer 2);
    Tree_t.Inner (String "c",
     [Tree_t.Leaf (Integer 4);
      Tree_t.Inner (String "e",
       [Tree_t.Leaf (Integer 6); Tree_t.Leaf (Integer 7);
        Tree_t.Leaf (Integer 8)])])])
);;

test_number 16 (
Tree_leafed_v.make_of_tree 
  (fun n -> String n) 
  (fun l -> Integer (int_of_string l) ) 
  str_t
(* : (truc, truc) Tree_leafed_t.tree_leafed *)
=
Tree_leafed_t.Inner (String "a",
 [Tree_leafed_t.Leaf (Integer 2);
  Tree_leafed_t.Inner (String "c",
   [Tree_leafed_t.Leaf (Integer 4);
    Tree_leafed_t.Inner (String "e",
     [Tree_leafed_t.Leaf (Integer 6); 
      Tree_leafed_t.Leaf (Integer 7);
      Tree_leafed_t.Leaf (Integer 8)])])])
);;

test_number 17 (
Tree_leafed_v.leafed_subtree_of_predicate_of_tree_leafed 
(fun n -> name_off_truc n = "c") s_t 
(* : (truc, truc) Tree_leafed_t.tree_leafed *)
=
Tree_leafed_t.Inner (String "c",
 [Tree_leafed_t.Leaf (Integer 4);
  Tree_leafed_t.Inner (String "e",
   [Tree_leafed_t.Leaf (Integer 6); 
    Tree_leafed_t.Leaf (Integer 7);
    Tree_leafed_t.Leaf (Integer 8)])])
);;

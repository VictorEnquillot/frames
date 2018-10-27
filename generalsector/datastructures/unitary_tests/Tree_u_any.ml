open Make_test_v;;

testing "Tree_v";;

(* toplevel 
   #use "Tree_u_any.ml";; 

*)

(** tree a
       a
     /   \
   b      c
       /  | \ 
     d    e   f
   / |   /|\
  g  h  i j k

*)

let b = Tree_v.make_of_leaf "b";;
let f = Tree_v.make_of_leaf "f";;
let g = Tree_v.make_of_leaf "g";;
let h = Tree_v.make_of_leaf "h";;
let i = Tree_v.make_of_leaf "i";;
let j = Tree_v.make_of_leaf "j";;
let k = Tree_v.make_of_leaf "k";;

let e = Tree_v.make_of_node "e" [i; j; k];;
let d = Tree_v.make_of_node "d" [g; h];;
let c = Tree_v.make_of_node "c" [d; e; f];;
let a = Tree_v.make_of_node "a" [b; c];;

(** tree ax
     a
    / \
   b   c---x
      / \
     d   e
        /|\
       f g h
*)

let x = Tree_v.make_of_leaf "x";;
let cx = Tree_v.right_add_tree_of_topson_tree_of_tree x c;;
let xc = Tree_v.left_add_tree_of_topson_tree_of_tree x c;;
let ax = Tree_v.make "a" [b; cx];;


test_number 1 (
a 
(* : string Tree_t.tree *) 
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "b";
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])])
);;

test_number 2 (
(ax : string Tree_t.tree )
=
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
      Tree_t.Leaf "f"; Tree_t.Leaf "x"])])
);;

let xa = Tree_v.make "a" [b; xc];;

test_number 3 (
(xa : string Tree_t.tree ) =
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Leaf "x";
      Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
      Tree_t.Leaf "f"])])
);;

test_number 4 (
Tree_v.root_off_tree c 
  =
"c"
);;

test_number 5 (
Tree_v.root_notleaf_off_tree c 
  =
"c"
);;

(* {Topson_tree} *)

test_number 6 (
Tree_v.topson_tree_list_off_tree a
  =
[b; c]
);;

let stl = Tree_v.topson_tree_list_of_topson_tree_predicate_off_tree (fun s -> Tree_v.is_inner s) a;;
test_number 7 (
(stl : string Tree_t.tree list ) =
[c]
);;

let stl = Tree_v.topson_tree_list_of_topson_tree_predicate_off_tree (fun s -> Tree_v.is_leaf s) a;;
test_number 8 (
(stl : string Tree_t.tree list ) =
[b]
);;

let stl = Tree_v.topson_tree_list_of_topson_tree_predicate_off_tree (fun s -> s = c) a;;
test_number 9 (
(stl : string Tree_t.tree list ) =
[Tree_t.Inner ("c",
	       [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
		Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
		Tree_t.Leaf "f"])]
);;

let st = Tree_v.subtree_of_node_predicate_off_tree (fun s -> s = "c") a;;
test_number 10 (
( st : string Tree_t.tree ) =
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])
);;

let st = Tree_v.first_subtree_of_node_predicate_off_tree (fun s -> s > "c") a;;
test_number 11 (
(st : string Tree_t.tree) =
d
);;


test_number 12 (
Tree_v.subtree_list_of_node_predicate_off_tree (fun s -> s > "c") a
  =
[d; e; f]
);;
 
let u = Tree_v.map String.uppercase ax;;

test_number 13 (
u 
  =
  Tree_t.Inner ("A",
   [Tree_t.Leaf "B";
    Tree_t.Inner ("C",
     [Tree_t.Inner ("D", [Tree_t.Leaf "G"; Tree_t.Leaf "H"]);
      Tree_t.Inner ("E", [Tree_t.Leaf "I"; Tree_t.Leaf "J"; Tree_t.Leaf "K"]);
      Tree_t.Leaf "F"; Tree_t.Leaf "X"])])
);;

(* iter *)
let print_str ppf str = Format.fprintf ppf "%s" str;;
let str = Tree_v.iter (print_str Format.str_formatter) a;
Format.flush_str_formatter();;

test_number 14 (
str 
=
"abcdgheijkf"
);;

test_number 15 (
Tree_v.node_filter_of_node_predicate_off_tree (fun s -> s > "E") u
  =
["G"; "H"; "I"; "J"; "K"; "F"; "X"]
);;

let b_at_e = Tree_v.replace_of_vertex_of_value_of_tree "e" "b" a;;

(** b_at_e 

       a
     /   \
   b      c
       /  | \ 
     d    b   f  <--- b twice
   / |   /|\
  g  h  i j k

*) 
test_number 16 (
b_at_e 
(* : string Tree_t.tree *)
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "b";
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("b", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])])
);;


let e_at_d = Tree_v.replace_subtree_of_node_predicate_of_subtree_of_tree (fun s -> s = "e") d a;;

(** e_at_d

       a
     /   \
   b      c
       /    | \ 
      e     e   f  
    / |\   /|\
   i  j k i j k

*) 
test_number 17 (
( e_at_d : string Tree_t.tree ) =
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Leaf "f"])])
);;


let tre = Tree_v.node_n_depth_tree_off_tree b_at_e ;;
test_number 18 (
( tre : (string * int) Tree_t.tree) =
Tree_t.Inner (("a", 1),
 [Tree_t.Leaf ("b", 2);
  Tree_t.Inner (("c", 2),
   [Tree_t.Inner (("d", 3), [Tree_t.Leaf ("g", 4); Tree_t.Leaf ("h", 4)]);
    Tree_t.Inner (("b", 3),
     [Tree_t.Leaf ("i", 4); Tree_t.Leaf ("j", 4); Tree_t.Leaf ("k", 4)]);
    Tree_t.Leaf ("f", 3)])])
);;

let pat = Tree_v.path_list_of_node_off_tree "b" b_at_e;;
test_number 19 (
pat
(* : string list list *)
= 
[["b"; "a"]; ["b"; "c"; "a"]]
);;

let nod_l = Tree_v.node_filter_of_node_predicate_off_tree (fun s -> s = "c") b_at_e;;
test_number 20 (
nod_l
  =
["c"]
);;
 
let nod_l = Tree_v.node_filter_of_node_predicate_off_tree (fun s -> s = "b") b_at_e;;
test_number 21 (
nod_l
  =
["b"; "b"]
);;
 
test_number 22 (
Tree_v.node_find_of_node_predicate_off_tree (fun s -> s = "b") b_at_e
  =
"b"
);;

test_number 23 (
Tree_v.is_topson_of_node_off_tree "b" a
);;

test_number 24 (
Tree_v.is_topson_of_node_off_tree "c" a
);;

test_number 25 (
Tree_v.is_leaf_of_node_off_tree "b" a
);;

test_number 26 (
Tree_v.is_leaf_of_node_off_tree "f" a
);;

test_number 27 (
Tree_v.is_leaf_of_node_off_tree "e" a
=
false
);;

test_number 28 (
Tree_v.subtree_of_node_off_tree "c" a 
=
c
);;

test_number 29 (
Tree_v.subtree_list_of_depth_off_tree 2 a
(* : string Tree_t.tree list *)
=
[b; c]
);;

(** tree a
       a
     /   \
   b      c
       /  | \ 
     d    e   f
   / |   /|\
  g  h  i j k

*)

test_number 30 (
Tree_v.node_list_off_tree a
(* : string list *)
=
["a"; "b"; "c"; "d"; "g"; "h"; "e"; "i"; "j"; "k"; "f"]
);;

let n_11 = Tree_v.make_of_leaf "n_11";;
let n_321 = Tree_v.make_of_leaf "n_321";;
let n_1121 = Tree_v.make_of_leaf "n_1121";;
let n_2121 = Tree_v.make_of_leaf "n_2121";;
let n_1221 = Tree_v.make_of_leaf "n_1221";;
let n_2221 = Tree_v.make_of_leaf "n_2221";;
let n_3221 = Tree_v.make_of_leaf "n_3221";;

let n_221 = Tree_v.make_of_node "n_221" [n_1221; n_2221; n_3221];;
let n_121 = Tree_v.make_of_node "n_121" [n_1121; n_2121];;
let n_21 = Tree_v.make_of_node "n_21" [n_121; n_221; n_321];;
let n_1 = Tree_v.make_of_node "n_1" [n_11; n_21];;

test_number 31 (
Tree_v.node_list_off_tree n_1
(* : string list *)
=
["n_1"; "n_11"; "n_21"; "n_121"; "n_1121"; "n_2121"; "n_221"; "n_1221";
 "n_2221"; "n_3221"; "n_321"]
);;

test_number 32 (
Tree_v.inner_node_list_off_tree a
(* : string list *)
=
["a"; "c"; "d"; "e"]
);;

let stl = Tree_v.subtree_list_off_tree a;;

test_number 33 (
(stl : string Tree_t.tree list) =
[a; c; d; e]
);;


let roo_n_sut_dl = Tree_v.root_n_subtree_doublet_list_off_tree a;;

test_number 34 (
(roo_n_sut_dl : (string * string Tree_t.tree) list) =
[("a", a); 
 ("c", c); 
 ("d", d); 
 ("e", e)]
);;

test_number 35 (
Tree_v.only_subtree_of_tree_predicate_of_depth_off_tree (fun t -> Tree_v.root_off_tree t ="b") 2 a
=
b 
);;

test_number 36 (
Tree_v.is_father_of_node_of_sonnode_off_tree "c" "e" a
);;

(* print *)

(**      
     v--w--x--y--z
*)

let elt_l = ["v"; "w"; "x"; "y"; "z"];;
let elt_t = Tree_v.tree_off_list elt_l;;

test_number 37 (
elt_t
  =
Tree_t.Inner 
  ("v", [Tree_t.Inner 
	   ("w", [Tree_t.Inner 
		    ("x", [Tree_t.Inner 
			     ("y", [Tree_t.Leaf "z"])])])])
);;

test_number 38 (
elt_l = Tree_v.node_list_off_tree (Tree_v.tree_off_list elt_l)
);;

(** tree a
       a
     /   \
   b      c
       /  | \ 
     d    e   f
   / |   /|\
  g  h  i j k

"{a,[b {c,[{d,[g h]} {e,[i j k]} f]}]}"
*)

let nam_lin = Tree_v.name_linear (fun s -> s ) ",\n" a;;

test_number 39 (
(nam_lin : string) =
"{a,\n[b;   {c,\n  [    {d,\n    [g; h]};     {e,\n    [i; j; k]}; f]}]}"
);; 

let nam_ws = Tree_v.name_with_separator (fun s -> s ) "," "; " a;;

test_number 40 (
(nam_ws : string) =
  "\n{a,\n [\n   b; \n {c,\n [\n   \n  {d,\n [\n   g; h\n  ]}; \n  {e,\n [\n   i; j; k\n  ]}; f\n  ]}\n  ]}"
);; 

let nam_inc = Tree_v.name_in_column (fun s -> s ) "," a;;

test_number 41 (
(nam_inc : string) =
"\n{a,\n [\n   b;\n   \n {c,\n [\n   \n  {d,\n [\n   g;\n   h\n  ]};\n   \n  {e,\n [\n   i;\n   j;\n   k\n  ]};\n   f\n  ]}\n  ]}"
);; 

let nam = Tree_v.name (fun s -> s ) a;;

test_number 42 (
(nam : string) = "\n{a,\n [\n   b \n {c,\n [\n   \n  {d,\n [\n   g h\n  ]} \n  {e,\n [\n   i j k\n  ]} f\n  ]}\n  ]}"
);; 

let sub_t = Tree_v.subtree_find_of_tree_predicate_off_tree  (fun t -> t = c ) a;;

test_number 43 (
sub_t 
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])
);;

let sub_t = Tree_v.subtree_find_of_node_predicate_off_tree  (fun n -> n = "c" ) a;;

test_number 44 (
sub_t 
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])
);;

let q = Tree_v.subtree_remove_of_node_predicate_off_tree (fun s -> s = "d" || s = "g") a ;;
test_number 45 (
q
=
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
      Tree_t.Leaf "f"])])
);;

test_number 46 (
Tree_v.subtree_remove_of_node_predicate_off_tree (fun s -> s > "e") a
=
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b"; 
    Tree_t.Inner ("c", [Tree_t.Leaf "d"; Tree_t.Leaf "e"])])
);;

let ec = Tree_v.subtree_remove_of_node_predicate_off_tree (fun s -> s = "e") a ;;

test_number 47 (
ec
=
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Leaf "f"])])
);;

test_number 48 (
 Tree_v.subtree_add (fun s -> s = "c") e ec
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "b";
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]); Tree_t.Leaf "f";
    Tree_t.Inner ("e", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"])])])
);;

test_number 49 (
 Tree_v.subtree_add (fun s -> s = "c") e ec <> a
);;

test_number 50 (
Tree_v.map2 (fun s t -> s^":"^t) ax u
=
Tree_t.Inner ("a:A",
 [Tree_t.Leaf "b:B";
  Tree_t.Inner ("c:C",
   [Tree_t.Inner ("d:D", [Tree_t.Leaf "g:G"; Tree_t.Leaf "h:H"]);
    Tree_t.Inner ("e:E",
     [Tree_t.Leaf "i:I"; Tree_t.Leaf "j:J"; Tree_t.Leaf "k:K"]);
    Tree_t.Leaf "f:F"; Tree_t.Leaf "x:X"])])
);;

test_number 51 ( 
Tree_v.path_tree_off_tree a
(* : string list Tree_t.tree *)
=
Tree_t.Inner (["a"],
 [Tree_t.Leaf ["b"; "a"];
  Tree_t.Inner (["c"; "a"],
   [Tree_t.Inner (["d"; "c"; "a"],
     [Tree_t.Leaf ["g"; "d"; "c"; "a"]; Tree_t.Leaf ["h"; "d"; "c"; "a"]]);
    Tree_t.Inner (["e"; "c"; "a"],
     [Tree_t.Leaf ["i"; "e"; "c"; "a"]; Tree_t.Leaf ["j"; "e"; "c"; "a"];
      Tree_t.Leaf ["k"; "e"; "c"; "a"]]);
    Tree_t.Leaf ["f"; "c"; "a"]])])
);;

let pat = Tree_v.path_of_node_off_tree "d" a;;
test_number 52 (
pat
(* : string list *)
=
["d"; "c"; "a"]
);;

let fat = Tree_v.father_of_node_of_tree "d" a;; 
test_number 53 (
fat
(* : string list *)
=
"c"
);;

test_number 54 ( 
Tree_v.leaf_path_list_off_tree a
=
[["b"; "a"]; ["g"; "d"; "c"; "a"]; ["h"; "d"; "c"; "a"];
 ["i"; "e"; "c"; "a"]; ["j"; "e"; "c"; "a"]; ["k"; "e"; "c"; "a"];
 ["f"; "c"; "a"]]
);;

test_number 55 ( 
Tree_v.father_list_off_tree a
(* : string list Tree_t.tree *)
=
["a"; "c"; "d"; "e"]
);;

test_number 56 ( 
Tree_v.topson_node_list_off_tree a
(* : string list Tree_t.tree *)
=
["b"; "c"]
);;

let nod_l = Tree_v.root_topson_node_list_off_tree a;;
test_number 57 ( 
(nod_l : string list ) =
["a"; "b"; "c"]
);;

let nod_l = Tree_v.root_topson_notleaf_node_list_off_tree a;;
test_number 58 ( 
(nod_l : string list ) =
["a"; "c"]
);;

let d_at_e = Tree_v.replace_of_vertex_of_value_of_tree "e" "d" a;;

(** d_at_e 
       a
     /   \
   b      c
       /  | \ 
     d    d   f  <--- d twice
   / |   /|\
  g  h  i j k

*) 

test_number 59 (
d_at_e 
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("c",
     [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
      Tree_t.Inner ("d", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
      Tree_t.Leaf "f"])])
);;

test_number 60 (
Tree_v.replace_of_vertex_of_value_of_tree "e" "z" a
(* : string Tree_t.tree *)
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "b";
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("z", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])])
);;

test_number 61 (
Tree_v.replace_of_node_predicate_of_value_of_tree (fun s-> s="e") "z" a
(* : string Tree_t.tree *)
=
Tree_t.Inner ("a",
 [Tree_t.Leaf "b";
  Tree_t.Inner ("c",
   [Tree_t.Inner ("d", [Tree_t.Leaf "g"; Tree_t.Leaf "h"]);
    Tree_t.Inner ("z", [Tree_t.Leaf "i"; Tree_t.Leaf "j"; Tree_t.Leaf "k"]);
    Tree_t.Leaf "f"])])
);;

test_number 62 (
Tree_v.node_n_depth_list_of_node_of_depth_off_tree "b" 2 b_at_e
(* : (string * int) list *)
=
 [("b", 2)]
);;

test_number 63 (
Tree_v.node_n_depth_list_of_node_of_depth_off_tree "d" 3 d_at_e
(* : (string * int) list *)
= 
[("d", 3); ("d", 3)]
);;

test_number 64 (
Tree_v.depth_tree_off_tree a
(* : int Tree_t.tree *)
=
Tree_t.Inner (1,
 [Tree_t.Leaf 2;
  Tree_t.Inner (2,
   [Tree_t.Inner (3, [Tree_t.Leaf 4; Tree_t.Leaf 4]);
    Tree_t.Inner (3, [Tree_t.Leaf 4; Tree_t.Leaf 4; Tree_t.Leaf 4]);
    Tree_t.Leaf 3])])
);;

test_number 65 (
Tree_v.node_n_depth_tree_off_tree a
(* : (string * int) Tree_t.tree *)
  =
Tree_t.Inner (("a", 1),
 [Tree_t.Leaf ("b", 2);
  Tree_t.Inner (("c", 2),
   [Tree_t.Inner (("d", 3), [Tree_t.Leaf ("g", 4); Tree_t.Leaf ("h", 4)]);
    Tree_t.Inner (("e", 3),
     [Tree_t.Leaf ("i", 4); Tree_t.Leaf ("j", 4); Tree_t.Leaf ("k", 4)]);
    Tree_t.Leaf ("f", 3)])])
);;

test_number 66 (
Tree_v.node_n_depth_list_of_node_predicate_off_tree (fun s -> s ="b") b_at_e
(* : (string * int) list *)
= 
[("b", 2); ("b", 3)]
);;

test_number 67 (
Tree_v.find_of_node_of_depth_off_tree "b" 2 b_at_e
=
"b"
);;

test_number 68 (
Tree_v.is_sequential_of_node_n_depth_list [("c", 3); ("b", 2); ("a", 1)]
);;

test_number 69 (
Tree_v.is_sequential_of_node_n_depth_list [("c", 4); ("b", 3); ("a", 2)]
=
false
);;

test_number 70 (
Tree_v.is_unique_of_node_off_tree "d" d_at_e
(* : bool *)
=
false
);;

test_number 71 (
Tree_v.is_complete u
);;

test_number 72 (
Tree_v.is_complete (Tree_v.make_of_node "e" [])
);;

(** tree a2

     a2
    /  \
   b2   c2
  /    / \
 d2   e2  f2

*)

let f2 = Tree_v.make_of_leaf "f2";;
let e2 = Tree_v.make_of_leaf "e2";;
let d2 = Tree_v.make_of_leaf "d2";;


let c2 = Tree_v.make_of_node "c2" [e2; f2;];;
let b2 = Tree_v.make_of_node "b2" [d2];;
let a2 = Tree_v.make_of_node "a2" [b2; c2];;

test_number 73 (
a2 
(* : string Tree_t.tree *)
=
  Tree_t.Inner ("a2",
   [Tree_t.Inner ("b2", [Tree_t.Leaf "d2"]);
    Tree_t.Inner ("c2", [Tree_t.Leaf "e2"; Tree_t.Leaf "f2"])])
);;

test_number 74 (
Tree_v.node_list_off_tree a2
  =
["a2"; "b2"; "d2"; "c2"; "e2"; "f2"]
);;

test_number 75 (
Tree_v.leaf_node_list_off_tree a2
(* : string list *)
= 
["d2"; "e2"; "f2"]
);;

test_number 76 (
Tree_v.topson_node_list_off_tree a2
=
["b2"; "c2"]
);;

test_number 77 (
Tree_v.topson_notleaf_node_list_off_tree a2
  =
["b2"; "c2"]
);;

test_number 78 (
Tree_v.noroot_node_list_off_tree a2
=
["b2"; "d2"; "c2"; "e2"; "f2"]
);;

test_number 79 (
Tree_v.noroot_noleaf_node_list_off_tree a2
=
["b2"; "c2"]
);;

test_number 80 (
Tree_v.noroot_notopson_noleaf_node_list_off_tree a2
(* : string list *)
 = 
[]
);;

test_number 81 (
Tree_v.has_no_topson_leaf_of_tree a2
);;

test_number 82 (
Tree_v.has_no_topson_inner_of_tree c2
);;

test_number 83 (
Tree_v.has_some_topson_leaf_of_tree a
);;

test_number 84 (
Tree_v.has_some_topson_inner_of_tree a
);;

test_number 85 (
Tree_v.node_list_off_tree a
  =
["a"; "b"; "c"; "d"; "g"; "h"; "e"; "i"; "j"; "k"; "f"]
);;

test_number 86 (
Tree_v.leaf_node_list_off_tree a
(* : string list *)
= 
["b"; "g"; "h"; "i"; "j"; "k"; "f"]
);;

test_number 87 (
Tree_v.topson_node_list_off_tree a
=
["b"; "c"]
);;

test_number 88 (
Tree_v.topson_leaf_node_list_off_tree a
(* : string list *)
= 
["b"]
);;


let lea = Tree_v.only_topson_leaf_node_of_node_predicate_off_tree (fun s -> s = "b") a;;

test_number 89 (
lea
(* : string *)
= 
"b"
);;

let lea = Tree_v.only_topson_leaf_node_off_tree a;;

test_number 90 (
lea
(* : string *)
= 
"b"
);;

test_number 91 (
Tree_v.topson_notleaf_node_list_off_tree a
(* : string list *)
= 
["c"]
);;

test_number 92 (
Tree_v.grandson_node_list_off_tree a
(* : string list *)
= 
 ["d"; "g"; "h"; "e"; "i"; "j"; "k"; "f"]
);;

test_number 93 (
Tree_v.grandson_leaf_node_list_off_tree a
(* : string list *)
= 
["g"; "h"; "i"; "j"; "k"; "f"]
);;

test_number 94 (
Tree_v.grandson_notleaf_node_list_off_tree a
(* : string list *)
= 
["d"; "e"]
);;

test_number 95 (
Tree_v.has_unique_son_of_tree c2
=
false
);;

test_number 96 (
Tree_v.has_unique_son_of_tree b2
=
true
);;

test_number 97 (
Tree_v.has_unique_leaf_son_of_tree b2
=
true
);;

test_number 98 (
Tree_v.topson_notleaf_node_list_off_tree a
  =
["c"]
);;

test_number 99 (
Tree_v.noroot_node_list_off_tree a
=
["b"; "c"; "d"; "g"; "h"; "e"; "i"; "j"; "k"; "f"]
);;

test_number 100 (
Tree_v.noroot_noleaf_node_list_off_tree a
=
["c"; "d"; "e"]
);;

test_number 101 (
Tree_v.noroot_notopson_noleaf_node_list_off_tree a
(* : string list *)
 = 
["d"; "e"]
);;

test_number 102 (
List.length (Tree_v.node_list_off_tree a) 
=
List.length (Tree_v.noroot_notopson_noleaf_node_list_off_tree a)
+ List.length (Tree_v.topson_notleaf_node_list_off_tree a)
+ List.length (Tree_v.leaf_node_list_off_tree a)
+ 1
);;


(** tree a3
      a3
    /  \
   b3   c3
  /     \
 d3      e3
        / \
       f3  g3
*)


let g3 = Tree_v.make_of_leaf "g3";;
let f3 = Tree_v.make_of_leaf "f3";;
let d3 = Tree_v.make_of_leaf "d3";;


let e3 = Tree_v.make_of_node "e3" [f3; g3];;
let c3 = Tree_v.make_of_node "c3" [e3];;
let b3 = Tree_v.make_of_node "b3" [d3];;
let a3 = Tree_v.make_of_node "a3" [b3; c3];;

test_number 103 (
Tree_v.has_unique_leaf_son_of_tree b3
=
true
);;

test_number 104 (
Tree_v.has_unique_son_of_tree c3
=
true
);;

test_number 105 (
Tree_v.has_unique_leaf_son_of_tree c3
=
false
);;

test_number 106 (
Tree_v.has_unique_leaf_son_of_node_of_tree "c3" a3
=
false
);;

test_number 107 (
Tree_v.has_unique_son_of_node_of_tree "c3"  a3
=
true
);;

test_number 108 (
Tree_v.has_all_node_unique_of_tree a3
);;

test_number 109 (
Tree_v.has_all_node_unique_of_tree d_at_e
=
false
);;

test_number 110 (
Tree_v.non_unique_node_list_off_tree d_at_e
=
["d"]
);;

test_number 111 (
Tree_v.non_unique_node_list_off_tree a3
=
[]
);;

test_number 112 (
Tree_v.is_inner_of_node_off_tree "c3"  a3
=
true
);;

test_number 113 (
Tree_v.is_inner_of_node_off_tree "f3"  a3
=
false
);;

(** tree a4
       a4
      /  \
    b4    c4
   / |   / | \
 d4  e4 f4 g4 h4
             / \
            i4  j4
*)


let d4 = Tree_v.make_of_leaf "d4";;
let e4 = Tree_v.make_of_leaf "e4";;
let f4 = Tree_v.make_of_leaf "f4";;
let g4 = Tree_v.make_of_leaf "g4";;
let i4 = Tree_v.make_of_leaf "i4";;
let j4 = Tree_v.make_of_leaf "j4";;

let h4 = Tree_v.make_of_node "h4" [i4; j4];;
let b4 = Tree_v.make_of_node "b4" [d4; e4;];;
let c4 = Tree_v.make_of_node "c4" [f4; g4; h4];;
let a4 = Tree_v.make_of_node "a4" [b4; c4];;

let t_l = [a4; b4; c4];;

let bool_of_t t = Tree_v.has_node_of_node_predicate_off_tree (fun n -> n = "f4") t;;
let boo = bool_of_t c4;;

let boo	= List.exists bool_of_t t_l;;

test_number 114 (
boo
);;


let boo = Tree_v.has_topson_of_leaf_predicate_of_tree (fun n -> n = "d4") a4;;

test_number 115 (
boo = false
);;

let boo = Tree_v.has_topson_of_leaf_predicate_of_tree (fun n -> n = "d4") b4;;

test_number 116 (
boo
);;

let tso_l = Tree_v.topson_node_list_of_node_predicate_off_tree (fun n -> n = "c4") a4;;
test_number 117 (
(tso_l : string list ) = 
["f4"; "g4"; "h4"]
);;

let tso_l = Tree_v.topson_node_list_of_node_predicate_off_tree (fun n -> n = "c4") c4;;
test_number 118 (
(tso_l : string list ) = 
["f4"; "g4"; "h4"]
);;

test_number 119 (
Tree_v.topson_notleaf_node_list_off_tree c4
=
["h4"]
);;

test_number 120 (
Tree_v.has_homogeneous_son_tree_list_of_tree a3
=
true
);;

test_number 121 (
Tree_v.has_homogeneous_son_tree_list_of_tree a4
=
false
);;

test_number 122 (
Tree_v.first_inhomogeneous_node_off_tree a4
= 
"c4"
);;  

test_number 123 (
Tree_v.first_inhomogeneous_node_n_son_node_off_tree a 
=
("a", "c")
);;
 
test_number 124 (
Tree_v.first_inhomogeneous_node_n_son_node_off_tree a4
=
("c4", "h4")
);;
 
test_number 125 (
Tree_v.has_some_leaf_of_tree_list [b4; c4; j4]
);;

test_number 126 (
Tree_v.has_some_leaf_of_tree_list [b4; c4; h4]
=
false
);;

let boo = Tree_v.has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree (fun s->s ="b") (fun s->s ="c") a;;

test_number 127 (
boo
);;

let boo = Tree_v.has_node_of_node_predicate_off_tree (fun s -> s = "c") a;;
test_number 128 (boo);;

let boo = Tree_v.has_topson_of_node_predicate_off_tree (fun s -> s = "c") a;;
test_number 129 (boo);;

let tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree  (fun s -> s = "c")  a;;

test_number 130 (
(tso_l : string list ) = 
["c"; "d"; "e"; "f"]
);;


let f = Tree_v.make_of_leaf "x";;

let e = Tree_v.element_off_leaf f;;

test_number 131 (
(e : string ) = 
"x"
);;

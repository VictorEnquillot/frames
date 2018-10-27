open Make_test_v;;

testing "Leafed_indexed_tree_v";;

(* toplevel 
   #use "leafed_indexed_tree_u_any.ml";; 
*)


(**      
----------------------
     "a"         nabc
     / \
  "v"  nbc
   1    2
                         a node has no index in nabc tree
                         v leaf has index 1 in nabc tree
                         nbc sub-tree has index 2 in nabc tree         
---------------------
       "b"       nbc
       / \
     "w"  nc
      1   2
                         b node has no index in nbc tree
                         w leaf has index 1 in nbc tree
                         nc sub-tree has index 2 in nbc tree         
---------------------
          "c"     nc     c node has no index in nc tree
          /|\
         / | \
      "x" "y" "z"
       1   2   3
                         x leaf has index 1 in nc tree         
                         y leaf has index 2 in nc tree         
                         z leaf has index 3 in nc tree         
*)

let v = Lit_v.make_of_leaf "v";;
let w = Lit_v.make_of_leaf "w";;
let x = Lit_v.make_of_leaf "x";;
let y = Lit_v.make_of_leaf "y";;
let z = Lit_v.make_of_leaf "z";;


let nc = Lit_v.make_of_node "c" [(x, 1); (y, 2); (z, 3)];;
let nbc = Lit_v.make_of_node "b" [(w, 1); (nc, 2)];;
let nabc = Lit_v.make_of_node "a" [(v, 1); (nbc, 2)];;

test_number 1 ( 
  v (*: ('a, 'b, string) Lit_t.leafed_indexed_tree *)
    = 
  Lit_t.Leaf "v"
 );;

test_number 2 ( 
nc (* : (string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
  =
Leafed_indexed_tree_t.Inner ("c",
   [(Leafed_indexed_tree_t.Leaf "x", 1); 
    (Leafed_indexed_tree_t.Leaf "y", 2);
    (Leafed_indexed_tree_t.Leaf "z", 3)])
);;

test_number 3 (
nbc (* : (string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
=
  Leafed_indexed_tree_t.Inner ("b",
   [(Leafed_indexed_tree_t.Leaf "w", 1);
    (Leafed_indexed_tree_t.Inner ("c",
      [(Leafed_indexed_tree_t.Leaf "x", 1);
       (Leafed_indexed_tree_t.Leaf "y", 2);
       (Leafed_indexed_tree_t.Leaf "z", 3)]), 2)])
);;

test_number 4 ( 
nabc (* : (string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
  =
Leafed_indexed_tree_t.Inner ("a",
   [(Leafed_indexed_tree_t.Leaf "v", 1);
    (Leafed_indexed_tree_t.Inner ("b",
      [(Leafed_indexed_tree_t.Leaf "w", 1);
       (Leafed_indexed_tree_t.Inner ("c",
         [(Leafed_indexed_tree_t.Leaf "x", 1);
          (Leafed_indexed_tree_t.Leaf "y", 2);
          (Leafed_indexed_tree_t.Leaf "z", 3)]),
        2)]),
     2)])
);;

test_number 5 ( 
Lit_v.map (fun s -> s^"_") (fun i -> i * 10) (fun s -> s^"%") nabc 
(* : (string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
=
Leafed_indexed_tree_t.Inner ("a_",
 [(Leafed_indexed_tree_t.Leaf "v%", 10);
  (Leafed_indexed_tree_t.Inner ("b_",
    [(Leafed_indexed_tree_t.Leaf "w%", 10);
     (Leafed_indexed_tree_t.Inner ("c_",
       [(Leafed_indexed_tree_t.Leaf "x%", 10);
        (Leafed_indexed_tree_t.Leaf "y%", 20);
        (Leafed_indexed_tree_t.Leaf "z%", 30)]),
      20)]),
   20)])
);;

let nam_i i = Format.sprintf "%i" i;;
test_number 6 ( 
Lit_v.name (fun s -> s) nam_i (fun s -> s) nabc 
(*: string *)
= 
"{a [(v,1)({b [(w,1)({c [(x,1)(y,2)(z,3)]},2)]},2)]}"
);;

test_number 7 ( 
Lit_v.root_off_leafed_indexed_tree nc 
(*: string *)
= 
"c"
);;

test_number 8 ( 
Lit_v.root_son_doublet_list_off_leafed_indexed_tree_node nabc
(* : ((string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree, int)
    Doublet_list_t.doublet_list *)
=
[(Leafed_indexed_tree_t.Leaf "v", 1);
 (Leafed_indexed_tree_t.Inner ("b",
   [(Leafed_indexed_tree_t.Leaf "w", 1);
    (Leafed_indexed_tree_t.Inner ("c",
      [(Leafed_indexed_tree_t.Leaf "x", 1);
       (Leafed_indexed_tree_t.Leaf "y", 2);
       (Leafed_indexed_tree_t.Leaf "z", 3)]),
     2)]),
  2)]
);;


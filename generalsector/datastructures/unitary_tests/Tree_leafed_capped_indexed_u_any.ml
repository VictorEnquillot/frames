open Make_test_v;;

testing "Tree_leafed_capped_indexed_v";;

(* toplevel 
   #use "tree_leafed_capped_indexed_u_any.ml";; 
*)


(**      
----------------------
     true         n1bc
     / \
  "v"  nbc
   1    2
                         a node has no index in n1bc tree
                         v leaf has index 1 in n1bc tree
                         nbc sub-tree has index 2 in n1bc tree         
---------------------
       2.0       nbc
       / \
     "w"  nc
      1   2
                         b node has no index in nbc tree
                         w leaf has index 1 in nbc tree
                         nc sub-tree has index 2 in nbc tree         
---------------------
          3.0     nc     c node has no index in nc tree
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

let nc = Lit_v.make_of_node 3.0 [(x, 1); (y, 2); (z, 3)];;
let nbc = Lit_v.make_of_node 2.0 [(w, 1); (nc, 2)];;
let n1bc = Clit_v.make true [(v, 1); (nbc, 2)];;

test_number 1 ( 
  v (*: ('a, 'b, string) Lit_t.leafed_indexed_tree *)
    = 
  Lit_t.Leaf "v"
 );;

test_number 2 ( 
nc (* : (float, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
  =
Leafed_indexed_tree_t.Inner (3.,
   [(Leafed_indexed_tree_t.Leaf "x", 1); 
    (Leafed_indexed_tree_t.Leaf "y", 2);
    (Leafed_indexed_tree_t.Leaf "z", 3)])
);;

test_number 3 (
nbc (* : (float, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
=
  Leafed_indexed_tree_t.Inner (2.,
   [(Leafed_indexed_tree_t.Leaf "w", 1);
    (Leafed_indexed_tree_t.Inner (3.,
      [(Leafed_indexed_tree_t.Leaf "x", 1);
       (Leafed_indexed_tree_t.Leaf "y", 2);
       (Leafed_indexed_tree_t.Leaf "z", 3)]), 2)])
);;

test_number 4 ( 
n1bc 
(* : (bool, float, int, string)
    Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed *)
=
(true,
 [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "v", 1);
  (Tree_leafed_capped_indexed_t.Lit_t.Inner (2.,
    [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "w", 1);
     (Tree_leafed_capped_indexed_t.Lit_t.Inner (3.,
       [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "x", 1);
        (Tree_leafed_capped_indexed_t.Lit_t.Leaf "y", 2);
        (Tree_leafed_capped_indexed_t.Lit_t.Leaf "z", 3)]),
      2)]),
   2)])
);;

test_number 5 ( 
Clit_v.cap_off_tree_leafed_capped_indexed n1bc
(* : bool *)
=
true
);;

test_number 6 (
Clit_v.leafed_indexed_tree_doublet_list_off_tree_leafed_capped_indexed n1bc
(* : ((float, int, string) Leafed_indexed_tree_t.leafed_indexed_tree, int)
    Doublet_list_t.doublet_list *)
=
[(Leafed_indexed_tree_t.Leaf "v", 1);
 (Leafed_indexed_tree_t.Inner (2.,
   [(Leafed_indexed_tree_t.Leaf "w", 1);
    (Leafed_indexed_tree_t.Inner (3.,
      [(Leafed_indexed_tree_t.Leaf "x", 1);
       (Leafed_indexed_tree_t.Leaf "y", 2);
       (Leafed_indexed_tree_t.Leaf "z", 3)]),
     2)]),
  2)]
);;

test_number 7 (
Clit_v.name 
  (fun c -> Format.sprintf "%b" c) 
  (fun n -> Format.sprintf "%f" n) 
  (fun i -> Format.sprintf "%i" i) 
  (fun l -> Format.sprintf "%s" l) 
  n1bc 
(* : string *)
=
"(true,(v,1)({2.000000 [(w,1)({3.000000 [(x,1)(y,2)(z,3)]},2)]},2))"
);;

test_number 8 (
Clit_v.map (fun c -> not c) (fun n -> 10. *. n) (fun i -> -1 * i) (fun l -> l^"_") n1bc
(* : (bool, float, int, string)
    Tree_leafed_capped_indexed_t.tree_leafed_capped_indexed *)
=
(false,
 [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "v_", -1);
  (Tree_leafed_capped_indexed_t.Lit_t.Inner (20.,
    [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "w_", -1);
     (Tree_leafed_capped_indexed_t.Lit_t.Inner (30.,
       [(Tree_leafed_capped_indexed_t.Lit_t.Leaf "x_", -1);
        (Tree_leafed_capped_indexed_t.Lit_t.Leaf "y_", -2);
        (Tree_leafed_capped_indexed_t.Lit_t.Leaf "z_", -3)]),
      -2)]),
   -2)])
);;

test_number 9 (
Clit_v.leafed_indexed_tree_off_tree_leafed_capped_indexed 
(fun c -> Format.sprintf "%b" c) 
(fun n ->  Format.sprintf "%f" n) (fun l -> l^"_") n1bc
(* : (string, int, string) Leafed_indexed_tree_t.leafed_indexed_tree *)
 =
Leafed_indexed_tree_t.Inner ("true",
 [(Leafed_indexed_tree_t.Leaf "v_", 1);
  (Leafed_indexed_tree_t.Inner ("2.000000",
    [(Leafed_indexed_tree_t.Leaf "w_", 1);
     (Leafed_indexed_tree_t.Inner ("3.000000",
       [(Leafed_indexed_tree_t.Leaf "x_", 1);
        (Leafed_indexed_tree_t.Leaf "y_", 2);
        (Leafed_indexed_tree_t.Leaf "z_", 3)]),
      2)]),
   2)])
);;

test_number 10 (
Clit_v.indexed_tree_off_tree_leafed_capped_indexed 
 (fun c -> Format.sprintf "%b" c) 
 (fun n ->  Format.sprintf "%f" n) (fun l -> l^"_") n1bc
(* : (string, int) Indexed_tree_t.indexed_tree *)
=
Indexed_tree_t.Inner ("true",
 [(Indexed_tree_t.Leaf "v_", 1);
  (Indexed_tree_t.Inner ("2.000000",
    [(Indexed_tree_t.Leaf "w_", 1);
     (Indexed_tree_t.Inner ("3.000000",
       [(Indexed_tree_t.Leaf "x_", 1); (Indexed_tree_t.Leaf "y_", 2);
        (Indexed_tree_t.Leaf "z_", 3)]),
      2)]),
   2)])
);;

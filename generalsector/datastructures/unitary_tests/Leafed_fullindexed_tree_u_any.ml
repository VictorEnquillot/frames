open Make_test_v;;

testing "Leafed_fullindexed_tree_v";;

(* toplevel 
   #use "leafed_fullindexed_tree_u_any.ml";; 
*)


(**      
----------------------
    ("a",0)       nabc
     / \
  "v"  nbc
                         a node has fullindex 0 in nabc tree
                         v leaf has fullindex 1 in nabc tree
                         nbc sub-tree has fullindex 2 in nabc tree         
---------------------
      ("b",0)      nbc
       / \
     "w"  nc
                         b node has fullindex 0 in nbc tree
                         w leaf has fullindex 1 in nbc tree
                         nc sub-tree has fullindex 2 in nbc tree         
---------------------
         ("c",0)    nc   c node has fullindex 0 in nc tree
          /|\
         / | \
      "x" "y" "z"
       1   2   3
                         x leaf has fullindex 1 in nc tree         
*)

let v = Lft_v.make_of_leaf "v";;
let w = Lft_v.make_of_leaf "w";;
let x = Lft_v.make_of_leaf "x";;
let y = Lft_v.make_of_leaf "y";;
let z = Lft_v.make_of_leaf "z";;

let nc = Lft_v.make_of_node ("c", 0) [(x, 1); (y, 2); (z, 3)];;
let nbc = Lft_v.make_of_node ("b", 0) [(w, 1); (nc, 2)];;
let nabc = Lft_v.make_of_node ("a", 0) [(v, 1); (nbc, 2)];;

test_number 1 ( 
  v (*: ('a, 'b, string) Tree_leafed_t.leafed_fullindexed_tree *)
    = 
  Tree_leafed_t.Leaf "v"
 );;

test_number 2 ( 
nc (* : (string, int, string) Leafed_fullindexed_tree_t.leafed_fullindexed_tree *)
  =
Leafed_fullindexed_tree_t.Inner (("c", 0),
   [(Leafed_fullindexed_tree_t.Leaf "x", 1); 
    (Leafed_fullindexed_tree_t.Leaf "y", 2);
    (Leafed_fullindexed_tree_t.Leaf "z", 3)])
);;

test_number 3 (
nbc (* : (string, int, string) Leafed_fullindexed_tree_t.leafed_fullindexed_tree *)
=
  Leafed_fullindexed_tree_t.Inner (("b", 0),
   [(Leafed_fullindexed_tree_t.Leaf "w", 1);
    (Leafed_fullindexed_tree_t.Inner (("c", 0),
      [(Leafed_fullindexed_tree_t.Leaf "x", 1);
       (Leafed_fullindexed_tree_t.Leaf "y", 2);
       (Leafed_fullindexed_tree_t.Leaf "z", 3)]), 2)])
);;

test_number 4 ( 
nabc (* : (string, int, string) Leafed_fullindexed_tree_t.leafed_fullindexed_tree *)
  =
Leafed_fullindexed_tree_t.Inner (("a", 0),
   [(Leafed_fullindexed_tree_t.Leaf "v", 1);
    (Leafed_fullindexed_tree_t.Inner (("b", 0),
      [(Leafed_fullindexed_tree_t.Leaf "w", 1);
       (Leafed_fullindexed_tree_t.Inner (("c", 0),
         [(Leafed_fullindexed_tree_t.Leaf "x", 1);
          (Leafed_fullindexed_tree_t.Leaf "y", 2);
          (Leafed_fullindexed_tree_t.Leaf "z", 3)]),
        2)]),
     2)])
);;

test_number 5 ( 
Lft_v.map (fun s -> s^"_") (fun i -> i * 10) (fun s -> s^"%") nabc 
(* : (string, int, string) Leafed_fullindexed_tree_t.leafed_fullindexed_tree *)
=
Leafed_fullindexed_tree_t.Inner (("a_", 0),
 [(Leafed_fullindexed_tree_t.Leaf "v%", 10);
  (Leafed_fullindexed_tree_t.Inner (("b_", 0),
    [(Leafed_fullindexed_tree_t.Leaf "w%", 10);
     (Leafed_fullindexed_tree_t.Inner (("c_", 0),
       [(Leafed_fullindexed_tree_t.Leaf "x%", 10);
        (Leafed_fullindexed_tree_t.Leaf "y%", 20);
        (Leafed_fullindexed_tree_t.Leaf "z%", 30)]),
      20)]),
   20)])
);;

test_number 6 ( 
Lft_v.root_off_leafed_indexed_tree nc
(* : (string, int, string) Leafed_fullindexed_tree_t.leafed_fullindexed_tree *)
=
("a_", 0)
);;

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
  | Integer i ->  name_off_integer i
;;

let string_off_truc = function
  | String s -> s
  | _ -> failwith "Not_String:string_off_truc"
;;

let integer_off_truc = function
  | Integer s -> s
  | _ -> failwith "Not_Integer:integer_off_trucer"
;;


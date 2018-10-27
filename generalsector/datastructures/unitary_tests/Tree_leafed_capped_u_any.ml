open Make_test_v;;

testing "Tree_leafed_capped_v";;

(* toplevel 
   #use "Tree_leafed_capped_u_any.ml";; 

*)


(**      
         C
      /    \
     a      z
    / \    / \
   2   c  10  20
      / \
     4   e
        /|\
       6 7 8

*)

type cap = Cap of string ;;

let string_off_cap = function
  | Cap s -> s
;;

let name_off_cap = function
  | Cap s -> s
;;

let cap_add_string c s = 
  let str = (string_off_cap c)^s in
  Cap str
;;

let cap_add_cap c d = 
  let str = (string_off_cap c)^":"^(string_off_cap d) in
  Cap str
;;

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

let c = Cap "C";;

let ten =  Tree_leafed_v.make_of_leaf 10;;
let twenty =  Tree_leafed_v.make_of_leaf 20;;
let z = Tree_leafed_v.make_of_node "z" [ten; twenty];;

let clt_c = Tree_leafed_capped_v.make c [a; z];;

test_number 1 (
c
=
Cap "C"
);;

test_number 2 (
name_off_cap c
=
"C"
);;

test_number 3 ( 
z (* :  (string, int) Tree_leafed_t.tree_leafed *)
  = 
Tree_leafed_t.Inner 
  ("z", 
   [Tree_leafed_t.Leaf 10; Tree_leafed_t.Leaf 20]
  )
);;

let nam = Tree_leafed_v.name name_off_string name_off_integer z;;

test_number 4 (
(nam : string ) =
"{z, [\n   10 20\n  ]}"
);;

test_number 5 (
 a (* : (string, int) Tree_leafed_t.tree_leafed *) 
=
Tree_leafed_t.Inner ("a",
 [Tree_leafed_t.Leaf 2;
  Tree_leafed_t.Inner ("c",
   [Tree_leafed_t.Leaf 4;
    Tree_leafed_t.Inner ("e",
     [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7; Tree_leafed_t.Leaf 8])])])
);;

let nam = Tree_leafed_v.name name_off_string name_off_integer a;;

test_number 6 (
(nam : string ) =
  "{a, [\n   2 {c, [\n   4 {e, [\n   6 7 8\n  ]}\n  ]}\n  ]}"
);;

test_number 7 (
clt_c (* : (cap, string, int) Tree_leafed_capped_t.tree_leafed_capped *)
  =
(Cap "C",
 [Tree_leafed_t.Inner 
("a",
 [Tree_leafed_t.Leaf 2;
  Tree_leafed_t.Inner 
    ("c",
     [Tree_leafed_t.Leaf 4;
      Tree_leafed_t.Inner 
	("e",
	 [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7;
          Tree_leafed_t.Leaf 8])])]);
  Tree_leafed_t.Inner 
    ("z",
     [Tree_leafed_t.Leaf 10; Tree_leafed_t.Leaf 20])])
);;

test_number 8 (
Tree_leafed_capped_v.cap_off_tree_leafed_capped clt_c
=
Cap "C"
);;
 
test_number 9 (
Tree_leafed_capped_v.tree_leafed_list_off_tree_leafed_capped clt_c
=
[Tree_leafed_t.Inner 
("a",
 [Tree_leafed_t.Leaf 2;
  Tree_leafed_t.Inner 
    ("c",
     [Tree_leafed_t.Leaf 4;
      Tree_leafed_t.Inner 
	("e",
	 [Tree_leafed_t.Leaf 6; Tree_leafed_t.Leaf 7;
          Tree_leafed_t.Leaf 8])])]);
  Tree_leafed_t.Inner 
    ("z",
     [Tree_leafed_t.Leaf 10; Tree_leafed_t.Leaf 20])]
);;

test_number 10 (
Tree_leafed_capped_v.map (fun c -> cap_add_string c "_") (fun s -> s^"_") (fun i -> (-i)) clt_c
(* : (cap, string, int) Tree_leafed_capped_t.tree_leafed_capped *)
  =
(Cap "C_",
 [Tree_leafed_t.Inner ("a_",
   [Tree_leafed_t.Leaf (-2);
    Tree_leafed_t.Inner ("c_",
     [Tree_leafed_t.Leaf (-4);
      Tree_leafed_t.Inner ("e_",
       [Tree_leafed_t.Leaf (-6);
        Tree_leafed_t.Leaf (-7);
        Tree_leafed_t.Leaf (-8)])])]);
  Tree_leafed_t.Inner ("z_",
   [Tree_leafed_t.Leaf (-10);
    Tree_leafed_t.Leaf (-20)])])
);;

test_number 11 (
Tree_leafed_capped_v.map2 (fun c d -> cap_add_cap c d) (fun s t -> s^":"^t) (fun i j -> i +j ) clt_c clt_c
(* (cap, string, int) Tree_leafed_capped_t.tree_leafed_capped *)
=
(Cap "C:C",
 [Tree_leafed_t.Inner ("a:a",
   [Tree_leafed_t.Leaf 4;
    Tree_leafed_t.Inner ("c:c",
     [Tree_leafed_t.Leaf 8;
      Tree_leafed_t.Inner ("e:e",
       [Tree_leafed_t.Leaf 12;
        Tree_leafed_t.Leaf 14;
        Tree_leafed_t.Leaf 16])])]);
  Tree_leafed_t.Inner ("z:z",
   [Tree_leafed_t.Leaf 20; Tree_leafed_t.Leaf 40])])

);;

(*
(* a tree of truc *)

let s_t = Tree_leafed_v.map make_of_string make_of_integer a;;

test_number 12 (
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

test_number 13 (
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
*)

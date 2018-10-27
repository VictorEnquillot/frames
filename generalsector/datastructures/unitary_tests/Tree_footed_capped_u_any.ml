open Make_test_v;;

testing "Tree_footed_capped_v";;

(* toplevel 
   #use "Tree_footed_capped_u_any.ml";; 

*)


(* cap *)
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

(* foot *)

type foot = Foot of string ;;

let string_off_foot = function
  | Foot s -> s
;;

let name_off_foot = function
  | Foot s -> s
;;

let foot_add_string c s = 
  let str = (string_off_foot c)^s in
  Foot str
;;

let foot_add_foot c d = 
  let str = (string_off_foot c)^":"^(string_off_foot d) in
  Foot str
;;

(* type truc *)
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

(**      
    Cap
     |
     a  
    / \ 
  b 2  c
      / \
    d 4  e
        /|\
       6 7 8
       f g h
     |
    Foot
*)


let h_ = Tree_t.Leaf (make_of_integer 8);;
let g_ = Tree_t.Leaf (make_of_integer 7);;
let f_ = Tree_t.Leaf (make_of_integer 6);;
let b_ = Tree_t.Leaf (make_of_integer 2);;
let d_ = Tree_t.Leaf (make_of_integer 4);;

let e_ = Tree_t.Inner (make_of_string "e", [f_; g_; h_]);;
let c_ = Tree_t.Inner (make_of_string "c", [d_; e_]);;
let a_ = Tree_t.Inner (make_of_string "a", [b_; c_]);;

let h = Tree_v.make_of_leaf (make_of_integer 8);;
let g = Tree_v.make_of_leaf (make_of_integer 7);;
let f = Tree_v.make_of_leaf (make_of_integer 6);;
let b = Tree_v.make_of_leaf (make_of_integer 2);;
let d = Tree_v.make_of_leaf (make_of_integer 4);;

let e = Tree_v.make_of_node (make_of_string "e") [f; g; h];;
let c = Tree_v.make_of_node (make_of_string "c") [d; e];;
let a = Tree_v.make_of_node (make_of_string "a") [b; c];;

let ten =  Tree_v.make_of_leaf (make_of_integer 10);;
let twenty =  Tree_v.make_of_leaf (make_of_integer 20);;
let z = Tree_v.make_of_node (make_of_string "z") [ten; twenty];;

let cap = Cap "Cap";;
let foot = Foot "Foot";;

let cft = Tree_footed_capped_v.make cap a foot;;

test_number 1 (
cap
=
Cap "Cap"
);;

test_number 2 (
name_off_cap cap
=
"Cap"
);;

test_number 3 ( 
z 
(* : truc Tree_t.tree *)
  =
Tree_t.Inner (String "z",
	     [Tree_t.Leaf (Integer 10); Tree_t.Leaf (Integer 20)])
);;

let nam = Tree_v.name name_off_truc z;;


test_number 4 (
 a 
(* : truc Tree_t.tree *) 
=
Tree_t.Inner (String "a",
 [Tree_t.Leaf (Integer 2);
  Tree_t.Inner (String "c",
   [Tree_t.Leaf (Integer 4);
    Tree_t.Inner (String "e",
     [Tree_t.Leaf (Integer 6); Tree_t.Leaf (Integer 7);
      Tree_t.Leaf (Integer 8)])])])
);;

let nam = Tree_v.name name_off_truc a;;

test_number 5 (
cft 
(* : (cap, truc, foot) Tree_footed_capped_t.tree_footed_capped *)
=
(Cap "Cap",
 Tree_t.Inner (String "a",
  [Tree_t.Leaf (Integer 2);
   Tree_t.Inner (String "c",
    [Tree_t.Leaf (Integer 4);
     Tree_t.Inner (String "e",
      [Tree_t.Leaf (Integer 6);
       Tree_t.Leaf (Integer 7);
       Tree_t.Leaf (Integer 8)])])]),
 Foot "Foot")
);;

test_number 6 (
Tree_footed_capped_v.map (fun c -> cap_add_string c "_") (fun t -> t) (fun f -> foot_add_string f "+") cft
(* : (cap, truc, foot) Tree_footed_capped_t.tree_footed_capped *)
=
(Cap "Cap_",
 Tree_t.Inner (String "a",
  [Tree_t.Leaf (Integer 2);
   Tree_t.Inner (String "c",
    [Tree_t.Leaf (Integer 4);
     Tree_t.Inner (String "e",
      [Tree_t.Leaf (Integer 6);
       Tree_t.Leaf (Integer 7);
       Tree_t.Leaf (Integer 8)])])]),
 Foot "Foot+")
);;

(*
test_number 7 (
Capped_footed_list_v.map2 (fun c d -> c d) (fun s t -> s t) a a
(* (cap, string, int) Tree_leafed_capped_t.tree_leafed_capped *)
=
(Cap "C:C",
 [Tree_t.Inner ("a:a",
   [Tree_t.Leaf 4;
    Tree_t.Inner ("c:c",
     [Tree_t.Leaf 8;
      Tree_t.Inner ("e:e",
       [Tree_t.Leaf 12;
        Tree_t.Leaf 14;
        Tree_t.Leaf 16])])]);
  Tree_t.Inner ("z:z",
   [Tree_t.Leaf 20; Tree_t.Leaf 40])])

);;

(*
(* a tree of truc *)

let s_t = Tree_v.map make_of_string make_of_integer a;;

test_number 8 (
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

let t_t = Tree_v.tree_off_tree_leafed make_of_string make_of_integer a;;

test_number 9 (
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
*)

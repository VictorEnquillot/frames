open Make_test_v;;

testing "Tree_bunch_v";;

(* toplevel 
   #use "Tree_bunch_u_any.ml";; 

*)


(**      

     s

     a
    / \
   b   c
      /|\
     d e f

*)

let s ="s";;

let b = Tree_v.make "b" [];;
let d = Tree_v.make "d" [];;
let e = Tree_v.make "e" [];;
let f = Tree_v.make "f" [];;

let c = Tree_v.make "e" [d; e; f];;

let g_t = Tree_v.make "a" [b; c];;

let bch = Tree_bunch_v.make s g_t;;
let bch_2 = Tree_bunch_v.map String.uppercase bch;;
let bch_l = [bch; bch_2];;

test_number 1 (
 g_t (* : string Tree_t.tree *)
   =
 Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e", [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])])
);;

test_number 2 (
bch (* : (string list, string Tree_t.tree) Doublet_t.doublet *)
= 
(s, g_t)
);;

test_number 3 (
 bch_2 (* : (string list, string Tree_t.tree) Doublet_t.doublet  *)
=
("S",
 Tree_t.Inner ("A",
  [Tree_t.Leaf "B";
   Tree_t.Inner ("E", [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]))
);;

test_number 4 (
Tree_bunch_v.ankle_off_tree_bunch bch
=
s
);;

test_number 5 (
Tree_bunch_v.grape_off_tree_bunch bch
=
g_t
);;

test_number 6 (
Tree_bunch_v.list_off_tree_bunch bch
=
["s"; "a"; "b"; "e"; "d"; "e"; "f"]
);;

test_number 7 (
Tree_bunch_v.map2 (fun s t -> s^":"^t) bch bch_2
=
("s:S",
 Tree_t.Inner ("a:A",
  [Tree_t.Leaf "b:B";
   Tree_t.Inner ("e:E",
    [Tree_t.Leaf "d:D"; Tree_t.Leaf "e:E"; Tree_t.Leaf "f:F"])]))
);;

let nam = Tree_bunch_v.name (fun s -> s ) bch;;

test_number 8 (
bch_l (* : string Tree_bunch_t.tree_bunch list *) 
=
[("s",
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e",
     [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])]));
 ("S",
  Tree_t.Inner ("A",
   [Tree_t.Leaf "B";
    Tree_t.Inner ("E",
     [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]))]
);;

(**      

       s
      / \
     /   a
    /   / \
   |   b   c
   |      /|\
   |     d e f
   |
   S
    \
     A
    / \
   B   C
      /|\
     D E F

*)

test_number 9 (
Tree_bunch_v.tree_off_tree_bunch_list bch_l (* : string Tree_t.tree *)
=
Tree_t.Inner ("s",
 [Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e", [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])]);
  Tree_t.Inner ("S",
   [Tree_t.Inner ("A",
     [Tree_t.Leaf "B";
      Tree_t.Inner ("E", [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]);
    Tree_t.Empty])])
);;

let nam = Tree_v.name (fun s->s) (Tree_bunch_v.tree_off_tree_bunch_list bch_l);;

test_number 10 (
Tree_bunch_v.tree_of_tree_bunch_of_tree bch_2 g_t (* : string Tree_t.tree *)
=
Tree_t.Inner ("S",
 [Tree_t.Inner ("A",
   [Tree_t.Leaf "B";
    Tree_t.Inner ("E", [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]);
  Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e", [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])])])
);;

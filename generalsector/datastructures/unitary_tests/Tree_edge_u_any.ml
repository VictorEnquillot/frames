open Make_test_v;;

testing "Tree_edge_v";;

(* toplevel 
   #use "tedge_u_any.ml";; 
*)


(**      
     a
    / \
   b   c
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

let e = Tree_v.make "e" [f; g; h];;
let c = Tree_v.make "c" [d; e];;
let a = Tree_v.make "a" [b; c];;

test_number 1 (
Tree_edge_v.sonedge_list_off_tree e
=
[("e", "f"); ("e", "g"); ("e", "h")]
);;

test_number 2 (
Tree_edge_v.edge_list_off_tree a
=
[("a", "b"); ("a", "c"); ("c", "d"); ("c", "e"); ("e", "f"); ("e", "g");
 ("e", "h")]
);;

test_number 3 (
Tree_edge_v.edge_filter (fun (l, r) -> l=l && r > "d") a
=
[("c", "e"); ("e", "f"); ("e", "g"); ("e", "h")]
);;

test_number 4 (
Tree_edge_v.edge_list_of_left_element_predicate_off_tree (fun l -> l > "d") a
=
[("e", "f"); ("e", "g"); ("e", "h")]
);;

test_number 5 (
Tree_edge_v.edge_list_of_right_element_predicate_off_tree (fun r ->  r > "d") a
=
[("c", "e"); ("e", "f"); ("e", "g"); ("e", "h")]
);;

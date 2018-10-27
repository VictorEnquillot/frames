open Make_test_v;;

testing "Tree_v";;

(* toplevel 
   #use "debug.ml";; 
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

let x_from_a = path_of_node_off_tree "x" a;;
let b_from_a = path_of_node_off_tree "b" a;;
let b_from_c = path_of_node_off_tree "b" c;;

let e_from_a = path_of_node_off_tree "e" a;;
let e_from_e = path_of_node_off_tree "e" e;;
let f_from_a = path_of_node_off_tree "f" a;;
let f_from_b = path_of_node_off_tree "f" b;;
let f_from_c = path_of_node_off_tree "f" c;;
let f_from_d = path_of_node_off_tree "f" d;;
let f_from_e = path_of_node_off_tree "f" e;;

let f_from_f = path_of_node_off_tree "f" f;;
let f_from_h = path_of_node_off_tree "f" h;;
let x_from_f = path_of_node_off_tree "x" f;;

test_number 1 (
b_from_c
  =
[]
);;

test_number 2 (
b_from_a
  =
["b"; "a"]
);;

test_number 3 (
f_from_e
  =
["f"; "e"]
);;

test_number 4 (
f_from_c
  =
["f"; "e"; "c"]
);;

test_number 5 (
f_from_f
  =
["f"]
);;

test_number 6 (
x_from_f
  =
[]
);;

test_number 7 (
f_from_a
  =
["f"; "e"; "c"; "a"]
);;

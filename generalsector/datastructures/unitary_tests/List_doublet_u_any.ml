open Make_test_v;;

testing "List_doublet_v";;

(* toplevel 
   #use "list_doublet_u_any.ml";; 
 
*)

let lef_l = ["b"; "c"];;
let rig_l = [2; 3];;
let lst_d = List_doublet_v.make lef_l rig_l;;

test_number 1 (
lst_d 
(* : (string list, int list) Doublet_t.doublet *)
= 
(["b"; "c"], [2; 3])
);;


test_number 2 (
List_doublet_v.map (fun s -> s^"_") (fun i -> i * 10) lst_d
(* : (string list, int list) Doublet_t.doublet *)
= 
(["b_"; "c_"], [20; 30])
);;

test_number 3 (
List_doublet_v.map_left (fun s -> s^"_") lst_d
(* : (string list, int list) Doublet_t.doublet *)
= 
(["b_"; "c_"], [2; 3])
);;

test_number 4 (
List_doublet_v.map_right (fun i -> i * 10) lst_d
(* : (string list, int list) Doublet_t.doublet *)
=
(["b"; "c"], [20; 30])
);;


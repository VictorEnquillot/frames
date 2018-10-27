open Make_test_v;;

testing "List_v with
   list_u_continued.ml";;

(* toplevel 
   #use "list_u_continued.ml";; 

 *)

(* ((a + (b + c) ) + d ) + ((e + f) + g) *)
(* ((a + BC) + d ) + ((e + f) + g) *)
(* (ABC + d ) + ((e + f) + g) *)
(* ABCD + ((e + f) + g) *)
(* ABCD + (EF + g) *)
(* ABCD + EFG *)
(*
                 +
            +        +
        +      d   g    +   
    a       +         e   f
          b   c

*)


(* ((a + (b + c) ) + d ) + ((e + f) + g) *)
(* ((a + BC) + d ) + (EF + g) *)
(* ( ABC + d ) + EFG *)
(*  ABCD + EFG *)


let str_l = 
(*1    2              3                   3    2              1         1    2                             2              1 *)
["("; "("; "a"; "+"; "("; "b"; "+"; "c"; ")"; ")"; "+"; "d"; ")"; "+"; "("; "("; "d"; "+"; "e"; "+"; "f"; ")"; "+"; "g"; ")"];;


let ref_l = ["b"; "c"; "d"];;
let ref_l = ["x"; "y"];;

let lis_l = [["a"; "b"; "c"; "d"]; ["b"; "c"; "d"]; ["c"; "d"]];;
let cur = List.hd lis_l;;
let tl =  List.tl lis_l;;
let nex = List.hd tl;;



let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;


open Make_test_v;;

testing "Duo_list_v with
   duo_list_u_any.ml";;

(* toplevel 
   #use "Duo_list_u_any.ml";; 

*)

let l_l = ["a"; "b"; "c"; "d"];;
let r_l = ["w"; "x"; "y"; "z"];;

let duo_l = Duo_list_v.make l_l r_l;;

test_number 1 (
( duo_l : (string * string) list ) =
 [("a", "w"); ("b", "x"); ("c", "y"); ("d", "z")]
);;

let duo_ml = Duo_list_v.map (fun s -> s^"_") duo_l;;

test_number 2 (
(duo_ml : string Duo_t.duo list ) =
 [("a_", "w_"); ("b_", "x_"); ("c_", "y_"); ("d_", "z_")]
);;

let big_l = l_l @ r_l;;

test_number 3 (
(big_l : string list ) =
["a"; "b"; "c"; "d"; "w"; "x"; "y"; "z"]
);;

let duo_n_rem_l = List_v.first_duo_n_remainder_list_off_list big_l;;
 
test_number 4 (
(duo_n_rem_l : string Duo_t.duo * string list ) =
 (("b", "a"), ["c"; "d"; "w"; "x"; "y"; "z"])
);;

let str_l = Duo_list_v.list_of_duo_list duo_l;;

test_number 5 (
(str_l : string list ) = 
["a"; "w"; "b"; "x"; "c"; "y"; "d"; "z"]
);;

let duo_l = Duo_list_v.duo_list_of_list big_l;;

test_number 6 (
(duo_l : string Duo_t.duo list ) =
 [("a", "b"); ("c", "d"); ("w", "x"); ("y", "z")]
);;

let str_ld = Duo_list_v.list_duo_of_list big_l;;

test_number 7 (
(str_ld : string list Duo_t.duo ) = 
(["a"; "b"; "c"; "d"], ["w"; "x"; "y"; "z"])
);;

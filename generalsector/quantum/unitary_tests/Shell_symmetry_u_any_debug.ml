open Make_test_v;;

testing "Shell_symmetry_v with
    Shell_symmetry_u_any_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Shell_symmetry_u_any_debug.ml";; 

*)

open Shell_symmetry_v;;

let ssy = make_of_int 1;;

test_number 1 (
(ssy : Shell_symmetry_t.shell_symmetry ) = 
Shell_symmetry_t.P
);;

let i = int_of_shell_symmetry ssy;;

test_number 2 (
(i : int ) =
1
);;

let fio = first_int_ordinal_of_shell_symmetry_name "p";;

test_number 3 (
(fio : int ) = 
2
);;

let iss = index_of_shell_symmetry ssy;;

test_number 4 (
(iss : Index_p.index) = 
Index_p.index 1
);;

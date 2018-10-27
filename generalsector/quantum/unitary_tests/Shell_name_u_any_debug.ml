open Make_test_v;;

testing "Shell_name_v with
    Shell_name_u_any_debug.ml";;

(* Deleting Registers *)

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Shell_name_u_any_debug.ml";; 

*)

open Shell_name_p;;

let sna = shell_name_of_int_of_int 2 1;;

test_number 1 (
(sna : Shell_name_p.shell_name ) =
  shell_name (Ordinal_p.ordinal 2, Shell_symmetry_t.P)
);;

let sna = Shell_name_p.shell_name (Quantum_numbers_p.quantum_numbers_nl_of_int_of_int 2 1);;

test_number 2 (
(sna : Shell_name_p.shell_name ) =
  (Ordinal_p.ordinal 2, Shell_symmetry_t.P)
);;

let sna = Shell_name_p.shell_name_of_ordinal_of_shell_symmetry Ordinal_p.two Shell_symmetry_t.P;;

test_number 3 (
(sna : Shell_name_p.shell_name ) =
  (Ordinal_p.ordinal 2, Shell_symmetry_t.P)
);;

let sna = Shell_name_p.shell_name_of_ordinal_of_shell_symmetry Ordinal_p.two Shell_symmetry_t.P;;

test_number 4 (
(sna : Shell_name_p.shell_name ) =
  (Ordinal_p.ordinal 2, Shell_symmetry_t.P)
);;

let nam_sna = Shell_name_p.name sna;;

test_number 5 (
(nam_sna : string ) = 
"2p"
);;


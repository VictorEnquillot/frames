(** {3 Tests for Au_system_v.} *)
open Make_test_v;;

testing "Au_system_v with
   tau_system_u_any.ml";;

(* toplevel 
   #use "tau_system_u_any.ml";; 

 *)

let sys_au = Au_system_v.system;;

test_number 1 ( 
sys_au.System_units_t.hbar
    = 
  1.0
);;

test_number 2 (
sys_au.System_units_t.me  
= 
1.0
);;

test_number 3 (
sys_au.System_units_t.e 
= 
1.0
);;





(** {3 Tests for Au_system_v.} *)
open Gentest_v;;

testing "Au_system_v";;

(* toplevel 
   #use "tau_system_u_any.ml";; 
 *)

(* Modules *)

module Aus_t = Au_system_t
module Aus_v = Au_system_v

let sys_au  = Aus_v.system;;

testi 0 ( 
sys_au.System_units_t.hbar
    = 
  1.0
);;

testi 1 (
sys_au.System_units_t.me  
= 
1.0
);;

testi 2 (
sys_au.System_units_t.e 
= 
1.0
);;





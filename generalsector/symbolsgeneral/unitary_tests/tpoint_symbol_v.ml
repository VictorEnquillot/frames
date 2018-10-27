(** {3 Tests for point_symbol_v.} *)

open Gentest_v;;

testing "point_symbol_v";;

(* toplevel 
   #use "tpoint_symbol_v.ml";; 
 *)

(* Modules *)

module Pns_t = Point_symbol_t
module Pns_v = Point_symbol_v

(** Simulation. *)

let smb_pnt = Pns_v.make "A";;

testi 0 ( 
Pns_v.name smb_pnt
=
"A"
);;

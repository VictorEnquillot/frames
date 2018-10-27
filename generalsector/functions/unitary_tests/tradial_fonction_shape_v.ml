open Gentest_v;;

(** {3 Tests for radial_fonction_v.} *)

testing "Radial_fonction_v";;

(* toplevel 
   #"tradial_fonction_v.ml";; 
 *)

module Rfs_t = Radial_fonction_shape_t
module Rfs_v = Radial_fonction_shape_v

let gus = Rfs_t.Gaussian ;;

testi 0 (
Rfs_v.name gus
=
"Gu" 
);;

(** {3 The State functionalities for a Functional_state entity.} *)

let nam_mod = "Functional_state_v";;

(** {6 Modules.} *)

module Fst_t = Functional_state_t

(** {6 Making.} *)

(** {6 Converting.} *)

let rec print ppf = function
  | Fst_t.Spherical -> 
      Format.fprintf ppf "Spherical" 
  | Fst_t.Cartesian ->
      Format.fprintf ppf "Cartesian" 
;;

let rec name = function
  | Fst_t.Spherical -> 
      Format.sprintf "Sph" 
  | Fst_t.Cartesian ->
      Format.sprintf "Car" 
;;



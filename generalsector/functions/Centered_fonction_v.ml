(* {3 A Centered Function of |r-Rc|.} 
   (Rc is the radius vector of the centered function)
   is always the product of a radial part and a spherical_harmonics. *)

module Cnf_t = Centered_fonction_t
module Shd_v = Spherical_harmonics_data_v
module Rdf_v = Radial_fonction_v

let make rdf shd = {
    Cnf_t.radial_part = rdf;
    Cnf_t.spherical_part = shd;
   }
;;

let radial_part_off_centered_function cnf =
  cnf.Cnf_t.radial_part
;;

let spherical_part_off_centered_function cnf =
  cnf.Cnf_t.spherical_part
;;

let print ppf cnf =
  let rdf = radial_part_off_centered_function cnf in
  let shd = spherical_part_off_centered_function cnf in
  Format.fprintf ppf "radial = %a; spherical = %a"
    Rdf_v.print rdf 
    Shd_v.print shd
;; 	

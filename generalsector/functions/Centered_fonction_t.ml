(* {3 A Centered Function of |r-Rc|.} 
   (Rc is the radius vector of the centered function)
   is always the product of a radial part and a spherical_harmonics. *)

module Shd_t = Spherical_harmonics_data_t
module Rdf_t = Radial_fonction_t

type centered_fonction = {
    radial_part : Radial_fonction_t.radial_fonction;
    spherical_part : Shd_t.spherical_harmonics_data;
   }
;;

(** {3 The Provider for Argument Abbreviation for each entitycategorycodefile.} *)

let nam_cod = "abbreviation_argument_by_entitycategorycodefile_provider_v.ml";;

(** {6 Modules.} *)

module Ecc_v = Entitycategorycodefile_v
module Aaecp_v = Abbreviation_argument_by_entitycategory_provider_v

(** {6 Register.} *)

let nam_reg = "abbreviation_argument_by_entitycategorycodefile";;

let provide ecc =
  let enc = Ecc_v.entitycategory_off_entitycategorycodefile ecc in
  Aaecp_v.provide enc 

;;

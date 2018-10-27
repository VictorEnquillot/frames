(** {3 The Provider for Argument Abbreviation for each entitycategorysuffix.} *)

let nam_cod = "abbreviation_argument_by_entitycategorysuffix_provider_v.ml";;

(** {6 Modules.} *)

module Ecs_v = Entitycategorysuffix_v
module Aaecp_v = Abbreviation_argument_by_entitycategory_provider_v

(** {6 Register.} *)

let nam_reg = "abbreviation_argument_by_entitycategorysuffix";;

let provide ecs =
  let enc = Ecs_v.entitycategory_off_entitycategorysuffix ecs in
  Aaecp_v.provide enc 

;;

(** {3 The Provider for Entitycategorysuffix dot Entitycategory for each Entitycategorysuffix.} *)

let nam_cod = "entitycategorytype_dot_entitycategory_by_entitycategorysuffix_provider_v.ml";;

(** {6 Modules.} *)

module Ecs_v = Entitycategorysuffix_v
module Ecsdecp_v = Entitycategorytype_dot_entitycategory_by_entitycategory_provider_v

let provide ecs =
  let enc = Ecs_v.entitycategory_off_entitycategorysuffix ecs in 
  Ecsdecp_v.provide enc
;;

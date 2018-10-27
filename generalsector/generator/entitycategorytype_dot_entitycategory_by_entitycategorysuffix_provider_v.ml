(** {3 The Provider for Entitycategorycodefile dot Entitycategory for each Entitycategorycodefile.} *)

let nam_cod = "entitycategorytype_dot_entitycategory_by_entitycategorycodefile_provider_v.ml";;

(** {6 Modules.} *)

module Ecc_v = Entitycategorycodefile_v
module Eccdecp_v = Entitycategorytype_dot_entitycategory_by_entitycategory_provider_v

let provide ecc =
  let enc = Ecc_v.entitycategory_off_entitycategorycodefile ecc in 
  Eccdecp_v.provide enc
;;

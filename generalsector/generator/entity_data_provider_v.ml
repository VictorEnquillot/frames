(** {3 The Provider for an Entity_data for each Entityname.} *)

let nam_cod = "Entitydata_provider_v";;

(** {6 Modules.} *)

module End_v = Entity_data_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "entity_data_by_entityname";;

let entity_data_by_entityname : 
    (string, string list) Reg_t.register = Reg_v.make 137;;

let store nam_ent str_l =
  try Reg_v.store entity_data_by_entityname nam_ent str_l
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Pmc_v.store")
;;

let is_stored nam_ent =
  Reg_v.is_stored entity_data_by_entityname nam_ent
;;

let retrieve nam_ent =
  try Reg_v.retrieve entity_data_by_entityname nam_ent
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Psr_v.retrieve")
;;  

let build nam_ent =
  End_v.entity_data_of_entityname nam_ent
;;

let build_n_store nam_ent =
  let str_l = build nam_ent in
  store nam_ent str_l; 
  str_l 
;;

let provide nam_ent =
  if Reg_v.is_stored entity_data_by_entityname nam_ent 
  then retrieve nam_ent
  else build_n_store nam_ent 
;;

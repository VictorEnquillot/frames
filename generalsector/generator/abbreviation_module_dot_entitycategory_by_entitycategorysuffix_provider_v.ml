(** {3 The Provider for Abbreviations for each Entitycategory_n_codefile_suffix.} *)

let nam_cod = "abbreviation_module_dot_entitycategory_by_entitycategorysuffix_provider_v.ml";;

(** {6 Modules.} *)

module Ecs_t = Entitycategorysuffix_t
module Ecs_v = Entitycategorysuffix_v
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Maecsp_v = Abbreviation_module_by_entitycategorysuffix_provider_v
module Maecp_v = Abbreviation_module_by_entitycategory_provider_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_module_dot_entitycategory_by_entitycategorysuffix";;

let abbreviation_module_dot_entitycategory_by_entitycategorysuffix : 
    (Ecs_t.entitycategorysuffix, string) Reg_t.register = Reg_v.make 137;;

let store ecs abb_ecs =
  if Reg_v.is_value_stored abbreviation_module_dot_entitycategory_by_entitycategorysuffix abb_ecs 
  then Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation is unique" 
      (Format.sprintf "already stored value >%s<" abb_ecs)
      (Format.sprintf "modify below abbreviation for module name >%s<" 
	 (Ecs_v.name ecs))
  else
    try Reg_v.store abbreviation_module_dot_entitycategory_by_entitycategorysuffix ecs abb_ecs
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve ecs =
  try Reg_v.retrieve 
      abbreviation_module_dot_entitycategory_by_entitycategorysuffix 
      ecs 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Ecsap_v.retrieve")
;;  

let build = function
  | (Ens_t.Entity_fictive_symbol _, _,_) as ecs -> 
      let enc = Ecs_v.entitycategory_off_entitycategorysuffix ecs in
      Enc_v.name enc 

  | ecs ->
      let enc = Ecs_v.entitycategory_off_entitycategorysuffix ecs in
      let nam_enc = Enc_v.name enc in
      let abb_ecs = Maecsp_v.provide ecs in
      
      Format.sprintf "%s.%s" abb_ecs nam_enc
;;

let build_n_store ecs =
  let abb_ecs = build ecs in
  store ecs abb_ecs; 
  abb_ecs 
;;

let provide ecs =
  if Reg_v.is_stored 
      abbreviation_module_dot_entitycategory_by_entitycategorysuffix 
      ecs 
  then retrieve ecs
  else build_n_store ecs 
;;

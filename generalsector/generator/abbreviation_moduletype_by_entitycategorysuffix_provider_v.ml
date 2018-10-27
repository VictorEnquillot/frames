(** {3 The Provider for Moduletype Abbreviation for each entitycategorysuffix.} *)

let nam_cod = "abbreviation_moduletype_by_entitycategorysuffix_provider_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_suffix_t
module Cfs_v = Codefile_suffix_v
module Cts_t = Category_symbol_t
module Ecs_t = Entitycategorysuffix_t
module Ecs_v = Entitycategorysuffix_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Amecsp_v = Abbreviation_module_by_entitycategorysuffix_provider_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_moduletype_by_entitycategorysuffix";;

let abbreviation_moduletype_by_entitycategorysuffix : 
    (Ecs_t.entitycategorysuffix, string) Reg_t.register = Reg_v.make 137;;

let store ecs abb_ect =
  if (Reg_v.is_value_stored abbreviation_moduletype_by_entitycategorysuffix abb_ect)
      && (abb_ect <> "") 
  then 
    Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation is unique" 
      (Format.sprintf "already stored value >%s<" abb_ect)
      (Format.sprintf "modify below abbreviation for module name >%s<" 
	 (Ecs_v.name ecs))
  else
    try Reg_v.store abbreviation_moduletype_by_entitycategorysuffix ecs abb_ect
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve ecs =
  try Reg_v.retrieve abbreviation_moduletype_by_entitycategorysuffix ecs 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Map_v.retrieve")
;;  

let build = function 
  | (Ens_t.Entity_fictive_symbol _, _,_) -> 
      "" 
  | ecs ->
      let ect = Ecs_v.entitycategorytype_of_entitycategorysuffix ecs in
      Amecsp_v.provide ect
;;

let build_n_store ecs =
  let abb_ect = build ecs in
  store ecs abb_ect; 
  abb_ect 
;;

let provide ecs =
  if Reg_v.is_stored abbreviation_moduletype_by_entitycategorysuffix ecs 
  then retrieve ecs
  else build_n_store ecs 
;;

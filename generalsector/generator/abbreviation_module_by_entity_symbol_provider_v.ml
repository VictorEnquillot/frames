(** {3 The Provider for Module Abbreviation for each entity.} *)

let nam_cod = "abbreviation_module_by_entity_symbol_provider_v.ml";;

(** {6 Modules.} *)

module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Amd_v = Abbreviation_module_v
module Erm_v = Error_messages_v
module Reg_t = Register_t
module Reg_v = Register_v
module Lst_v = List_v

(** {6 Register.} *)

let nam_reg = "abbreviation_module_by_entity";;

let abbreviation_module_by_entity : 
    (Ens_t.entity_symbol, string) Reg_t.register = Reg_v.make 137;;

let store smb_ent amb_ent =
  if (Reg_v.is_value_stored abbreviation_module_by_entity amb_ent)
      && (amb_ent <> "") 
  then 
    let str = 
      Reg_v.string_of_key_list_of_value 
	abbreviation_module_by_entity amb_ent Ens_v.name 
    in
    Erm_v.print_fatal_error nam_cod
      "store"
      "module abbreviation were unique" 
      (Format.sprintf "already stored value >%s<" amb_ent)
      (Format.sprintf "modify >abbreviation_module_v.ml< for entity\
       @.      >%s<\
       @.    the entity having already this abbreviation is:\
       @.      >%s<@." 
	 (Ens_v.name smb_ent) str)
  else
    try Reg_v.store abbreviation_module_by_entity smb_ent amb_ent
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve smb_ent =
  try Reg_v.retrieve abbreviation_module_by_entity smb_ent 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Map_v.retrieve")
;;  

let build smb_ent = 
  Amd_v.abbreviation_module_of_entity_symbol smb_ent
;;

let build_n_store smb_ent =
  let abb_ent = build smb_ent in
  store smb_ent abb_ent; 
  abb_ent 
;;

let provide smb_ent =
  if Reg_v.is_stored abbreviation_module_by_entity smb_ent 
  then retrieve smb_ent
  else build_n_store smb_ent 
;;

(** {3 The Provider for Argument Abbreviation for each entity.} *)

let nam_cod = "abbreviation_argument_by_entity_symbol_provider_v.ml";;

(** {6 Modules.} *)

module Aab_v = Abbreviation_argument_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_argument_by_entity";;

let abbreviation_argument_by_entity : 
    (Ens_t.entity_symbol, string) Reg_t.register = Reg_v.make 137;;

let store smb_ent aab_ent =
  if (Reg_v.is_value_stored abbreviation_argument_by_entity aab_ent)
      && (aab_ent <> "") 
  then 
    let str = 
      Reg_v.string_of_key_list_of_value 
	abbreviation_argument_by_entity aab_ent Ens_v.name 
    in
    Erm_v.print_fatal_error nam_cod
      "store"
      "argument abbreviation were unique" 
      (Format.sprintf "already stored value >%s<" aab_ent)
      (Format.sprintf "modify >abbreviation_argument_v.ml< for entity\
       @.      >%s<\
       @.    the entity having already this abbreviation is:\
       @.      >%s<@." 
	 (Ens_v.name smb_ent) str)
  else
    try Reg_v.store abbreviation_argument_by_entity smb_ent aab_ent
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve smb_ent =
  try Reg_v.retrieve abbreviation_argument_by_entity smb_ent 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Map_v.retrieve")
;;  

let build smb_ent =
  Aab_v.abbreviation_argument_of_entity_symbol smb_ent
;;

let build_n_store smb_ent =
  let aab_ent = build smb_ent in
  store smb_ent aab_ent; 
  aab_ent 
;;

let provide smb_ent =
  if Reg_v.is_stored abbreviation_argument_by_entity smb_ent 
  then retrieve smb_ent
  else build_n_store smb_ent 
;;

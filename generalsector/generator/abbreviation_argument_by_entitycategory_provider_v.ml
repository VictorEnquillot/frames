(** {3 The Provider for Argument Abbreviation for each Entitycategory.} *)

let nam_cod = "abbreviation_argument_by_entitycategory_provider_v.ml";;

(** {6 Modules.} *)

module Aab_v = Abbreviation_argument_v
module Aaep_v = Abbreviation_argument_by_entity_symbol_provider_v
module Cts_v = Category_symbol_v
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_argument_by_entitycategory";;

let abbreviation_argument_by_entitycategory : 
    (Enc_t.entitycategory, string) Reg_t.register = Reg_v.make 137;;

let store enc abb_enc =
  if (Reg_v.is_value_stored abbreviation_argument_by_entitycategory abb_enc) 
      && (abb_enc <> "")
  then Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation were unique" 
      (Format.sprintf "already stored value >%s<" abb_enc)
      (Format.sprintf "modify below abbreviation for argument name >%s<" 
	 (Enc_v.name enc))
  else
    try Reg_v.store abbreviation_argument_by_entitycategory enc abb_enc
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve enc =
  try Reg_v.retrieve abbreviation_argument_by_entitycategory enc 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Map_v.retrieve")
;;  

let build = function 
  | (Ens_t.Entity_fictive_symbol smb_enf, _) -> 
      Aaep_v.provide (Ens_t.Entity_fictive_symbol smb_enf)

  | (smb_ent, smb_cat) ->
      let abb_ent = Aaep_v.provide smb_ent in
      let abb_cat = Aab_v.abbreviation_argument_of_category_symbol smb_cat in
      Format.sprintf "%s_%s" abb_cat abb_ent 
;;

let build_n_store enc =
  let abb_enc = build enc in
  store enc abb_enc; 
  abb_enc 
;;

let provide enc =
  if Reg_v.is_stored abbreviation_argument_by_entitycategory enc 
  then retrieve enc
  else build_n_store enc 
;;

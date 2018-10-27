(** {3 The Provider for Entitycategorysuffix dot Entitycategory for each Entitycategory.} *)

let nam_cod = "entitycategorytype_dot_entitycategory_by_entitycategory_provider_v.ml";;

(** {6 Modules.} *)

module Ecs_t = Entitycategorysuffix_t
module Ecs_v = Entitycategorysuffix_v
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Reg_t = Register_t
module Reg_v = Register_v
module Sco_t = Scope_t
module Scp_v = Scope_provider_v

(** {6 Register.} *)

let nam_reg = "entitycategorytype_dot_entitycategory_by_entitycategory";;

let entitycategorytype_dot_entitycategory_by_entitycategory : 
    (Enc_t.entitycategory, string) Reg_t.register = Reg_v.make 137;;

let store enc abb_enc =
  if Reg_v.is_value_stored entitycategorytype_dot_entitycategory_by_entitycategory abb_enc 
  then Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation is unique" 
      (Format.sprintf "already stored value >%s<" abb_enc)
      (Format.sprintf "modify below abbreviation for module name >%s<" 
	 (Enc_v.name enc))
  else
    try Reg_v.store entitycategorytype_dot_entitycategory_by_entitycategory enc abb_enc
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve enc =
  try Reg_v.retrieve 
      entitycategorytype_dot_entitycategory_by_entitycategory 
      enc 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Encap_v.retrieve")
;;  

let build = function
  | (Ens_t.Entity_fictive_symbol smb_enf, _) -> 
      begin
      match smb_enf with 
        | Ens_t.Entity_bare_symbol smb_eba ->
 	    (String.capitalize (Ens_v.name_of_entity_bare_symbol smb_eba))
	| Ens_t.Entity_barebasic_symbol smb_ebb ->
	    Ens_v.name_of_entity_barebasic_symbol smb_ebb
      end

  | enc ->
      let nam_enc = Enc_v.name enc in
      let nam_enc_c = Enc_v.name_capitalized enc in
      let sco = Scp_v.provide enc in

      match sco with 
      | Sco_t.Scope_public ->
	  Format.sprintf "%s_t.%s" nam_enc_c nam_enc
      | Sco_t.Scope_private ->
	  Format.sprintf "%s_p.%s" nam_enc_c nam_enc
      | Sco_t.Scope_empty ->
	  Erm_v.print_fatal_error nam_cod
	    "build"
	    "Scope non empty" 
	    "Empty"
	    (Format.sprintf "check scope for module name >%s<" 
	       (Enc_v.name enc))
 ;;

let build_n_store enc =
  let abb_enc = build enc in
  store enc abb_enc; 
  abb_enc 
;;

let provide enc =
  if Reg_v.is_stored 
      entitycategorytype_dot_entitycategory_by_entitycategory 
      enc 
  then retrieve enc
  else build_n_store enc 
;;

(** {3 The Provider for Abbreviations for each Entitycategory_n_codefile_symbol.} *)

let nam_cod = "abbreviation_module_dot_entitycategory_by_entitycategorycodefile_provider_v.ml";;

(** {6 Modules.} *)

module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Maeccp_v = Abbreviation_module_by_entitycategorycodefile_provider_v
module Maecp_v = Abbreviation_module_by_entitycategory_provider_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_module_dot_entitycategory_by_entitycategorycodefile";;

let abbreviation_module_dot_entitycategory_by_entitycategorycodefile : 
    (Ecc_t.entitycategorycodefile, string) Reg_t.register = Reg_v.make 137;;

let store ecc abb_ecc =
  if Reg_v.is_value_stored abbreviation_module_dot_entitycategory_by_entitycategorycodefile abb_ecc 
  then Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation is unique" 
      (Format.sprintf "already stored value >%s<" abb_ecc)
      (Format.sprintf "modify below abbreviation for module name >%s<" 
	 (Ecc_v.name ecc))
  else
    try Reg_v.store abbreviation_module_dot_entitycategory_by_entitycategorycodefile ecc abb_ecc
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve ecc =
  try Reg_v.retrieve 
      abbreviation_module_dot_entitycategory_by_entitycategorycodefile 
      ecc 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Eccap_v.retrieve")
;;  

let build = function
  | (Ens_t.Entity_fictive_symbol _, _,_) as ecc -> 
      let enc = Ecc_v.entitycategory_off_entitycategorycodefile ecc in
      Enc_v.name enc 

  | ecc ->
      let enc = Ecc_v.entitycategory_off_entitycategorycodefile ecc in
      let nam_enc = Enc_v.name enc in
      let abb_ecc = Maeccp_v.provide ecc in
      
      Format.sprintf "%s.%s" abb_ecc nam_enc
;;

let build_n_store ecc =
  let abb_ecc = build ecc in
  store ecc abb_ecc; 
  abb_ecc 
;;

let provide ecc =
  if Reg_v.is_stored 
      abbreviation_module_dot_entitycategory_by_entitycategorycodefile 
      ecc 
  then retrieve ecc
  else build_n_store ecc 
;;

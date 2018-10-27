(** {3 The Provider for Moduletype Abbreviation for each entitycategorycodefile.} *)

let nam_cod = "abbreviation_moduletype_by_entitycategorycodefile_provider_v.ml";;

(** {6 Modules.} *)

module Cfs_t = Codefile_suffix_t
module Cfs_v = Codefile_suffix_v
module Cts_t = Category_symbol_t
module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Ens_t = Entity_symbol_t
module Erm_v = Error_messages_v
module Ameccp_v = Abbreviation_module_by_entitycategorycodefile_provider_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "abbreviation_moduletype_by_entitycategorycodefile";;

let abbreviation_moduletype_by_entitycategorycodefile : 
    (Ecc_t.entitycategorycodefile, string) Reg_t.register = Reg_v.make 137;;

let store ecc abb_ect =
  if (Reg_v.is_value_stored abbreviation_moduletype_by_entitycategorycodefile abb_ect)
      && (abb_ect <> "") 
  then 
    Erm_v.print_fatal_error nam_cod
      "store"
      "abbreviation is unique" 
      (Format.sprintf "already stored value >%s<" abb_ect)
      (Format.sprintf "modify below abbreviation for module name >%s<" 
	 (Ecc_v.name ecc))
  else
    try Reg_v.store abbreviation_moduletype_by_entitycategorycodefile ecc abb_ect
    with Failure ("Already_stored:Reg_v.store") ->
      failwith ("Already_stored:Map_v.store")
;;

let retrieve ecc =
  try Reg_v.retrieve abbreviation_moduletype_by_entitycategorycodefile ecc 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Map_v.retrieve")
;;  

let build = function 
  | (Ens_t.Entity_fictive_symbol _, _,_) -> 
      "" 
  | ecc ->
      let ect = Ecc_v.entitycategorytype_of_entitycategorycodefile ecc in
      Ameccp_v.provide ect
;;

let build_n_store ecc =
  let abb_ect = build ecc in
  store ecc abb_ect; 
  abb_ect 
;;

let provide ecc =
  if Reg_v.is_stored abbreviation_moduletype_by_entitycategorycodefile ecc 
  then retrieve ecc
  else build_n_store ecc 
;;

(** {3 The Provider for the Codefile Filename for some Entitycategorycodefile.} *)

let nam_cod = "codefile_filename_provider_v.ml";;

(** {6 Modules.} *)

module Ecs_v = Entitycategorysuffix_v
module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Fln_t = Filename_p
module Fln_v = Filename_p
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "codefile_file_name_by_entitycategorycodefile";;

let codefile_file_name_by_entitycategorycodefile : 
    (Ecc_t.entitycategorycodefile, Fln_t.filename) Reg_t.register = Reg_v.make 137;;

let store ecc fln =
  try Reg_v.store codefile_file_name_by_entitycategorycodefile ecc fln
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Cfp.store")
;;

let is_stored ecc =
  Reg_v.is_stored codefile_file_name_by_entitycategorycodefile ecc
;;

let retrieve ecc =
  try Reg_v.retrieve codefile_file_name_by_entitycategorycodefile ecc
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Cfp.retrieve")
;;  

let build ecc =
  let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc in
  let nam_ecs = Ecs_v.name ecs in
  let ext_fil = Ecc_v.file_extension_of_entitycategorycodefile ecc in
  let nam_fil = Format.sprintf "%s.%s" nam_ecs ext_fil in
  Filename_p.filename nam_fil
;;

let build_n_store ecc =
  let fln = build ecc in
  store ecc fln; 
  fln 
;;

let provide ecc =
  if Reg_v.is_stored codefile_file_name_by_entitycategorycodefile ecc 
  then retrieve ecc
  else build_n_store ecc;
 ;;

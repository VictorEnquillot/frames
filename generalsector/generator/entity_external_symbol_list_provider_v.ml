(** {3 The Provider for Entity External Symbol list.} *)

let nam_cod = "entity_external_symbol_list_provider:_v.ml";;

(** {6 Modules.} *)

module Dbl_v = Doublet_list_v
module Dbt_v = Doublet_v
module Ecc_t = Entitycategorycodefile_t
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Erm_v = Error_messages_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Reg_t = Register_t
module Reg_v = Register_v
module Str_v = String_v
module Pas_v = Parameter_symbol_v
module Pav_t = Parameter_value_t
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v

(** {6 Register.} *)

let nam_reg = "entity_external_symbol_by_entitycategorycodefile";;

let entity_external_symbol_by_entitycategorycodefile : 
    (Ecc_t.entitycategorycodefile, Ens_t.entity_external_symbol list) 
    Reg_t.register = Reg_v.make 137;;

let store ecc smb_enx_l =
  try Reg_v.store entity_external_symbol_by_entitycategorycodefile ecc smb_enx_l
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Exslp_v.store")
;;

let is_stored ecc =
  Reg_v.is_stored 
    entity_external_symbol_by_entitycategorycodefile ecc
;;

let retrieve ecc =
  try Reg_v.retrieve 
      entity_external_symbol_by_entitycategorycodefile ecc
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Exslp_v.retrieve")
;;  

let entitycategorycodefile_n_entity_external_symbol_of_string str =
  let w_l = Str_v.split_of_c ' ' str in
  let nam_ent = List.nth w_l 0 in
  let nam_cat = List.nth w_l 1 in
  let nam_cfi = List.nth w_l 2 in
  let nam_enx = List.nth w_l 3 in

  let ecc =
    Ecc_v.entitycategorycodefile_of_string_of_string_of_string 
      nam_ent nam_cat nam_cfi
  in
  let smb_enx = Ens_v.entity_external_symbol_of_string nam_enx in

  Dbt_v.make ecc smb_enx
;;

let build_n_store_all () =
  let smb_pfi = Pas_v.make "entity_external_symbol_list" in 
  let val_pfi = Pvp_v.provide smb_pfi in
  let fln = Pav_v.filename_off_parameter_value val_pfi in

  let str_l = 
    try List.sort String.compare (Fio_v.string_list_of_filename fln) 
    with Sys_error _ -> Erm_v.print_fatal_error nam_cod
	"build_n_store_all"
	(Format.sprintf "file for parameter >%s< " (Pas_v.name smb_pfi)) 
	(Format.sprintf ">%s<" (Fln_v.name fln)) "create it"
  in
  let ecc_n_smb_enx_l = (* [(ecc, smb_enx); ...] *)
    List.map 
      entitycategorycodefile_n_entity_external_symbol_of_string 
      str_l
  in
  let ecc_n_smb_enxl_l = 
    Dbl_v.once_left_n_right_list_list_of_doublet_list
      ecc_n_smb_enx_l
  in
  List.iter 
    (fun (e, x_l) -> store e x_l) 
    ecc_n_smb_enxl_l
;;

let provide ecc =
  if Reg_v.is_stored entity_external_symbol_by_entitycategorycodefile ecc 
  then retrieve ecc
  else 
    begin 
      build_n_store_all ();
      if is_stored ecc
      then retrieve ecc
      else []
    end
;;

(** {3 The Provider for Entitycategorymodule External list.} *)

let nam_cod = "entity_external_n_codefile_list_provider_v.ml";;

(**
   For an entitycategorycodefile triplet 
   provides the list of (entity_external_symbol, codefile_symbol) 
   as defined in the devoted file defined by key "entity_external_n_codefile_list"
   of the Parameter_value_provider_v.
*)

(** {6 Modules.} *)

module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Dbl_v = Doublet_list_v
module Dbt_v = Doublet_v
module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
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

let nam_reg = "entity_external_n_codefile_by_entitycategorycodefile";;

let entity_external_n_codefile_by_entitycategorycodefile : 
    (Ecc_t.entitycategorycodefile, 
     ((Ens_t.entity_external_symbol * Cfs_t.codefile_symbol) list)) 
    Reg_t.register = Reg_v.make 137;;

let store ecc exc_l =
  try Reg_v.store entity_external_n_codefile_by_entitycategorycodefile ecc exc_l
  with Failure ("Already_stored:Reg_v.store") ->
    Erm_v.print_fatal_error nam_cod "store"
      (Format.sprintf "ecc >%s< not stored" (Ecc_v.name ecc))
      (Format.sprintf "it is already stored")
	 (Format.sprintf "register has %i keys stored" 
	    (List.length (Reg_v.key_list entity_external_n_codefile_by_entitycategorycodefile ))) 
;;

let is_stored ecc =
  Reg_v.is_stored 
    entity_external_n_codefile_by_entitycategorycodefile ecc
;;

let retrieve ecc =
  try Reg_v.retrieve 
      entity_external_n_codefile_by_entitycategorycodefile ecc
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Exclp_v.retrieve")
;;  

let entity_external_n_codefile_n_entitycategorycodefile_of_string str =
  let w_l = Str_v.split_of_c ' ' str in
  let nam_ent = List.nth w_l 0 in
  let nam_cat = List.nth w_l 1 in
  let nam_cfi = List.nth w_l 2 in

  let nam_enx = List.nth w_l 3 in
  let nam_cfx = List.nth w_l 4 in

  let ecc =
    Ecc_v.entitycategorycodefile_of_string_of_string_of_string 
      nam_ent nam_cat nam_cfi
  in
  let exc =
    let smb_enx = Ens_v.entity_external_symbol_of_string nam_enx in
    let smb_cfx = Cfs_v.make nam_cfx in 
    Dbt_v.make smb_enx smb_cfx
  in
  
  Dbt_v.make ecc exc
;;

let filename () =
  let smb_pfi = Pas_v.make "entity_external_n_codefile_list" in 
  let val_pfi = Pvp_v.provide smb_pfi in
  Pav_v.filename_off_parameter_value val_pfi
;;

let build_n_store_all () =
  (*** TODO ***) Reg_v.clear entity_external_n_codefile_by_entitycategorycodefile;
  let fln = filename () in

  let str_l = 
    try List.sort String.compare (Fio_v.string_list_of_filename fln) 
    with Sys_error _ -> 
      Erm_v.print_fatal_error nam_cod
	"build_n_store_all"
	"file for >entity_external_n_codefile_list< exists" 
	(Format.sprintf ">%s<" (Fln_v.name fln)) "create it"
  in
  let ecc_n_exc_l = (* [(ecc, exc); ...] *)
    List.map 
      entity_external_n_codefile_n_entitycategorycodefile_of_string
      str_l
  in
  let ecc_n_excl_l = 
    Dbl_v.once_left_n_right_list_list_of_doublet_list
      ecc_n_exc_l
  in
  List.iter 
    (fun (e, x_l) -> store e x_l) 
    ecc_n_excl_l
;;

let provide ecc =
  if is_stored ecc 
  then retrieve ecc
  else 
    begin 
      build_n_store_all ();
      if is_stored ecc
      then retrieve ecc
      else []
    end
;;

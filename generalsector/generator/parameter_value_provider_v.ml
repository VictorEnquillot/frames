(** {3 The Provider for Parameter_value of each Entity.} *)

let nam_cod = "parameter_value_provider_v.ml";;

(** {6 Modules.} *)

module Pas_t = Parameter_symbol_t
module Pav_t = Parameter_value_t
module Pav_v = Parameter_value_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "parameter_value_by_parameter_symbol";;

let parameter_value_register : 
    (Pas_t.parameter_symbol, Pav_t.parameter_value) Reg_t.register = Reg_v.make 137;;

(** {6 Storing.} *)

let store smb_par val_par =
  try Reg_v.store parameter_value_register smb_par val_par
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Pvp_v.store")
;;

let store_force smb_par val_par =
  Reg_v.store_force parameter_value_register smb_par val_par
;;

(** {6 Retrieving.} *)

let retrieve smb_par =
  try Reg_v.retrieve parameter_value_register smb_par 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Pvp_v.retrieve")
;;  

(** {6 Building.} *)

let build smb_par =
  Pav_v.make smb_par 
;;

let build_n_store smb_par =
  let val_par = build smb_par in
  store smb_par val_par; 
  val_par 
;;

(** {6 Providing.} *)

let provide smb_par =
  if Reg_v.is_stored parameter_value_register smb_par 
  then retrieve smb_par
  else build_n_store smb_par 
;;

(** {3 The Provider for Target_value of each Entity.} *)

let nam_cod = "target_value_by_entity_name_provider_v";;

(** {6 Modules.} *)

module Cts_v = Category_symbol_v
module Ens_v = Entity_symbol_v
module Tgv_t = Target_value_t
module Tgv_v = Target_value_v
module Cfs_v = Codefile_symbol_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "target_value_provider";;

let target_value_register : 
    (string, Tgv_t.target_value) Reg_t.register = Reg_v.make 137;;

(** {6 Storing.} *)

let store key val_inp =
  try Reg_v.store target_value_register key val_inp
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Ivp_v.store")
;;

let store_force key val_inp =
  Reg_v.store_force target_value_register key val_inp
;;

(** {6 Retrieving.} *)

let retrieve key =
  try Reg_v.retrieve target_value_register key 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Ivp_v.retrieve")
;;  

(** {6 Building.} *)

let build key =
  if (key = "current" || key = "default")
  then Tgv_v.make (Ens_v.entity_proper_symbol_of_string "atom") Cts_v.category_symbol Cfs_v.codefile_type
  else 
    Utils_v.not_yet_implemented nam_cod "build"
(*
    begin
      let ib = Scanf.Scanning.stdin in
      Lazy.force (Tgv_v.read ib)
    end
*)
;;

let build_n_store key =
  let val_inp = build key in
  store key val_inp; 
  val_inp 
;;

(** {6 Providing.} *)

let provide key =
  if Reg_v.is_stored target_value_register key 
  then retrieve key
  else build_n_store key 
;;

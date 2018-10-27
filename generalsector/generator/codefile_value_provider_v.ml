(** {3 The Provider for Codefile of each Entity.} *)

let nam_cod = "Codefile_provider_v";;

(** {6 Modules.} *)

module Cts_v = Category_symbol_v
module Kyl_t = Keyl_list_t
module Kyl_v = Keyl_list_v
module Mdn_t = Codefilename_t
module Cfs_v = Codefile_symbol_v
module Mdv_t = Codefile_value_t
module Cff_v = Codefile_formula_v
module Cfv_v = Codefile_value_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "codefile_provider";;

let codefile_register : 
    (Kyl_t.key_list, Mdv_t.codefile_value) Reg_t.register = Reg_v.make 137;;

let store key_l val_cfi =
  try Reg_v.store codefile_register key_l val_cfi
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Mdp_v.store")
;;

let retrieve key_l =
  try Reg_v.retrieve codefile_register key_l 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Mdp_v.retrieve")
;;  

let build key_l =
  Cfv_v.make key_l
;;

let build_n_store key_l =
  let val_cfi = build key_l in
  store key_l val_cfi; 
  val_cfi 
;;

let provide key_l =
  if Reg_v.is_stored codefile_register key_l 
  then retrieve key_l
  else build_n_store key_l 
;;

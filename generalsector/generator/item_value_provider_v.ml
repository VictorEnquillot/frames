(** {3 The Provider for Item of each Entity.} *)

let nam_cod = "item_value_provider_v.ml";;

(** {6 Modules.} *)

module Cts_v = Category_symbol_v
module Its_v = Item_symbol_v
module Itv_t = Item_value_t
module Itf_v = Item_formula_v
module Itv_v = Item_value_v
module Kyl_t = Key_list_t
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "item_value_provider";;

let item_register : 
    (Kyl_t.key_list, Itv_t.item_value) Reg_t.register = Reg_v.make 137;;

let store kyl_itm val_itm =
  try Reg_v.store item_register kyl_itm val_itm
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Itp_v.store")
;;

let retrieve kyl_itm =
  try Reg_v.retrieve item_register kyl_itm 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Itp_v.retrieve")
;;  

let build kyl_itm =
  Itv_v.make kyl_itm
;;

let build_n_store kyl_itm =
  let val_itm = build kyl_itm in
  store kyl_itm val_itm; 
  val_itm 
;;

let provide kyl_itm =
  if Reg_v.is_stored item_register kyl_itm 
  then retrieve kyl_itm
  else build_n_store kyl_itm 
;;

let write oc kyl_itm =
  let val_itm = provide kyl_itm in
  Itv_v.write oc val_itm
;;

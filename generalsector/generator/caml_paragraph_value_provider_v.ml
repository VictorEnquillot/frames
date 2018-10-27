(** {3 The Provider for a Caml_paragraph from its Symbol.} *)


let nam_cod = "Caml_Paragraph_value_provider_v";;

(** {6 Modules.} *)

module Cts_v = Category_symbol_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpv_t = Caml_paragraph_value_t
module Cpf_v = Caml_paragraph_formula_v
module Cpv_v = Caml_paragraph_value_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "caml_paragraph_value_provider";;

let caml_paragraph_register : 
    (Cps_t.caml_paragraph_symbol, Cpv_t.caml_paragraph_value) Reg_t.register = Reg_v.make 137;;

let store smb_cpg val_cpg =
  try Reg_v.store caml_paragraph_register smb_cpg val_cpg
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Cpp_v.store")
;;

let retrieve smb_cpg =
  try Reg_v.retrieve caml_paragraph_register smb_cpg 
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Cpp_v.retrieve")
;;  

let build smb_cpg =
  Cpv_v.make smb_cpg
;;

let build_n_store smb_cpg =
  let val_cpg = build smb_cpg in
  store smb_cpg val_cpg; 
  val_cpg 
;;

let provide smb_cpg =
  if Reg_v.is_stored caml_paragraph_register smb_cpg 
  then retrieve smb_cpg
  else build_n_store smb_cpg 
;;

let write oc smb_cpg =
  let val_cpg = provide smb_cpg in
  Cpv_v.write oc val_cpg
;;

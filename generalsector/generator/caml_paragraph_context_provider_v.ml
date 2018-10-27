(** {3 The Provider for an Caml_paragraph_context_tree for each Constructor_symbol.} *)

let nam_cod = "Caml_paragraph_context_tree_provider_v";;

(** {6 Modules.} *)

module Csdt_t = Caml_paragraph_context_tree_t
module Csdt_v = Caml_paragraph_context_tree_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Reg_t = Register_t
module Reg_v = Register_v

(** {6 Register.} *)

let nam_reg = "caml_paragraph_context_tree_by_constructor_symbol";;

let caml_paragraph_context_tree_by_constructor_symbol : 
    (Cns_t.constructor_symbol, Csdt_t.caml_paragraph_context_tree) Reg_t.register = Reg_v.make 137;;

let store smb_cnt cns_t =
  try Reg_v.store caml_paragraph_context_tree_by_constructor_symbol smb_cnt cns_t
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Csdtp_v.store")
;;

let retrieve smb_cnt =
  try Reg_v.retrieve caml_paragraph_context_tree_by_constructor_symbol smb_cnt
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Csdtp_v.retrieve")
;;  

let build smb_cnt =
  Csdt_v.make smb_cnt
;;

let build_n_store smb_cnt =
  let cns_t = build smb_cnt in
  store smb_cnt cns_t; 
  cns_t 
;;

let provide smb_cnt =
  if Reg_v.is_stored caml_paragraph_context_tree_by_constructor_symbol smb_cnt 
  then retrieve smb_cnt
  else build_n_store smb_cnt 
;;

(** {3 The Provider for the Scope for some Entitycategory.} *)

let nam_cod = "scope_provider_v.ml";;

(** {6 Modules.} *)

module Enc_t = Entitycategory_t
module Enc_v = Entitycategory_v
module Ens_t = Entity_symbol_t
module Reg_t = Register_t
module Reg_v = Register_v
module Sco_t = Scope_t
module Sco_v = Scope_v

(** {6 Register.} *)

let nam_reg = "scope_by_entitycategory";;

let scope_by_entitycategory : 
    (Enc_t.entitycategory, Sco_t.scope) Reg_t.register = Reg_v.make 137;;

let store enc scp =
  try Reg_v.store scope_by_entitycategory enc scp
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Scp.store")
;;

let is_stored enc =
  Reg_v.is_stored scope_by_entitycategory enc
;;

let retrieve enc =
  try Reg_v.retrieve scope_by_entitycategory enc
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Scp.retrieve")
;;  

let build_n_store_all =
  let enc_l = 
    Sco_v.entitycategory_private_scope_list ()
  in
  let _ = (* unit list -> unit *)
    List.map 
      (fun ec -> store ec Sco_v.scope_private) 
      enc_l;
  in
  () 
;;

let provide enc =
  if Reg_v.is_stored scope_by_entitycategory enc 
  then retrieve enc
  else 
    let smb_ent = Enc_v.entity_symbol_off_entitycategory enc in
    match smb_ent with
    | Ens_t.Entity_fictive_symbol _ ->
	Sco_v.scope_empty
    | _ -> 
	Sco_v.scope_public
;;

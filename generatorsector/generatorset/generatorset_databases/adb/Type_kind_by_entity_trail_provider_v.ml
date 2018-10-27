(** {3 Provides the kind of type (private or not) for each Entity_trail}  *)

let nam_cod = "Type_kind_by_entity_trail_provider_v.ml";;

(**
Needs : AGNR:Type_kind_word_word_string_triplet_list_by_category_trail_provider_v

Needed-by : ??? 

Remark : Kind trail is included in Entity trail 
*)

(** {6 Registering} *)

let nam_reg = "type_kind_by_entity_trail_register";;

let type_kind_by_entity_trail_register : 
    (Trail_t.trail, string) 
    Register_t.register = Register_v.make 137
;;

let store tra_ent kin_typ =
  try Register_v.store 
      type_kind_by_entity_trail_register tra_ent kin_typ
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tra_ent =
  Register_v.is_stored 
    type_kind_by_entity_trail_register tra_ent
;;

(** {6 Retrieving} *)

let retrieve tra_ent =
  try Register_v.retrieve type_kind_by_entity_trail_register tra_ent
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str = 
      Format.sprintf "Not_stored:%s.%s for %s"
	nam_cod "retrieve" (Trail_v.name tra_ent)
    in
    failwith str
;;  

let build_n_store_all tra_cat =
  let wws_trl = 
    Type_kind_word_word_string_triplet_list_by_category_trail_provider_v.provide 
      tra_cat
  in
  List.iter 
    (fun (k, e, s) -> store (Trail_v.make "entity" e tra_cat) k)
    wws_trl
;;

let build tra_ent =
  let tra_cat = Trail_v.upper_trail_off_trail tra_ent in 
  build_n_store_all tra_cat;
  retrieve tra_ent
;;

let provide tra_ent =
  if Register_v.is_stored 
      type_kind_by_entity_trail_register 
      tra_ent
  then retrieve tra_ent
  else build tra_ent
;;

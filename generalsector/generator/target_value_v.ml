(** {3 The functionalities for a Value for an Input.}  *)

let nam_cod = "Target_value_v";;

(** {6 Modules.} *)

module Cfs_v = Codefile_symbol_v
module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Tgv_t = Target_value_t

(** {6 Making.} *)

let make smb_enp smb_cat smb_cfi = 
  {
   Tgv_t.entity_proper_symbol = smb_enp;
   Tgv_t.category_symbol = smb_cat;
   Tgv_t.codefile_symbol = smb_cfi;
 }
;;

let entity_proper_symbol_off_target_value tgt_val =
  tgt_val.Tgv_t.entity_proper_symbol
;;

let category_symbol_off_target_value tgt_val =
  tgt_val.Tgv_t.category_symbol
;;

let codefile_symbol_off_target_value tgt_val =
  tgt_val.Tgv_t.codefile_symbol
;;

let entityname_off_target_value tgt_val =
  let smb_enp = entity_proper_symbol_off_target_value tgt_val in
  Ens_v.name (Ens_v.entity_symbol_of_entity_proper_symbol smb_enp)
;;

let entitycategory_off_target_value tgt_val =
  let smb_enp = entity_proper_symbol_off_target_value tgt_val in
  let smb_ent = Ens_v.entity_symbol_of_entity_proper_symbol smb_enp in
  let smb_cat = category_symbol_off_target_value tgt_val in
  Enc_v.make smb_ent smb_cat 
;;

let entitycategorycodefile_off_target_value tgt_val =
  let enc = entitycategory_off_target_value tgt_val in
  let smb_cfi = codefile_symbol_off_target_value tgt_val in
  Ecc_v.entitycategorycodefile_of_entitycategory_of_codefile_symbol enc smb_cfi
;;

let read ib = 
Utils_v.not_yet_implemented nam_cod "read"
(*
lazy (
  Scanf.bscanf ib "%s %s %s"  
    (fun s_ent s_cat s_cfi -> 
      make (Ens_v.make s_ent) (Cts_v.make s_cat) (Cfs_v.make s_mod) )
 )
*)
;;

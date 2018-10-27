(** {3 The functionalities for a Value for a Codefile.}  *)

let nam_cod = "Codefile_value_v";;

(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Enc_v = Entitycategory_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Fln_v = Filename_p
module Ivp_v = Item_value_provider_v
module Its_v = Item_symbol_v
module Itv_v = Item_value_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Cff_v = Codefile_formula_v
module Cfs_v = Codefile_symbol_v

(** {6 Making.} *)

let make kyl_cfi =  (*** TODO ***)
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_cfi in 
  if not (Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent)
  then
      Erm_v.print_fatal_error nam_cod
	"make"
	"an Entity Proper" 
      (Format.sprintf ">%s<" (Ens_v.name smb_ent))
      "check"
  else
    begin
      let smb_cfi = Kyl_v.codefile_symbol_off_key_list kyl_cfi in
      let smb_cat = Kyl_v.category_symbol_off_key_list kyl_cfi in
      
      let frm_cfi = Cff_v.retrieve (smb_cfi, smb_cat) in
      let key_itm_l = List.map Its_v.key frm_cfi in
      let kyl_itm_l = List.map (fun k -> k :: kyl_cfi) key_itm_l in
      
      List.map Ivp_v.provide kyl_itm_l 
    end
;;

(** {6 Naming.} *)

let name_list val_cfi =
  List.map Itv_v.name val_cfi
;; (* Item list element has no @. *)

let name val_cfi =
  let str_l = name_list val_cfi in
  Lst_v.name (Format.sprintf "%s@.") str_l
;; (* add a @. to each list element *)

(** {6 Printing.} *)

let print ppf val_cfi =
  Format.fprintf ppf "%s" (name val_cfi)
;;

(** {6 Writing.} *)

let codefile_file_name_of_key_list kyl_cfi =
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_cfi in 
  if not (Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent)
  then
      Erm_v.print_fatal_error nam_cod
	"codefile_file_name_of_key_list"
	"an Entity Proper" 
      (Format.sprintf ">%s<" (Ens_v.name smb_ent))
      "check"
  else
    let ecc = Kyl_v.entitycategorycodefile_off_key_list kyl_cfi in
    let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc in
    let enc = Kyl_v.entitycategory_off_key_list kyl_cfi in
    let smb_cfi = Kyl_v.codefile_symbol_off_key_list kyl_cfi in
    let suf_cfi = Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs in
    let ext_cfi = Cfs_v.file_extension smb_cfi in
    Format.sprintf "%s_%s.%s" (Enc_v.name enc) suf_cfi ext_cfi
;;

let codefile_filename_of_key_list kyl_cfi =
  let nam_fil = codefile_file_name_of_key_list kyl_cfi in
  Filename_p.filename nam_fil
;;

let write oc val_cfi =
  List.iter (Itv_v.write oc) val_cfi
;;

(** {6 Extracting.} *)

let caml_line_value_list_off_codefile_value val_cfi =
  let val_cli_ll = 
    List.map Itv_v.caml_line_value_list_off_item_value val_cfi
  in
  List.flatten val_cli_ll
;;

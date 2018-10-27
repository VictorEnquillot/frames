(** {3 The functionalities for a Value for a Item.}  *)

let nam_cod = "item_value_v.ml";;

(** {6 Modules.} *)

module Cmtp_v = Constructor_tag_tree_provider_v
module Ccs_v = Caml_line_symbol_v
module Ccv_v = Caml_line_value_v
module Cns_v = Constructor_symbol_v
module Cpm_v = Caml_paragraph_tag_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cpv_v = Caml_paragraph_value_v
module Cpvp_v = Caml_paragraph_value_provider_v
module Dbt_v = Doublet_v
module Enc_v = Entitycategory_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Fln_v = Filename_p
module Itf_t = Item_formula_t
module Itf_v = Item_formula_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Itv_t = Item_value_t
module Kyl_v = Key_list_v
module Lst_v = List_v
module Cfs_v = Codefile_symbol_v
module Tre_t = Tree_t
module Tre_v = Tree_v

(** {6 Making.} *)

let make kyl_itm =
  let frm_itm = Itf_v.retrieve kyl_itm in
  Tre_v.map Cpvp_v.provide frm_itm
;;

(** {6 Extracting.} *)

(** {6 Naming.} *)

let name_tree val_itm =
  Tre_v.map Cpv_v.name val_itm
;;

let name_list val_itm =
  Tre_v.list_off_tree (name_tree val_itm)
;;

let name val_itm =
  let str_l = name_list val_itm in
  Lst_v.name (Format.sprintf "%s") str_l
;;

(** {6 Printing.} *)

let print ppf val_itm =
  Format.fprintf ppf "%s" (name val_itm)
;;

(** {6 Writing.} *)

let item_file_name_of_key_list kyl_itm =
  let enc = Kyl_v.entitycategory_off_key_list kyl_itm in
  let ecc = Kyl_v.entitycategorycodefile_off_key_list kyl_itm in
  let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc in
  let smb_itm = Kyl_v.item_symbol_off_key_list kyl_itm in
  let suf_cfi = Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs in
  let ext_cfi = Cfs_v.file_extension smb_cfi in

  Format.sprintf "%s_%s_%s.%s" 
    (Enc_v.name enc) (Its_v.name smb_itm) suf_cfi ext_cfi
;;

let item_filename_of_key_list kyl_itm =
  let nam_fil = item_file_name_of_key_list kyl_itm in
  Filename_p.filename nam_fil
;;

let write oc val_itm =
  Tre_v.iter (Cpv_v.write oc) val_itm ;
  output_string oc (Format.sprintf "@.")
;;

(** {6 Extracting.} *)

let caml_paragraph_value_list_off_item_value val_itm =
  Tre_v.list_off_tree val_itm
;;

let caml_line_value_list_off_item_value val_itm =
  let val_cpg_l = caml_paragraph_value_list_off_item_value val_itm in
  let val_cli_ll =
    List.map Cpv_v.caml_line_value_list_off_caml_paragraph_value val_cpg_l 
  in
  List.flatten val_cli_ll
;;

(** {3 The functionalities for a Value for a Caml Paragraph.}  *)

let nam_cod = "Caml_paragraph_value_v";;

(** {6 Modules.} *)

module Clv_v = Caml_line_value_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_v = Caml_paragraph_symbol_v
module Dbt_v = Doublet_v
module Ecc_v = Entitycategorycodefile_v
module Ecs_v = Entitycategorysuffix_v
module Enc_v = Entitycategory_v
module Erm_v = Error_messages_v
module Fln_v = Filename_p
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Cfs_v = Codefile_symbol_v

(** {6 Making.} *)

let make smb_cpg = 
  let frm_cpg = Cpf_v.retrieve smb_cpg in 
  List.map Clv_v.make frm_cpg
;;

(** {6 Naming.} *)

let name_list val_cpg =
  List.map Clv_v.name val_cpg
;;

let name val_cpg = 
  let str_l = name_list val_cpg in
  Lst_v.name_with_separator (fun s->s ) "\n" str_l (* a separator is needed *)
;;

(** {6 Printing.} *)

let print ppf val_cpg =
  Format.fprintf ppf "%s" (name val_cpg)
;;

(** {6 Writing.} *)

let caml_paragraph_file_name_of_caml_paragraph_symbol smb_cpg =
  let smb_itm = Cps_v.item_symbol_off_caml_paragraph_symbol smb_cpg in
  let ecc = Cps_v.entitycategorycodefile_off_caml_paragraph_symbol smb_cpg in
  let ecs = Ecs_v.entitycategorysuffix_of_entitycategorycodefile ecc in
  let enc = Ecc_v.entitycategory_off_entitycategorycodefile ecc in
  let suf_cfi = Ecs_v.codefile_suffix_name_of_entitycategorysuffix ecs in
  let smb_cfi = Ecc_v.codefile_symbol_off_entitycategorycodefile ecc in
  let ext_cfi = Cfs_v.file_extension smb_cfi in
  
  Format.sprintf "%s_%s_%s_%s.%s" 
    (Enc_v.name enc) (Its_v.name smb_itm) (Cps_v.name smb_cpg) suf_cfi ext_cfi
;;

let caml_paragraph_filename_of_caml_paragraph_symbol smb_cpg =
  let nam_fil = caml_paragraph_file_name_of_caml_paragraph_symbol smb_cpg in
  Filename_p.filename nam_fil
;;

let write oc val_cpg =
  List.iter (Clv_v.write oc) val_cpg;
  output_string oc (Format.sprintf "@.")
;;

(** {6 Extracting.} *)

let caml_line_value_list_off_caml_paragraph_value val_cpg =
  val_cpg
;;

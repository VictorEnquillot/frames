(** {3 The functionalities for a Formula for an Item in a Codefile.}  *)

let nam_cod = "item_formula_v.ml";;

(** {6 Modules.} *)

module Cls_v = Caml_line_symbol_v
module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cnm_v = Constructor_tag_v
module Cnp_v = Constructor_path_v
module Cmt_v = Constructor_tag_tree_v
module Cmtp_v = Constructor_tag_tree_provider_v
module Cpc_v = Caml_paragraph_context_v
module Cpf_v = Caml_paragraph_formula_v
module Cps_t = Caml_paragraph_symbol_t
module Cps_v = Caml_paragraph_symbol_v
module Cts_t = Category_symbol_t
module Cts_v = Category_symbol_v
module Dbt_v = Doublet_v
module Ens_v = Entity_symbol_v
module Erm_v = Error_messages_v
module Edp_v = Entity_data_provider_v
module Itf_t = Item_formula_t
module Idf_v = Item_datastructure_formula_v
module Ihf_v = Item_hierarchical_formula_v
module Its_t = Item_symbol_t
module Its_v = Item_symbol_v
module Kyl_v = Key_list_v
module Lst_v = List_v
module Cfs_t = Codefile_symbol_t
module Cfs_v = Codefile_symbol_v
module Tgv_v = Target_value_v
module Tvp_v = Target_value_provider_v
module Tre_t = Tree_t 
module Tre_v = Tree_v 
module Trp_v = Triplet_v

(** {6 Retrieving.} *)

let retrieve kyl_itm = 
  let smb_ent = Kyl_v.entity_symbol_off_key_list kyl_itm in 
  if not (Ens_v.is_entity_proper_symbol_off_entity_symbol smb_ent)
  then
      Erm_v.print_fatal_error nam_cod
	"codefile_file_name_of_key_list"
	"an Entity Proper" 
      (Format.sprintf ">%s<" (Ens_v.name smb_ent))
      "check"
  else
    let smb_cnt = Cns_v.make smb_ent in
    match smb_cnt with 
    | Cns_t.Constructor_proper_symbol
	(Cns_t.Constructor_oneline_symbol
	   (Cns_t.Constructor_proper_datastructure_symbol _)) ->
	     Idf_v.retrieve_datastructure kyl_itm 
	       
    | _ ->
	Utils_v.not_yet_implemented nam_cod "retrieve_hierarchical"
(*	Ihf_v.retrieve_hierarchical kyl_itm *)
;;

(** {6 Extracting.} *)

let constructor_path_tree_off_item_formula frm_itm =
  let smb_cpg_t = frm_itm in
  Tre_v.map Cps_v.constructor_path_off_caml_paragraph_symbol smb_cpg_t
;;

let item_key_list_tree_off_item_formula frm_itm =
  let smb_cpg_t = frm_itm in
  Tre_v.map Cps_v.item_key_list_off_caml_paragraph_symbol smb_cpg_t
;;

let item_key_list_off_item_formula frm_itm =
  let key_list_t = item_key_list_tree_off_item_formula frm_itm in
  Tre_v.root_off_tree key_list_t 
;;

let caml_paragraph_symbol_list_off_item_formula frm_itm =
  Tre_v.list_off_tree frm_itm
;;

let caml_line_symbol_list_off_item_formula frm_itm =
  let smb_cpg_l =  
    caml_paragraph_symbol_list_off_item_formula frm_itm 
  in
  let smb_cli_ll = List.map
      Cpf_v.caml_line_symbol_list_off_caml_paragraph_symbol
      smb_cpg_l
  in
  List.flatten smb_cli_ll
;;

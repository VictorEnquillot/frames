(** {3 Camlparagraph_for_any_comment_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_any_comment_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let section_value_list_off_camlparagraph_for_any_comment_tag tag_cac =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_for_any_comment_tag 
      tag_cac 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making} *)

let make sym_cac soi_cap =
  let tag_cac = Tag_v.make sym_cac soi_cap in
  let val_sec_l = section_value_list_off_camlparagraph_for_any_comment_tag tag_cac in
  match sym_cac with
  | Camlparagraph_for_any_comment_symbol_t.Camlfile_title ->
      Camlparagraph_for_any_comment_value_t.Camlfile_title val_sec_l

  | Camlparagraph_for_any_comment_symbol_t.Empty ->
      Camlparagraph_for_any_comment_value_t.Empty 

  | Camlparagraph_for_any_comment_symbol_t.Ending ->
      Camlparagraph_for_any_comment_value_t.Ending val_sec_l

  | Camlparagraph_for_any_comment_symbol_t.Item_title ->
      Camlparagraph_for_any_comment_value_t.Item_title val_sec_l

;;

(** {6 Retrieving} *)

let retrieve tag_cac =
  let sym_cac = Tag_v.entity_off_tag tag_cac in
  let soi_cap = Tag_v.sole_index_off_tag tag_cac in
  make sym_cac soi_cap
;;

(** {6 Extracting} *)

let string_list_off_camlparagraph_for_any_comment_tag tag_cac =
  let val_sec_l = section_value_list_off_camlparagraph_for_any_comment_tag tag_cac in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let section_value_list_off_camlparagraph_for_any_comment_value val_cac =
  match val_cac with
  | Camlparagraph_for_any_comment_value_t.Camlfile_title val_sec_l -> val_sec_l
	
  | Camlparagraph_for_any_comment_value_t.Empty -> []

  | Camlparagraph_for_any_comment_value_t.Ending val_sec_l -> val_sec_l

  | Camlparagraph_for_any_comment_value_t.Item_title val_sec_l -> val_sec_l
;;

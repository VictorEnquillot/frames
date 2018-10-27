(** {3 Camlparagraph_for_any_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_any_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_cfa soi_cap =
  match sym_cfa with
  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol sym_gfa ->
      Camlparagraph_for_any_value_t.Camlparagraph_for_any_comment_value
	(Camlparagraph_for_any_comment_value_v.make sym_gfa soi_cap)

  | Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_function_symbol sym_gfs ->
      Camlparagraph_for_any_value_t.Camlparagraph_for_any_function_value
	(Camlparagraph_for_any_function_value_v.make sym_gfs soi_cap)
;;

(** {6 Retrieving} *)

let retrieve tag_cfa =
  let soi_cap = Tag_v.sole_index_off_tag tag_cfa in
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  make sym_cfa soi_cap
;;

(** {6 Extracting} *)

let section_value_list_off_camlparagraph_for_any_value val_cfa =
  match val_cfa with
  | Camlparagraph_for_any_value_t.Camlparagraph_for_any_comment_value val_gfa ->
      Camlparagraph_for_any_comment_value_v.section_value_list_off_camlparagraph_for_any_comment_value val_gfa

  | Camlparagraph_for_any_value_t.Camlparagraph_for_any_function_value val_gfs ->
      Camlparagraph_for_any_function_value_v.section_value_list_off_camlparagraph_for_any_function_value val_gfs

;;

let string_list_off_camlparagraph_for_any_value val_cap =
  let val_sec_l = section_value_list_off_camlparagraph_for_any_value val_cap in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;


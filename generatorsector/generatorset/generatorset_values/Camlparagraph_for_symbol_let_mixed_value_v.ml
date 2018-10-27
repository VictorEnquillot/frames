(** {3 Camlparagraph_for_symbol_let_mixed_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlparagraph_for_symbol_let_mixed_value_v";
   "Needed-by : VGNR:Camlparagraph_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let section_value_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm =
  let tag_cap = 
    Camlparagraph_tag_v.camlparagraph_tag_of_camlparagraph_for_symbol_let_mixed_tag 
      tag_clm 
  in
  let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap in
  List.map Section_value_v.retrieve tag_sec_l
;;

(** {6 Making} *)

let make sym_clm soi_cap =
  let tag_clm = Tag_v.make sym_clm soi_cap in
  let val_sec_l = section_value_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm in
 
  match sym_clm with
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_make_argument_equal_function_for_symbol ->
      Camlparagraph_for_symbol_let_mixed_value_t.Let_make_argument_equal_function_for_symbol val_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_name_argument_equal_function_for_symbol ->
      Camlparagraph_for_symbol_let_mixed_value_t.Let_name_argument_equal_function_for_symbol val_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_fullname_argument_equal_function_for_symbol ->
      Camlparagraph_for_symbol_let_mixed_value_t.Let_fullname_argument_equal_function_for_symbol val_sec_l

  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_symbol_list_argument_equal_function_for_symbol ->
      Camlparagraph_for_symbol_let_mixed_value_t.Let_symbol_list_argument_equal_function_for_symbol val_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_clm =
  let sym_clm = Tag_v.entity_off_tag tag_clm in
  let soi_cap = Tag_v.sole_index_off_tag tag_clm in
  make sym_clm soi_cap
;;

(** {6 Extracting} *)

let string_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm =
  let val_sec_l = section_value_list_off_camlparagraph_for_symbol_let_mixed_tag tag_clm in
  List.map Section_value_v.string_list_off_section_value val_sec_l
;;

let section_value_list_off_camlparagraph_for_symbol_let_mixed_value val_clm =
  match val_clm with
  | Camlparagraph_for_symbol_let_mixed_value_t.Let_make_argument_equal_function_for_symbol val_sec_l -> val_sec_l
	
  | Camlparagraph_for_symbol_let_mixed_value_t.Let_name_argument_equal_function_for_symbol val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_mixed_value_t.Let_fullname_argument_equal_function_for_symbol val_sec_l -> val_sec_l

  | Camlparagraph_for_symbol_let_mixed_value_t.Let_symbol_list_argument_equal_function_for_symbol val_sec_l -> val_sec_l
;;

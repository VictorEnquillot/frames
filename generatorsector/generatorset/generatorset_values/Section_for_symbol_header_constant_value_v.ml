(** {3 Section_for_symbol_header_constant_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_header_constant_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_header_constant type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_header_constant_tag tag_shc =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_header_constant_tag 
      tag_shc 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making} *)

let make sym_shc soi_sec =
  let tag_shc = Tag_v.make sym_shc soi_sec in
  let val_gro_l = group_value_list_off_section_for_symbol_header_constant_tag tag_shc in
  match sym_shc with
  | Section_for_symbol_header_constant_symbol_t.Let_make_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_make_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal ->
      Section_for_symbol_header_constant_value_t.Let_make_nam_s_equal val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal ->
      Section_for_symbol_header_constant_value_t.Let_make_of_topson_bare_nam_equal val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal ->
      Section_for_symbol_header_constant_value_t.Let_make_of_topson_notleaf_nam_s_equal val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal ->
      Section_for_symbol_header_constant_value_t.Let_make_of_topson_ofstring_nam_s_equal val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_name_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_name_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_name_of_topson_bare_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_name_of_topson_notleaf_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_name_of_topson_ofstring_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_string_off_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_string_off_equal_function val_gro_l

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_bare_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_notleaf_equal_function val_gro_l
	
  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function ->
      Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_ofstring_equal_function val_gro_l
	
;;

(** {6 Retrieving} *)

let retrieve tag_shc =
  let sym_shc = Tag_v.entity_off_tag tag_shc in
  let soi_sec = Tag_v.sole_index_off_tag tag_shc in
  make sym_shc soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_header_constant_tag tag_shc =
  let val_gro_l = group_value_list_off_section_for_symbol_header_constant_tag tag_shc in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_header_constant_value val_shc =
  match val_shc with
   | Section_for_symbol_header_constant_value_t.Let_make_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_make_nam_s_equal val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_make_of_topson_bare_nam_equal val_gro_l -> val_gro_l
	 
   | Section_for_symbol_header_constant_value_t.Let_make_of_topson_notleaf_nam_s_equal val_gro_l -> val_gro_l
	 
   | Section_for_symbol_header_constant_value_t.Let_make_of_topson_ofstring_nam_s_equal val_gro_l -> val_gro_l
	 
   | Section_for_symbol_header_constant_value_t.Let_name_equal_function val_gro_l -> val_gro_l
	 
   | Section_for_symbol_header_constant_value_t.Let_name_of_topson_bare_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_name_of_topson_notleaf_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_name_of_topson_ofstring_equal_function val_gro_l -> val_gro_l
	 
   | Section_for_symbol_header_constant_value_t.Let_string_off_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_bare_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_notleaf_equal_function val_gro_l -> val_gro_l

   | Section_for_symbol_header_constant_value_t.Let_string_off_of_topson_ofstring_equal_function val_gro_l -> val_gro_l
;;

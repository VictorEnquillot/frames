(** {3 Section_for_symbol_footer_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_footer_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_footer_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let group_value_list_off_section_for_symbol_footer_top_tag tag_sft =
  let tag_sec = 
    Section_tag_v.section_tag_of_section_for_symbol_footer_top_tag 
      tag_sft 
  in
  let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec in
  List.map Group_value_v.retrieve tag_gro_l
;;

(** {6 Making} *)

let make sym_sft soi_sec =
  let tag_sft = Tag_v.make sym_sft soi_sec in
  let val_gro_l = group_value_list_off_section_for_symbol_footer_top_tag tag_sft in
  match sym_sft with
  | Section_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf ->
     Section_for_symbol_footer_top_value_t.Failwith_not_a_topson_notleaf val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make ->
     Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_make val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name ->
     Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_name val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off ->
     Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_string_off val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_make val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_name val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_string_off val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_make val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_name val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_make val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_name val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off ->
     Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_make ->
     Section_for_symbol_footer_top_value_t.Print_fatal_error_make val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_name ->
     Section_for_symbol_footer_top_value_t.Print_fatal_error_name val_gro_l
  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off ->
     Section_for_symbol_footer_top_value_t.Print_fatal_error_string_off val_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sft =
  let sym_sft = Tag_v.entity_off_tag tag_sft in
  let soi_sec = Tag_v.sole_index_off_tag tag_sft in
  make sym_sft soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_footer_top_tag tag_sft =
  let val_gro_l = group_value_list_off_section_for_symbol_footer_top_tag tag_sft in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

let group_value_list_off_section_for_symbol_footer_top_value val_sft =
  match val_sft with
  | Section_for_symbol_footer_top_value_t.Failwith_not_a_topson_notleaf val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_make val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_name val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_string_off val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_make val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_name val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_string_off val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_make val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_name val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_make val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_name val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Print_fatal_error_make val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Print_fatal_error_name val_gro_l -> val_gro_l 
  | Section_for_symbol_footer_top_value_t.Print_fatal_error_string_off val_gro_l -> val_gro_l 
;;

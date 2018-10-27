(** {3 Group_for_symbol_footer_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_footer_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_footer_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_symbol_footer_top_tag tag_gft =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_symbol_footer_top_tag 
      tag_gft 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gft soi_gro =
  let tag_gft = Tag_v.make sym_gft soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_symbol_footer_top_tag tag_gft in
  match sym_gft with
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf ->
     Group_for_symbol_footer_top_value_t.Failwith_not_a_topson_notleaf val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make ->
     Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_make val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name ->
     Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_name val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off ->
     Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_string_off val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_make val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_name val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_string_off val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_make val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_name val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_make val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_name val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off ->
     Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make ->
     Group_for_symbol_footer_top_value_t.Print_fatal_error_make val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name ->
     Group_for_symbol_footer_top_value_t.Print_fatal_error_name val_cal_l
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off ->
     Group_for_symbol_footer_top_value_t.Print_fatal_error_string_off val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gft =
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  let soi_cal = Tag_v.sole_index_off_tag tag_gft in
  make sym_gft soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_symbol_footer_top_tag tag_gft =
  let val_cal_l = camlline_value_list_off_group_for_symbol_footer_top_tag tag_gft in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_symbol_footer_top_value val_ghc =
  match val_ghc with
  | Group_for_symbol_footer_top_value_t.Failwith_not_a_topson_notleaf val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_make val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_name val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Let_underscore_print_error_failwith_string_off val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_make val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_name val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_bare_string_off val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_make val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_name val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_make val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_name val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Print_fatal_error_make val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Print_fatal_error_name val_cal_l -> val_cal_l 
  | Group_for_symbol_footer_top_value_t.Print_fatal_error_string_off val_cal_l -> val_cal_l 
;;

(** {3 Camlline_constant_function_symbol_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_constant_function_value_v";
   "Needed-by : VGNR:Camlline_constant_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 Making.} *)

let make sym_ccf soi_cal =
  match sym_ccf with
  | Camlline_constant_function_symbol_t.Let_documentation_unit_equal ->
      Camlline_constant_function_value_t.Let_documentation_unit_equal "let documentation () = "

  | Camlline_constant_function_symbol_t.Let_longname_equal_function ->
      Camlline_constant_function_value_t.Let_longname_equal_function "let longname = function" 

  | Camlline_constant_function_symbol_t.Let_make_argument_equal_function ->
      Camlline_constant_function_value_t.Let_make_argument_equal_function "let make s = function" 

  | Camlline_constant_function_symbol_t.Let_make_nam_s_equal ->
      Camlline_constant_function_value_t.Let_make_nam_s_equal "let make nam s ="

  | Camlline_constant_function_symbol_t.Let_make_of_topson_notleaf_nam_s_equal ->
      Camlline_constant_function_value_t.Let_make_of_topson_notleaf_nam_s_equal "let make_of_topson_notleaf nam s ="

  | Camlline_constant_function_symbol_t.Let_nam_cod_equal ->
      Camlline_constant_function_value_t.Let_nam_cod_equal "let nam_cod = Management_v.current_module_name (documentation ());;"
 
  | Camlline_constant_function_symbol_t.Let_make_equal_function ->
      Camlline_constant_function_value_t.Let_make_equal_function "let make = function" 

  | Camlline_constant_function_symbol_t.Let_make_equal_tag_vdot_make_double_semicolon ->
      Camlline_constant_function_value_t.Let_make_equal_tag_vdot_make_double_semicolon "let make = Tag_v.make;;"

  | Camlline_constant_function_symbol_t.Let_map_equal_function ->
      Camlline_constant_function_value_t.Let_map_equal_function "let map = function" 

  | Camlline_constant_function_symbol_t.Let_make_of_topson_bare_nam_equal ->
      Camlline_constant_function_value_t.Let_make_of_topson_bare_nam_equal "let make_of_topson_bare nam ="

  | Camlline_constant_function_symbol_t.Let_make_of_topson_ofstring_nam_s_equal ->
      Camlline_constant_function_value_t.Let_make_of_topson_ofstring_nam_s_equal "let make_of_topson_ofstring nam s ="

  | Camlline_constant_function_symbol_t.Let_name_equal_function ->
      Camlline_constant_function_value_t.Let_name_equal_function "let name = function" 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_bare_equal_function ->
      Camlline_constant_function_value_t.Let_name_of_topson_bare_equal_function "let name_of_topson_bare = function" 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal_function ->
      Camlline_constant_function_value_t.Let_name_of_topson_notleaf_equal_function "let name_of_topson_notleaf = function" 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_ofstring_equal_function ->
      Camlline_constant_function_value_t.Let_name_of_topson_ofstring_equal_function "let name_of_topson_ofstring = function" 

  | Camlline_constant_function_symbol_t.Let_string_off_equal_function ->
      Camlline_constant_function_value_t.Let_string_off_equal_function "let string_off = function" 
	
  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_bare_equal_function ->
      Camlline_constant_function_value_t.Let_string_off_of_topson_bare_equal_function "let string_off_of_topson_bare = function" 

  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_notleaf_equal_function ->
      Camlline_constant_function_value_t.Let_string_off_of_topson_notleaf_equal_function "let string_off_of_topson_notleaf = function" 

  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_ofstring_equal_function ->
      Camlline_constant_function_value_t.Let_string_off_of_topson_ofstring_equal_function "let string_off_of_topson_ofstring = function" 

  | Camlline_constant_function_symbol_t.Let_symbol_of_formula_equal_function ->
      Camlline_constant_function_value_t.Let_symbol_of_formula_equal_function "let symbol_of_formula = function"

  | Camlline_constant_function_symbol_t.Let_print_ppf_equal_function -> 
      Camlline_constant_function_value_t.Let_print_ppf_equal_function "let print ppf = function" 

  | Camlline_constant_function_symbol_t.Let_print_ppf_str_equal ->
      Camlline_constant_function_value_t.Let_print_ppf_str_equal "let print ppf str =" 

  | Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines -> 
     let str =
       Format.sprintf "  Error_messages_v.print_fatal_error\
       @.      nam_cod \"make\"\
       @.      \"a valid leaf name\"\
       @.      str \"check\""
     in	   
     Camlline_constant_function_value_t.Pipe_print_fatal_error_make_4_lines str

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow ->
      Camlline_constant_function_value_t.Pipe_underscore_arrow "  | _ ->" 

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false ->
      Camlline_constant_function_value_t.Pipe_underscore_arrow_false "  | _ -> false" 

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_true ->
      Camlline_constant_function_value_t.Pipe_underscore_arrow_true "  | _ -> true" 

  | Camlline_constant_function_symbol_t.Double_quote_example ->
      Camlline_constant_function_value_t.Double_quote_example "  \"Example: \";"
 
  | Camlline_constant_function_symbol_t.Double_quote_how_is_it_done ->
      Camlline_constant_function_value_t.Double_quote_how_is_it_done "  \"How-is-it-done: \";"

  | Camlline_constant_function_symbol_t.Double_quote_needed ->
      Camlline_constant_function_value_t.Double_quote_needed "  \"Needed-by: \";"

  | Camlline_constant_function_symbol_t.Double_quote_needs ->
      Camlline_constant_function_value_t.Double_quote_needs "  \"Needs: \";"

  | Camlline_constant_function_symbol_t.Double_quote_what_is_it ->
      Camlline_constant_function_value_t.Double_quote_what_is_it "  \"What-is-it: \";"

  | Camlline_constant_function_symbol_t.Let_count_equal_zero ->    
      Camlline_constant_function_value_t.Let_count_equal_zero "  let count = 0 in"

  | Camlline_constant_function_symbol_t.Let_count_increment_in ->    
      Camlline_constant_function_value_t.Let_count_increment_in "  let count = Integer_v.increment count in"

  | Camlline_constant_function_symbol_t.Let_nam_low_equal_string_lowercase_nam_in ->
      Camlline_constant_function_value_t.Let_nam_low_equal_string_lowercase_nam_in "  let nam_low = String.lowercase nam in"

  | Camlline_constant_function_symbol_t.Map ->
      Camlline_constant_function_value_t.Map "  map" 

  | Camlline_constant_function_symbol_t.Match_nam_low_with ->
      Camlline_constant_function_value_t.Match_nam_low_with "  match nam_low with"
 
  | Camlline_constant_function_symbol_t.Try_make_of_topson_bare_nam ->
      Camlline_constant_function_value_t.Try_make_of_topson_bare_nam "  try make_of_topson_bare nam"

  | Camlline_constant_function_symbol_t.Try_make_of_topson_notleaf_nam_s ->
      Camlline_constant_function_value_t.Try_make_of_topson_notleaf_nam_s "  try make_of_topson_notleaf nam s"

  | Camlline_constant_function_symbol_t.Try_make_of_topson_ofstring_nam_s ->
      Camlline_constant_function_value_t.Try_make_of_topson_ofstring_nam_s "  try make_of_topson_ofstring nam s"

  | Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index ->
      Camlline_constant_function_value_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index
	"    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index"
;;

(** {6 Retrieving} *)

let retrieve tag_ccf =
  let sym_ccf = Tag_v.entity_off_tag tag_ccf in
  let soi_cal = Tag_v.sole_index_off_tag tag_ccf in
  make sym_ccf soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccf =
  match val_ccf with
  | Camlline_constant_function_value_t.Let_documentation_unit_equal str -> str
  | Camlline_constant_function_value_t.Let_longname_equal_function str -> str
  | Camlline_constant_function_value_t.Let_make_argument_equal_function str -> str
  | Camlline_constant_function_value_t.Let_make_equal_function str -> str
  | Camlline_constant_function_value_t.Let_make_equal_tag_vdot_make_double_semicolon str -> str
  | Camlline_constant_function_value_t.Let_make_nam_s_equal str -> str
  | Camlline_constant_function_value_t.Let_make_of_topson_bare_nam_equal str -> str
  | Camlline_constant_function_value_t.Let_make_of_topson_notleaf_nam_s_equal str -> str
  | Camlline_constant_function_value_t.Let_make_of_topson_ofstring_nam_s_equal str -> str
  | Camlline_constant_function_value_t.Let_map_equal_function str -> str
  | Camlline_constant_function_value_t.Let_nam_cod_equal str -> str
  | Camlline_constant_function_value_t.Let_name_equal_function str -> str
  | Camlline_constant_function_value_t.Let_name_of_topson_bare_equal_function str -> str
  | Camlline_constant_function_value_t.Let_name_of_topson_notleaf_equal_function str -> str
  | Camlline_constant_function_value_t.Let_name_of_topson_ofstring_equal_function str -> str
  | Camlline_constant_function_value_t.Let_print_ppf_equal_function str -> str
  | Camlline_constant_function_value_t.Let_print_ppf_str_equal str -> str
  | Camlline_constant_function_value_t.Let_string_off_equal_function str -> str
  | Camlline_constant_function_value_t.Let_string_off_of_topson_bare_equal_function str -> str
  | Camlline_constant_function_value_t.Let_string_off_of_topson_notleaf_equal_function str -> str
  | Camlline_constant_function_value_t.Let_string_off_of_topson_ofstring_equal_function str -> str
  | Camlline_constant_function_value_t.Let_symbol_of_formula_equal_function str -> str
  | Camlline_constant_function_value_t.Pipe_print_fatal_error_make_4_lines str -> str
  | Camlline_constant_function_value_t.Pipe_underscore_arrow str -> str
  | Camlline_constant_function_value_t.Pipe_underscore_arrow_false str -> str
  | Camlline_constant_function_value_t.Pipe_underscore_arrow_true str -> str
  | Camlline_constant_function_value_t.Double_quote_example str -> str
  | Camlline_constant_function_value_t.Double_quote_how_is_it_done str -> str
  | Camlline_constant_function_value_t.Double_quote_needed str -> str
  | Camlline_constant_function_value_t.Double_quote_needs str -> str
  | Camlline_constant_function_value_t.Double_quote_what_is_it str -> str
  | Camlline_constant_function_value_t.Let_count_equal_zero str -> str
  | Camlline_constant_function_value_t.Let_count_increment_in str -> str
  | Camlline_constant_function_value_t.Let_nam_low_equal_string_lowercase_nam_in str -> str
  | Camlline_constant_function_value_t.Map str -> str
  | Camlline_constant_function_value_t.Match_nam_low_with str -> str
  | Camlline_constant_function_value_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index str -> str
  | Camlline_constant_function_value_t.Try_make_of_topson_bare_nam str -> str
  | Camlline_constant_function_value_t.Try_make_of_topson_notleaf_nam_s str -> str
  | Camlline_constant_function_value_t.Try_make_of_topson_ofstring_nam_s str -> str
;;

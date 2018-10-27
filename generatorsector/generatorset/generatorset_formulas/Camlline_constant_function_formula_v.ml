(** {3 Camlline_constant_function_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_constant_function_formula_v";
   "Needed-by : FGNR:Camlline_constant_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccf =
  match for_ccf with
  | Camlline_constant_function_formula_t.Let_documentation_unit_equal _ ->
      Camlline_constant_function_symbol_t.Let_documentation_unit_equal

  | Camlline_constant_function_formula_t.Let_make_nam_s_equal  _ ->
      Camlline_constant_function_symbol_t.Let_make_nam_s_equal

  | Camlline_constant_function_formula_t.Let_make_argument_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_make_argument_equal_function

  | Camlline_constant_function_formula_t.Let_make_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_make_equal_function

  | Camlline_constant_function_formula_t.Let_make_equal_tag_vdot_make_double_semicolon _ ->
      Camlline_constant_function_symbol_t.Let_make_equal_tag_vdot_make_double_semicolon

  | Camlline_constant_function_formula_t.Let_make_of_topson_bare_nam_equal _ ->
      Camlline_constant_function_symbol_t.Let_make_of_topson_bare_nam_equal

  | Camlline_constant_function_formula_t.Let_make_of_topson_ofstring_nam_s_equal _ ->
      Camlline_constant_function_symbol_t.Let_make_of_topson_ofstring_nam_s_equal

  | Camlline_constant_function_formula_t.Let_make_of_topson_notleaf_nam_s_equal _ ->
      Camlline_constant_function_symbol_t.Let_make_of_topson_notleaf_nam_s_equal

  | Camlline_constant_function_formula_t.Let_map_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_map_equal_function

  | Camlline_constant_function_formula_t.Let_name_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_name_equal_function 

  | Camlline_constant_function_formula_t.Let_name_of_topson_bare_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_name_of_topson_bare_equal_function 

  | Camlline_constant_function_formula_t.Let_name_of_topson_notleaf_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal_function

  | Camlline_constant_function_formula_t.Let_name_of_topson_ofstring_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_name_of_topson_ofstring_equal_function

  | Camlline_constant_function_formula_t.Let_nam_cod_equal  _ ->
      Camlline_constant_function_symbol_t.Let_nam_cod_equal

  | Camlline_constant_function_formula_t.Let_longname_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_longname_equal_function
	
  | Camlline_constant_function_formula_t.Let_string_off_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_string_off_equal_function

  | Camlline_constant_function_formula_t.Let_string_off_of_topson_bare_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_string_off_of_topson_bare_equal_function

  | Camlline_constant_function_formula_t.Let_string_off_of_topson_notleaf_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_string_off_of_topson_notleaf_equal_function

  | Camlline_constant_function_formula_t.Let_string_off_of_topson_ofstring_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_string_off_of_topson_ofstring_equal_function

  | Camlline_constant_function_formula_t.Let_print_ppf_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_print_ppf_equal_function

  | Camlline_constant_function_formula_t.Let_print_ppf_str_equal  _ ->
      Camlline_constant_function_symbol_t.Let_print_ppf_str_equal

  | Camlline_constant_function_formula_t.Pipe_underscore_arrow  _ ->
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow

  | Camlline_constant_function_formula_t.Pipe_underscore_arrow_false  _ ->
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false

  | Camlline_constant_function_formula_t.Pipe_underscore_arrow_true  _ ->
      Camlline_constant_function_symbol_t.Pipe_underscore_arrow_true

  | Camlline_constant_function_formula_t.Pipe_print_fatal_error_make_4_lines  _ ->
      Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines

  | Camlline_constant_function_formula_t.Double_quote_example  _ ->
      Camlline_constant_function_symbol_t.Double_quote_example

  | Camlline_constant_function_formula_t.Double_quote_how_is_it_done  _ ->
      Camlline_constant_function_symbol_t.Double_quote_how_is_it_done

  | Camlline_constant_function_formula_t.Double_quote_needed  _ ->
      Camlline_constant_function_symbol_t.Double_quote_needed

  | Camlline_constant_function_formula_t.Double_quote_needs  _ ->
      Camlline_constant_function_symbol_t.Double_quote_needs

  | Camlline_constant_function_formula_t.Double_quote_what_is_it  _ ->
      Camlline_constant_function_symbol_t.Double_quote_what_is_it
	
  | Camlline_constant_function_formula_t.Let_nam_low_equal_string_lowercase_nam_in  _ ->
      Camlline_constant_function_symbol_t.Let_nam_low_equal_string_lowercase_nam_in
	
  | Camlline_constant_function_formula_t.Let_count_equal_zero _ ->
      Camlline_constant_function_symbol_t.Let_count_equal_zero

  | Camlline_constant_function_formula_t.Let_count_increment_in _ ->
      Camlline_constant_function_symbol_t.Let_count_increment_in

  | Camlline_constant_function_formula_t.Let_symbol_of_formula_equal_function  _ ->
      Camlline_constant_function_symbol_t.Let_symbol_of_formula_equal_function

  | Camlline_constant_function_formula_t.Map  _ ->
      Camlline_constant_function_symbol_t.Map

  | Camlline_constant_function_formula_t.Match_nam_low_with  _ ->
      Camlline_constant_function_symbol_t.Match_nam_low_with

  | Camlline_constant_function_formula_t.Try_make_of_topson_bare_nam _ ->
      Camlline_constant_function_symbol_t.Try_make_of_topson_bare_nam

  | Camlline_constant_function_formula_t.Try_make_of_topson_notleaf_nam_s _ ->
      Camlline_constant_function_symbol_t.Try_make_of_topson_notleaf_nam_s

  | Camlline_constant_function_formula_t.Try_make_of_topson_ofstring_nam_s _ ->
      Camlline_constant_function_symbol_t.Try_make_of_topson_ofstring_nam_s

  | Camlline_constant_function_formula_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index _ ->
      Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index
;;


(** {6 Naming_for_formula} *)

let name for_ccf = 
  let sym_ccf = symbol_of_formula for_ccf in
  Camlline_constant_function_symbol_v.name sym_ccf
;;
(* ***

let string_off for_ccf =
  let sym_ccf = symbol_of_formula for_ccf in
  Camlline_constant_function_symbol_v.string_off sym_ccf
;;

let longname for_ccf =
  Format.sprintf "Camlline_constant_function_formula_t.%s" 
    (String.capitalize (name for_ccf))

let fullname for_ccf =
  Format.sprintf "%s \"%s\"" (longname for_ccf) (string_off for_ccf)
;;
*** *)


(** {6 Building_and_storing} *)

let build_n_store sym_ccf soi_cal =
  let sym_ent_l = Camlline_constant_function_interface_v.make sym_ccf in 
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_ccf soi_cal =
  let tag_ent_l = build_n_store sym_ccf soi_cal in

  match sym_ccf with
  | Camlline_constant_function_symbol_t.Let_documentation_unit_equal ->
      Camlline_constant_function_formula_t.Let_documentation_unit_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_nam_s_equal ->
      Camlline_constant_function_formula_t.Let_make_nam_s_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_argument_equal_function ->
      Camlline_constant_function_formula_t.Let_make_argument_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_equal_function ->
      Camlline_constant_function_formula_t.Let_make_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_equal_tag_vdot_make_double_semicolon ->
      Camlline_constant_function_formula_t.Let_make_equal_tag_vdot_make_double_semicolon tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_of_topson_bare_nam_equal ->
      Camlline_constant_function_formula_t.Let_make_of_topson_bare_nam_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_of_topson_ofstring_nam_s_equal ->
      Camlline_constant_function_formula_t.Let_make_of_topson_ofstring_nam_s_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_make_of_topson_notleaf_nam_s_equal ->
      Camlline_constant_function_formula_t.Let_make_of_topson_notleaf_nam_s_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_map_equal_function ->
      Camlline_constant_function_formula_t.Let_map_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_name_equal_function ->
      Camlline_constant_function_formula_t.Let_name_equal_function tag_ent_l 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_bare_equal_function ->
      Camlline_constant_function_formula_t.Let_name_of_topson_bare_equal_function tag_ent_l 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_notleaf_equal_function ->
      Camlline_constant_function_formula_t.Let_name_of_topson_notleaf_equal_function tag_ent_l 

  | Camlline_constant_function_symbol_t.Let_name_of_topson_ofstring_equal_function ->
      Camlline_constant_function_formula_t.Let_name_of_topson_ofstring_equal_function tag_ent_l 

  | Camlline_constant_function_symbol_t.Let_nam_cod_equal ->
      Camlline_constant_function_formula_t.Let_nam_cod_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Let_longname_equal_function ->
      Camlline_constant_function_formula_t.Let_longname_equal_function tag_ent_l
	
  | Camlline_constant_function_symbol_t.Let_string_off_equal_function ->
      Camlline_constant_function_formula_t.Let_string_off_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_bare_equal_function ->
      Camlline_constant_function_formula_t.Let_string_off_of_topson_bare_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_notleaf_equal_function ->
      Camlline_constant_function_formula_t.Let_string_off_of_topson_notleaf_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_string_off_of_topson_ofstring_equal_function ->
      Camlline_constant_function_formula_t.Let_string_off_of_topson_ofstring_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_symbol_of_formula_equal_function ->
      Camlline_constant_function_formula_t.Let_symbol_of_formula_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_print_ppf_equal_function ->
      Camlline_constant_function_formula_t.Let_print_ppf_equal_function tag_ent_l

  | Camlline_constant_function_symbol_t.Let_print_ppf_str_equal ->
      Camlline_constant_function_formula_t.Let_print_ppf_str_equal tag_ent_l

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow ->
      Camlline_constant_function_formula_t.Pipe_underscore_arrow tag_ent_l

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_false ->
      Camlline_constant_function_formula_t.Pipe_underscore_arrow_false tag_ent_l

  | Camlline_constant_function_symbol_t.Pipe_underscore_arrow_true ->
      Camlline_constant_function_formula_t.Pipe_underscore_arrow_true tag_ent_l

  | Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines ->
      Camlline_constant_function_formula_t.Pipe_print_fatal_error_make_4_lines tag_ent_l

  | Camlline_constant_function_symbol_t.Double_quote_example ->
      Camlline_constant_function_formula_t.Double_quote_example tag_ent_l

  | Camlline_constant_function_symbol_t.Double_quote_how_is_it_done ->
      Camlline_constant_function_formula_t.Double_quote_how_is_it_done tag_ent_l

  | Camlline_constant_function_symbol_t.Double_quote_needed ->
      Camlline_constant_function_formula_t.Double_quote_needed tag_ent_l

  | Camlline_constant_function_symbol_t.Double_quote_needs ->
      Camlline_constant_function_formula_t.Double_quote_needs tag_ent_l

  | Camlline_constant_function_symbol_t.Double_quote_what_is_it ->
      Camlline_constant_function_formula_t.Double_quote_what_is_it tag_ent_l
	
  | Camlline_constant_function_symbol_t.Let_nam_low_equal_string_lowercase_nam_in ->
      Camlline_constant_function_formula_t.Let_nam_low_equal_string_lowercase_nam_in tag_ent_l
	
  | Camlline_constant_function_symbol_t.Let_count_equal_zero ->
      Camlline_constant_function_formula_t.Let_count_equal_zero tag_ent_l

  | Camlline_constant_function_symbol_t.Let_count_increment_in ->
      Camlline_constant_function_formula_t.Let_count_increment_in tag_ent_l

  | Camlline_constant_function_symbol_t.Map ->
      Camlline_constant_function_formula_t.Map tag_ent_l

  | Camlline_constant_function_symbol_t.Match_nam_low_with ->
      Camlline_constant_function_formula_t.Match_nam_low_with tag_ent_l

  | Camlline_constant_function_symbol_t.Try_make_of_topson_bare_nam ->
      Camlline_constant_function_formula_t.Try_make_of_topson_bare_nam tag_ent_l

  | Camlline_constant_function_symbol_t.Try_make_of_topson_notleaf_nam_s ->
      Camlline_constant_function_formula_t.Try_make_of_topson_notleaf_nam_s tag_ent_l

  | Camlline_constant_function_symbol_t.Try_make_of_topson_ofstring_nam_s ->
      Camlline_constant_function_formula_t.Try_make_of_topson_ofstring_nam_s tag_ent_l

  | Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index ->
      Camlline_constant_function_formula_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index tag_ent_l;;

(** {6 Retrieving} *)

let retrieve tag_ccf = 
  let sym_ccf = Tag_v.entity_off_tag tag_ccf in
  let soi_cal = Tag_v.sole_index_off_tag tag_ccf in
  make sym_ccf soi_cal
;;

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_constant_function_formula for_ccf = 
  match for_ccf with
  | Camlline_constant_function_formula_t.Let_documentation_unit_equal tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_make_nam_s_equal tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_make_argument_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_make_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_make_equal_tag_vdot_make_double_semicolon tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_make_of_topson_bare_nam_equal tag_ent_l ->      tag_ent_l

  | Camlline_constant_function_formula_t.Let_make_of_topson_ofstring_nam_s_equal tag_ent_l ->      tag_ent_l
  
  | Camlline_constant_function_formula_t.Let_make_of_topson_notleaf_nam_s_equal tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_map_equal_function tag_ent_l ->
      tag_ent_l

  | Camlline_constant_function_formula_t.Let_name_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_name_of_topson_bare_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_name_of_topson_notleaf_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_name_of_topson_ofstring_equal_function tag_ent_l -> tag_ent_l
 

  | Camlline_constant_function_formula_t.Let_nam_cod_equal tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_longname_equal_function tag_ent_l ->
      tag_ent_l

  | Camlline_constant_function_formula_t.Let_string_off_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_string_off_of_topson_bare_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_string_off_of_topson_notleaf_equal_function tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Let_string_off_of_topson_ofstring_equal_function tag_ent_l -> tag_ent_l

  | Camlline_constant_function_formula_t.Let_print_ppf_equal_function tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_print_ppf_str_equal tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Pipe_underscore_arrow tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Pipe_underscore_arrow_false tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Pipe_underscore_arrow_true tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Pipe_print_fatal_error_make_4_lines tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Double_quote_example tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Double_quote_how_is_it_done tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Double_quote_needed tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Double_quote_needs tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Double_quote_what_is_it tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_nam_low_equal_string_lowercase_nam_in tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_count_equal_zero tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_count_increment_in tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Let_symbol_of_formula_equal_function tag_ent_l ->      tag_ent_l
  | Camlline_constant_function_formula_t.Map tag_ent_l ->      tag_ent_l
  | Camlline_constant_function_formula_t.Match_nam_low_with tag_ent_l ->
      tag_ent_l
  | Camlline_constant_function_formula_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index tag_ent_l -> tag_ent_l
  | Camlline_constant_function_formula_t.Try_make_of_topson_bare_nam tag_ent_l ->      tag_ent_l
  | Camlline_constant_function_formula_t.Try_make_of_topson_ofstring_nam_s tag_ent_l ->      tag_ent_l
  | Camlline_constant_function_formula_t.Try_make_of_topson_notleaf_nam_s tag_ent_l ->      tag_ent_l
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_ent for_ccf = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_function_formula for_ccf in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccf = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_function_formula for_ccf in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccf_1 for_ccf_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_function_formula for_ccf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_function_formula for_ccf_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccf_1 for_ccf_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_function_formula for_ccf_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_function_formula for_ccf_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;


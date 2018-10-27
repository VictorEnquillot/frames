(** {3 Section_for_symbol_footer_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Section_for_symbol_footer_top_interface_v";
   "Current : FGNR:Section_for_symbol_footer_top_formula_v";
   "Needed-by : FGNR:Section_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_sft =
  match for_sft with
  | Section_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf _ -> 
      Section_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf

  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make _ -> 
      Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make

  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name _ -> 
      Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name

  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off _ -> 
      Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name

  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off _ -> 
      Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off

  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_make _ -> 
      Section_for_symbol_footer_top_symbol_t.Print_fatal_error_make

  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_name _ -> 
      Section_for_symbol_footer_top_symbol_t.Print_fatal_error_name

  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_string_off _ -> 
      Section_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off

;;

(** {6 Naming_for_formula} *)

let name for_sft = 
  let sym_sft = symbol_of_formula for_sft in
  Section_for_symbol_footer_top_symbol_v.name sym_sft
;;
(* ***

let string_off for_sft =
  let sym_sft = symbol_of_formula for_sft in
  Section_for_symbol_footer_top_symbol_v.string_off sym_sft
;;

let longname for_sft =
  Format.sprintf "Section_for_symbol_footer_top_formula_t.%s" 
    (String.capitalize (name for_sft))

let fullname for_sft =
  Format.sprintf "%s \"%s\"" (longname for_sft) (string_off for_sft)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_sft soi_sec =
  let sym_gro_l = Section_for_symbol_footer_top_interface_v.make sym_sft in
  let soi_gro_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_gro_l)
      soi_sec
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_group_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_gro_l soi_gro_l;
  
  List.map2 Tag_v.make sym_gro_l soi_gro_l
;;

(** {6 Making_for_formula} *)

let make sym_sft soi_sec =
  let tag_gro_l = build_n_store sym_sft soi_sec in

  match sym_sft with 
  | Section_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf ->      Section_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make ->      Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make tag_gro_l
  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name ->      Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name tag_gro_l
  | Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off ->      Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make ->       Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name ->       Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off ->       Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off ->      Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off tag_gro_l

  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_make ->      Section_for_symbol_footer_top_formula_t.Print_fatal_error_make tag_gro_l
  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_name ->      Section_for_symbol_footer_top_formula_t.Print_fatal_error_name tag_gro_l
  | Section_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off ->      Section_for_symbol_footer_top_formula_t.Print_fatal_error_string_off tag_gro_l
;;

(** {6 Retrieving} *)

let retrieve tag_sft =
  let soi_sec = Tag_v.sole_index_off_tag tag_sft in
  let sym_sft = Tag_v.entity_off_tag tag_sft in
  make sym_sft soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let group_tag_list_off_section_for_symbol_footer_top_formula for_sft =
  match for_sft with
  | Section_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_make tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_name tag_cap_l -> tag_cap_l
  | Section_for_symbol_footer_top_formula_t.Print_fatal_error_string_off tag_cap_l -> tag_cap_l
;;

let group_tag_list_off_section_for_symbol_footer_top_tag tag_sft =
  let for_sft = retrieve tag_sft in
  group_tag_list_off_section_for_symbol_footer_top_formula for_sft
;; 

let camlline_tag_list_off_section_for_symbol_footer_top_formula for_sft =
  let tag_gro_l = 
    group_tag_list_off_section_for_symbol_footer_top_formula 
      for_sft 
  in
  let for_gro_l = List.map
      Group_formula_v.retrieve 
      tag_gro_l 
  in
  let tag_cal_ll = List.map
      Group_formula_v.camlline_tag_list_off_group_formula 
      for_gro_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_section_for_symbol_footer_top_tag tag_sft =
  let for_sft = retrieve tag_sft in
  camlline_tag_list_off_section_for_symbol_footer_top_formula for_sft
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_gro for_sft = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_footer_top_formula for_sft in
  List.map f_of_tag_gro tag_gro_l
;;

let iter f_of_tag_gro for_sft = 
  let tag_gro_l = group_tag_list_off_section_for_symbol_footer_top_formula for_sft in
  List.iter f_of_tag_gro tag_gro_l ;;

let map2 f_of_tag_gro for_sft_1 for_sft_2  = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_footer_top_formula for_sft_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_footer_top_formula for_sft_2 in
  List.map2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2
;;

let iter2 f_of_tag_gro for_sft_1 for_sft_2 = 
  let tag_gro_l_1 = group_tag_list_off_section_for_symbol_footer_top_formula for_sft_1 in
  let tag_gro_l_2 = group_tag_list_off_section_for_symbol_footer_top_formula for_sft_2 in
  List.iter2 f_of_tag_gro tag_gro_l_1 tag_gro_l_2 
;;


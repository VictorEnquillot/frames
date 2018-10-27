(** {3 Group_for_symbol_footer_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_symbol_footer_top_interface_v";
   "Current : FGNR:Group_for_symbol_footer_top_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gft =
  match for_gft with
  | Group_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf _ ->       Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf
  | Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name _ ->      Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name
  | Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off _ ->      Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off _ ->      Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off
  | Group_for_symbol_footer_top_formula_t.Print_fatal_error_make _ ->      Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make
 | Group_for_symbol_footer_top_formula_t.Print_fatal_error_name _ ->      Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name
 | Group_for_symbol_footer_top_formula_t.Print_fatal_error_string_off _ ->      Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off
| Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make _ ->      Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make
;;

(** {6 Naming_for_formula} *)

let name for_gft = 
  let sym_gft = symbol_of_formula for_gft in
  Group_for_symbol_footer_top_symbol_v.name sym_gft
;;
(* ***

let string_off for_gft =
  let sym_gft = symbol_of_formula for_gft in
  Group_for_symbol_footer_top_symbol_v.string_off sym_gft
;;

let longname for_gft =
  Format.sprintf "Group_for_symbol_footer_top_formula_t.%s" 
    (String.capitalize (name for_gft))

let fullname for_gft =
  Format.sprintf "%s \"%s\"" (longname for_gft) (string_off for_gft)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_gft soi_gro =
  let tag_gft = Tag_v.make sym_gft soi_gro in
  let non_gft = 
    Group_for_symbol_footer_top_tag_v.group_for_symbol_footer_top_nontup_off_group_for_symbol_footer_top_tag 
      tag_gft 
  in
  let sym_ent_top = Nonuplet_v.right_third_off_nonuplet non_gft in
  let sym_cal_l = 
    Group_for_symbol_footer_top_interface_v.make 
      sym_gft 
      sym_ent_top
  in
  let soi_cal_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cal_l)
      soi_gro
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cal_l soi_cal_l;
  
  List.map2 Tag_v.make sym_cal_l soi_cal_l
;;

(** {6 Making_for_formula} *)

let make sym_gft soi_gro =
  let tag_cal_l = build_n_store sym_gft soi_gro in

  match sym_gft with 
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf ->      Group_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off ->      Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make ->      Group_for_symbol_footer_top_formula_t.Print_fatal_error_make tag_cal_l
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name ->      Group_for_symbol_footer_top_formula_t.Print_fatal_error_name tag_cal_l
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off ->      Group_for_symbol_footer_top_formula_t.Print_fatal_error_string_off tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make ->      Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name ->      Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name tag_cal_l

  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off ->      Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gft =
  let soi_gro = Tag_v.sole_index_off_tag tag_gft in
  let sym_gft = Tag_v.entity_off_tag tag_gft in
  make sym_gft soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft =
  match for_gft with
  | Group_for_symbol_footer_top_formula_t.Failwith_not_a_topson_notleaf tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_make tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_name tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Let_underscore_print_error_failwith_string_off tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_make tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_name tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_bare_string_off tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_make tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_name tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_make tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_name tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Print_fatal_error_make tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Print_fatal_error_name tag_cal_l -> tag_cal_l
  | Group_for_symbol_footer_top_formula_t.Print_fatal_error_string_off tag_cal_l -> tag_cal_l
;;

let camlline_tag_list_off_group_for_symbol_footer_top_tag tag_gft =
  let for_gft = retrieve tag_gft in
  camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft
;; 

(** {6 Iterating_for_formula_for_symbol_footer_top.} *)

let map f_of_tag_cal for_gft = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gft = 
  let tag_cal_l = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gft_1 for_gft_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gft_1 for_gft_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_symbol_footer_top_formula for_gft_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

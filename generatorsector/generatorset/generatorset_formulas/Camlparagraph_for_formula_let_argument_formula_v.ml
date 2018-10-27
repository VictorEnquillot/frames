(** {3 Camlparagraph_for_formula_let_argument_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlparagraph_for_formula_let_argument_interface_v";
   "Current : FGNR:Camlparagraph_for_formula_let_argument_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cla =
  match for_cla with
  | Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_basic_sons _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons
  | Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_proper_sons _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_proper_sons
  | Camlparagraph_for_formula_let_argument_formula_t.Let_builder_tag_list_off_top_tag _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_builder_tag_list_off_top_tag
  | Camlparagraph_for_formula_let_argument_formula_t.Let_data_tag_list_off_top_tag _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_data_tag_list_off_top_tag
  | Camlparagraph_for_formula_let_argument_formula_t.Let_documentation_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_documentation_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_fullname_argument_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_fullname_argument_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_iter2_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_iter2_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_iter_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_iter_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_longname_argument_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_longname_argument_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_make_arguments_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_make_arguments_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_map2_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_map2_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_map_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_map_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_name_argument_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_name_argument_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_retrieve_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_retrieve_for_formula
  | Camlparagraph_for_formula_let_argument_formula_t.Let_string_off_argument_for_formula _ ->
     Camlparagraph_for_formula_let_argument_symbol_t.Let_string_off_argument_for_formula
;;

(** {6 Naming_for_formula} *)

let name for_cla = 
  let sym_cla = symbol_of_formula for_cla in
  Camlparagraph_for_formula_let_argument_symbol_v.name sym_cla
;;
(* ***

let string_off for_cla =
  let sym_cla = symbol_of_formula for_cla in
  Camlparagraph_for_formula_let_argument_symbol_v.string_off sym_cla
;;

let longname for_cla =
  Format.sprintf "Camlparagraph_for_formula_let_argument_formula_t.%s" 
    (String.capitalize (name for_cla))

let fullname for_cla =
  Format.sprintf "%s \"%s\"" (longname for_cla) (string_off for_cla)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cla soi_cap =
  let sym_sec_l = 
    Camlparagraph_for_formula_let_argument_interface_v.make 
      sym_cla 
  in
  let soi_sec_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_sec_l)
      soi_cap
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_section_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_sec_l soi_sec_l;
  
  List.map2 Tag_v.make sym_sec_l soi_sec_l
;;

(** {6 Making_for_formula} *)

let make sym_cla soi_sec =
  let tag_sec_l = build_n_store sym_cla soi_sec in

  match sym_cla with 
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_basic_sons tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_proper_sons ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_proper_sons tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_builder_tag_list_off_top_tag ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_builder_tag_list_off_top_tag tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_data_tag_list_off_top_tag ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_data_tag_list_off_top_tag tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_documentation_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_documentation_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_fullname_argument_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_fullname_argument_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_iter2_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_iter2_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_iter_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_iter_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_longname_argument_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_longname_argument_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_make_arguments_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_make_arguments_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_map2_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_map2_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_map_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_map_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_name_argument_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_name_argument_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_retrieve_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_retrieve_for_formula tag_sec_l
  | Camlparagraph_for_formula_let_argument_symbol_t.Let_string_off_argument_for_formula ->
     Camlparagraph_for_formula_let_argument_formula_t.Let_string_off_argument_for_formula tag_sec_l








;;

(** {6 Retrieving} *)

let retrieve tag_cla =
  let soi_sec = Tag_v.sole_index_off_tag tag_cla in
  let sym_cla = Tag_v.entity_off_tag tag_cla in
  make sym_cla soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla =
  match for_cla with
  | Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_basic_sons tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_build_n_store_proper_sons tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_builder_tag_list_off_top_tag tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_data_tag_list_off_top_tag tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_documentation_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_fullname_argument_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_iter2_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_iter_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_longname_argument_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_make_arguments_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_map2_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_map_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_name_argument_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_retrieve_for_formula tag_sec_l -> tag_sec_l
  | Camlparagraph_for_formula_let_argument_formula_t.Let_string_off_argument_for_formula tag_sec_l -> tag_sec_l
;;

let section_tag_list_off_camlparagraph_for_formula_let_argument_tag tag_cla =
  let for_cla = retrieve tag_cla in
  section_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla
;; 

let camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_formula_let_argument_formula 
      for_cla 
  in
  let for_sec_l = List.map
      Section_formula_v.retrieve 
      tag_sec_l 
  in
  let tag_cal_ll = List.map
      Section_formula_v.camlline_tag_list_off_section_formula 
      for_sec_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_camlparagraph_for_formula_let_argument_tag tag_cla =
  let for_cla = retrieve tag_cla in
  camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cal for_cla = 
  let tag_cal_l = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_cla = 
  let tag_cal_l = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_cla_1 for_cla_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla_1 in
  let tag_cal_l_2 = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_cla_1 for_cla_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla_1 in
  let tag_cal_l_2 = camlline_tag_list_off_camlparagraph_for_formula_let_argument_formula for_cla_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;


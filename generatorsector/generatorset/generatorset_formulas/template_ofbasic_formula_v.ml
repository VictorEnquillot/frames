(* item_for_any_only_top : heading *)
(* camlparagraph_for_any_comment : camlfile_title *)
(* section_for_any_header_top : camlfile_title *)

(** {3 Top_formula_v} *)

(* item_for_formula_only_top : documenting_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Documenting_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_documentation_for_formula *)

(* section_for_any_header_constant : let_documentation *)
(* group_for_any_header_constant : let_documentation *)
let documentation () = 

(* section_for_formula_body_top_builder_data : documentation_list_for_formula *)
(* group_for_formula_body_top_builder_data : documentation_list_for_formula *)
  [
   "Needs : IGNR:Top_interface_v";
   "Current : FGNR:Top_formula_v";
   "Needed-by : FGNR:Top_formula_v";
   "Builders : "
   "Data : "
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(* camlparagraph_for_any_function : let_nam_cod_equal *)
(* section_for_any_header_constant : let_nam_cod_equal *)
let nam_cod = Management_v.current_module_name (documentation ());;

(* item_for_formula_by_group_topsons : symbolizing_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Symbolizing_for_formula} *)

(* camlparagraph_for_formula_let_match : let_symbol_of_formula_equal_function *)
(* section_for_formula_header_constant : let_symbol_of_formula_equal_function *)
(* group_for_formula_header_constant : let_symbol_of_formula_equal_function *)
let symbol_of_formula = function        

(* section_for_formula_body_son_top : symbol_of_formula_topson_pattern_notleaf *)
(* group_for_formula_body_son_top : symbol_of_formula_topson_pattern_notleaf *)
  | Top_formula_t.Son_formula for_cc1 ->
      Top_symbol_t.Son_symbol
        (Son_formula_v.symbol_of_formula for_cc1)
  | ... repeat

(* section_for_formula_body_son_top : symbol_of_formula_topson_pattern_ofstring *)
(* group_for_formula_body_son_top : symbol_of_formula_topson_pattern_ofstring *)
  | Top_formula_t.Son (s, _) -> 
      Top_symbol_t.Son s
  | ... repeat

(* section_for_formula_body_son_top : symbol_of_formula_topson_pattern_bare *)
(* group_for_formula_body_son_top : symbol_of_formula_topson_pattern_bare *)
  | Top_formula_t.Son _ -> 
      Top_symbol_t.Son
  | ... repeat
;;

(* item_for_formula_only_top : constructor_naming_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Constructor_naming_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_constructor_name_argument_for_formula *)
(* section_for_formula_header_top : let_constructor_name_argument_equal *)
(* group_for_any_header_top : let_constructor_name_argument_equal *)
let constructor_name for_top = 

(* section_for_formula_body_top : symbol_of_formula_in_constructor_name_top *)
(* group_for_formula_body_top : symbol_of_formula_in_constructor_name_top *)
  let sym_top = symbol_of_formula for_top in
  Top_symbol_v.constructor_name sym_top
;;

(* item_for_formula_only_top : string_offing_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 String_offing_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_string_argument_for_formula *)
(* section_for_any_header_top : let_string_off_argument_equal *)
let string_off for_top =

(* section_for_formula_body_top : symbol_of_formula_in_string_off_top *)
(* group_for_formula_body_top : symbol_of_formula_in_string_off_top *)
  let sym_top = symbol_of_formula for_top in
  Top_symbol_v.string_off sym_top
;;

(* item_for_formula_only_top : naming_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Naming_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_name_argument_for_formula *)
(* section_for_formula_header_top : let_name_argument_equal *)
(* group_for_any_header_top : let_name_argument_equal *)

let name for_top = 
(* section_for_any_body_top : sprintf_for_any_name *)
(* group_for_any_body_top : sprintf_for_any_name *)
  Format.sprintf "%s \"%s\"" (constructor_name for_top) (string_off for_top)
;;


(* item_for_formula_only_top : longnaming_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Longnaming_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_longname_argument_for_formula *)
(* section_for_any_header_top : let_longname_argument_equal *)
(* group_for_any_header_top : let_longname_argument_equal *)
let longname for_top =

(* section_for_any_body_top : sprintf_for_any_longname *)
(* group_for_any_body_top : sprintf_for_any_longname *)
  Format.sprintf "Top_formula_t.%s" (String.capitalize (name for_top))

(* item_for_formula_only_top : fullnaming_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Fullnaming_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_fullname_argument_for_formula *)
(* section_for_any_header_top : let_fullname_argument_equal *)
(* group_for_any_header_top : let_fullname_argument_equal *)
let fullname for_top =

(* section_for_any_body_top : sprintf_for_any_fullname *)
(* group_for_any_body_top : sprintf_for_any_fullname *)
  Format.sprintf "%s \"%s\"" (longname for_top) (string_off for_top)
;;

(* item_for_formula_only_top : building_and_storing_basic_sons *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Building_and_storing_basic_sons} *)

(* camlparagraph_for_formula_let_argument : let_build_n_store_basic_sons *)

(* section_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* group_for_formula_header_top_main : let_build_n_store_basic_sons  *)
let build_n_store sym_top soi_mai =

(* section_for_formula_body_top_main_builder : nondata_sole_index_builder_list *)
(* group_for_formula_body_top_main : top_sextup_off_top_tag *)
  let tag_top = Tag_v.make sym_top soi_mai in
  let sex_top = Top_tag_v.top_sextup_off_top_tag tag_top in

(* group_for_formula_body_top_main_builder : nondata_sole_index_builder_list *)
  let sym_bui_l = Top_interface_v.make sex_top in
  let soi_bui_l =   
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_bui_l) soi_mai in

(* section_for_formula_body_builder : builder_tag_list *)
(* group_for_formula_body_builder : generatorset_symbol_of_builder_symbol *)
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_builder_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_bui_l soi_bui_l;
  
(* group_for_formula_body_builder : builder_tag_list *)
  List.map2 Tag_v.make sym_bui_l soi_bui_l
;;

(* item_for_formula_by_group_topsons : making_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Making_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_make_arguments_for_formula *)

(* section_for_formula_header_top_main : let_make_arguments_equal_match_with  *)
(* group_for_formula_header_top_main : let_make_arguments_equal_match_with  *)
let make sym_top soi_mai =
  match sym_top with 

(* section_for_formula_body_son_top_main : make_topson_pattern_notleaf_for_formula *)
(* group_for_formula_body_son_top_main : make_topson_pattern_notleaf_for_formula *)
  | Top_symbol_t.Son_symbol sym_son ->
      Top_formula_t.Son_formula 
        (Son_formula_v.make sym_son soi_mai)
  | ... repeat

(* section_for_formula_body_son_top_main_builder : make_topson_pattern_ofstring_for_formula *)
(* group_for_formula_body_son_top_main_builder : make_topson_pattern_ofstring_for_formula *)
  | Top_symbol_t.Son s -> 
      let tag_bui_l = build_n_store sym_top soi_mai in
      Top_formula_t.Son (s, tag_bui_l)
  | ... repeat

(* section_for_formula_body_son_top_main_builder : make_topson_pattern_bare_for_formula *)
(* group_for_formula_body_son_top_main_builder : make_topson_pattern_bare_for_formula *)
  | Top_symbol_t.Son -> 
      let tag_bui_l = build_n_store sym_top soi_mai in
      Top_formula_t.Son tag_bui_l
  | ... repeat

;;

(* item_for_formula_only_top : retrieving_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Retrieving_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_retrieve_for_formula *)
(* section_for_any_header_top : let_retrieve_tag_top_equal  *)
(* group_for_any_header_top : let_retrieve_tag_top_equal  *)
let retrieve tag_top =

(* section_for_any_body_top_main : make_tag_top *)
(* group_for_any_body_top_main : make_tag_top *)
  let soi_mai = Tag_v.sole_index_off_tag tag_top in
  let sym_top = Tag_v.entity_off_tag tag_top in
  make sym_top soi_mai 
;; 

(* item_for_formula_by_group_topsons : builder_tag_listing_off_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Builder_tag_listing_off_formula} *)

(* camlparagraph_for_formula_let_match : let_builder_tag_list_off_top_formula *)
(* section_for_formula_header_top_builder : let_builder_tag_list_off_top_formula  *)
(* group_for_formula_header_top_builder : let_builder_tag_list_off_top_formula  *)
let builder_tag_list_off_top_formula = function

(* section_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_notleaf_for_formula *)
(* group_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_notleaf_for_formula *)
  | Top_formula_t.Son_formula for_son ->                  (* pipe_et_any_tdot_es_any_ac_at_arrow *)
      Son_formula_v.builder_tag_list_off_son_formula for_son
  | ... repeat
	
(* section_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_ofstring_for_formula *)
(* group_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_ofstring_for_formula *)
  | Top_formula_t.Son (s, tag_bui_l) -> tag_bui_l
  | ... repeat

(* section_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_bare_for_formula *)
(* group_for_formula_body_son_top_builder : builder_tag_list_topson_pattern_bare_for_formula *)
  | Top_formula_t.Son tag_bui_l -> tag_bui_l
  | ... repeat

;;

(* item_for_formula_only_top : builder_tag_listing_off_tag *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Builder_tag_listing_off_tag} *)

(* camlparagraph_for_formula_let_argument : let_builder_tag_list_off_top_tag *)

(* section_for_formula_header_top_builder : let_builder_tag_list_off_top_tag *)
(* group_for_formula_header_top_builder : let_builder_tag_list_off_top_tag *)
let builder_tag_list_off_top_tag tag_top =

(* section_for_formula_body_top_builder : builder_tag_list_of_tag_for_formula *)
(* group_for_formula_body_top_builder : builder_tag_list_of_tag_for_formula *)
  let for_top = retrieve tag_top in
  builder_tag_list_off_top_formula for_top
;; 

(* item_for_formula_only_top : data_tag_listing_off_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Data_tag_listing_off_formula} *)

(* camlparagraph_for_formula_let_argument : let_data_tag_list_off_top_formula *)
(* section_for_formula_header_top_data : let_data_tag_list_off_top_formula *)
(* group_for_formula_header_top_data : let_data_tag_list_off_top_formula *)
let data_tag_list_off_top_formula for_top =

(* section_for_formula_body_top_builder : builder_formula_list *)
(* group_for_formula_body_top_builder : builder_tag_list *)
  let tag_bui_l = builder_tag_list_off_top_formula for_top in

(* group_for_formula_body_top_builder : builder_formula_list *)
  let for_bui_l = List.map Builder_formula_v.retrieve tag_bui_l in

(* section_for_formula_body_builder_data : data_formula_list *)
(* group_for_formula_body_builder_data : data_formula_list *)
  let tag_dat_ll = List.map
    Builder_formula_v.data_tag_list_off_builder_formula for_bui_l in 
  List.flatten tag_dat_ll
;;

(* item_for_formula_only_top : data_tag_listing_off_tag *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Data_tag_listing_off_tag} *)

(* camlparagraph_for_formula_let_argument : let_data_tag_list_off_top_tag *)

(* section_for_formula_header_top_data : let_data_tag_list_off_top_tag *)
(* group_for_formula_header_top_data : let_data_tag_list_off_top_tag *)
let data_tag_list_off_top_tag tag_top =

(* section_for_formula_body_top_data : data_tag_list_of_tag_for_formula *)
(* group_for_formula_body_top_data : data_tag_list_of_tag_for_formula *)
  let for_top = retrieve tag_top in
  data_tag_list_off_top_formula for_top
;; 

(* item_for_formula_only_top : iterating_one_function_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Iterating_one_function_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_iter_for_formula *)
(* section_for_formula_header_top_builder : let_iter_for_formula *)
(* group_for_formula_header_top_builder : let_iter_for_formula *)
let iter f_of_tag_bui for_top =

(* section_for_formula_body_top_builder : iter_on_builder_tag_list *)
(* group_for_formula_body_top_builder : iter_on_builder_tag_list *)
  let tag_bui_l = builder_tag_list_off_top_formula for_top in
  List.iter f_of_tag_bui tag_bui_l
;;

(* camlparagraph_for_formula_let_argument : let_map_for_formula *)
(* section_for_formula_header_top_builder : let_map_for_formula *)
(* group_for_formula_header_top_builder : let_map_for_formula *)
let map f_of_tag_bui for_top =

(* section_for_formula_body_top_builder : map_on_builder_tag_list *)
(* group_for_formula_body_top_builder : map_on_builder_tag_list *)
  let tag_bui_l = builder_tag_list_off_top_formula for_top in
  List.map f_of_tag_bui tag_bui_l
;;

(* item_for_formula_only_top : iterating_two_functions_for_formula *)
(* camlparagraph_for_any_comment : item_title *)
(* section_for_any_header_top : item_title *)

(** {6 Iterating_two_functions_for_formula} *)

(* camlparagraph_for_formula_let_argument : let_iter2_for_formula *)
(* section_for_formula_header_top_builder : let_iter2_for_formula *)
(* group_for_formula_header_top_builder : let_iter2_for_formula *)
let iter2 f_of_tag_bui for_top_1 for_top_2 = 

(* section_for_formula_body_top_builder : iter2_on_builder_tag_list *)
(* group_for_formula_body_top_builder : iter2_on_builder_tag_list *)
  let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in
  let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in
  List.iter2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2 
;;

(* camlparagraph_for_formula_let_argument : let_map2_for_formula *)
(* section_for_formula_header_top_builder : let_map2_for_formula *)
(* group_for_formula_header_top_builder : let_map2_for_formula *)
let map2 f_of_tag_bui for_top_1 for_top_2  = 

(* section_for_formula_body_top_builder : map2_on_builder_tag_list *)
(* group_for_formula_body_top_builder : map2_on_builder_tag_list *)
  let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in
  let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in
  List.map2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2
;;

(* item_for_any_only_top : ending *)
(* camlparagraph_for_any_comment : ending *)
(* section_for_any_footer : ending *)

(** {6 Ending} *)

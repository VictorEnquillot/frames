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

(** {6 Building_and_storing_proper_sons} *)

(* camlparagraph_for_formula_let_argument : let_build_n_store_proper_sons *)

(* Section_for_formula_header_top_main : let_build_n_store_proper_sons  *)
(* Group_for_formula_header_top_main : let_build_n_store_proper_sons  *)
let build_n_store sym_top soi_mai =

(* Section_for_formula_body_top_main_builder : builder_node_sole_index_builder_list  *)
(* Group_for_formula_body_top_main : main_tag_off_top_symbol *)
  let sym_mai = Main_symbol_v.main_symbol_of_top_symbol sym_top in
  let tag_mai = Tag_v.make sym_mai soi_mai in        (* let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in *)

(* Group_for_formula_body_main_builder : builder_node_symbol_builder_list *)
  let sym_bui_l = Builder_symbol_list_by_main_tag_provider_v.provide tag_mai in

(* Group_for_formula_body_main_builder : sole_index_builder_list  *)
  let soi_bui_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_bui_l) soi_mai in

(* Section_for_formula_body_localset_builder : builder_tag_list  *)

(* Group_for_formula_body_localset_builder : localset_symbol_builder_list *)
  let dss_of_sym = Domain_symbol_v.localset_symbol_of_builder_symbol in
  let dss_bui_l = List.map dss_of_sym sym_bui_l in

(* Group_for_formula_body_localset_builder : store_builder_tag_list *)
  List.iter2 Domain_symbol_by_sole_index_provider_v.store soi_bui_l gss_bui_l;
  
(* Group_for_formula_body_builder_alone : make_builder_tag_list *)
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
      let tag_bui_l = build_n_store_leaf sym_top soi_mai in
      Top_formula_t.Son (s, tag_bui_l)
  | ... repeat

(* section_for_formula_body_son_top_main_builder : make_topson_pattern_bare_for_formula *)
(* group_for_formula_body_son_top_main_builder : make_topson_pattern_bare_for_formula *)
  | Top_symbol_t.Son -> 
      let tag_bui_l = build_n_store_leaf sym_top soi_mai in
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

(** {6 Builder_topson_tag_listing_off_formula} *)

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

(** {6 Builder_topson_tag_listing_off_tag} *)

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

(** {6 Builder_leaf_tag_listing_off_formula} *)

(* camlparagraph_for_formula_let_argument : let_data_tag_list_off_top_formula *)
(* section_for_formula_header_top_data : let_data_tag_list_off_top_formula *)
(* group_for_formula_header_top_data : let_data_tag_list_off_top_formula *)
let data_tag_list_off_top_formula = function

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

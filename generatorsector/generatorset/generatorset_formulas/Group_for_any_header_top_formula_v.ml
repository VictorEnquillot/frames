(** {3 Group_for_any_header_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_any_header_top_interface_v";
   "Current : FGNR:Group_for_any_header_top_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ght =
  match for_ght with
  | Group_for_any_header_top_formula_t.Camlfile_title _ ->
     Group_for_any_header_top_symbol_t.Camlfile_title
  | Group_for_any_header_top_formula_t.Item_title _ ->
     Group_for_any_header_top_symbol_t.Item_title
  | Group_for_any_header_top_formula_t.Let_fullname_argument_equal _ ->
     Group_for_any_header_top_symbol_t.Let_fullname_argument_equal
  | Group_for_any_header_top_formula_t.Let_longname_argument_equal _ ->
     Group_for_any_header_top_symbol_t.Let_longname_argument_equal
  | Group_for_any_header_top_formula_t.Let_name_argument_equal _ ->
     Group_for_any_header_top_symbol_t.Let_name_argument_equal
  | Group_for_any_header_top_formula_t.Let_retrieve_tag_top_equal _ ->
     Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal
  | Group_for_any_header_top_formula_t.Let_string_off_argument_equal _ ->
     Group_for_any_header_top_symbol_t.Let_string_off_argument_equal
;;

(** {6 Naming_for_formula} *)

let name for_ght = 
  let sym_ght = symbol_of_formula for_ght in
  Group_for_any_header_top_symbol_v.name sym_ght
;;
(* ***

let string_off for_ght =
  let sym_ght = symbol_of_formula for_ght in
  Group_for_any_header_top_symbol_v.string_off sym_ght
;;

let longname for_ght =
  Format.sprintf "Group_for_any_header_top_formula_t.%s" 
    (String.capitalize (name for_ght))

let fullname for_ght =
  Format.sprintf "%s \"%s\"" (longname for_ght) (string_off for_ght)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ght soi_gro =
  let sym_cal_l = Group_for_any_header_top_interface_v.make sym_ght in
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

let make sym_ght soi_gro =
  let tag_cal_l = build_n_store sym_ght soi_gro in

  match sym_ght with 
  | Group_for_any_header_top_symbol_t.Camlfile_title ->
     Group_for_any_header_top_formula_t.Camlfile_title tag_cal_l
  | Group_for_any_header_top_symbol_t.Item_title ->
     Group_for_any_header_top_formula_t.Item_title tag_cal_l
  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal ->
     Group_for_any_header_top_formula_t.Let_fullname_argument_equal tag_cal_l
  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal ->
     Group_for_any_header_top_formula_t.Let_longname_argument_equal tag_cal_l
  | Group_for_any_header_top_symbol_t.Let_name_argument_equal ->
     Group_for_any_header_top_formula_t.Let_name_argument_equal tag_cal_l
  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal ->
     Group_for_any_header_top_formula_t.Let_retrieve_tag_top_equal tag_cal_l
  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal ->
     Group_for_any_header_top_formula_t.Let_string_off_argument_equal tag_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_ght =
  let soi_gro = Tag_v.sole_index_off_tag tag_ght in
  let sym_ght = Tag_v.entity_off_tag tag_ght in
  make sym_ght soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_any_header_top_formula for_ght =
  match for_ght with
  | Group_for_any_header_top_formula_t.Camlfile_title tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Item_title tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Let_fullname_argument_equal tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Let_longname_argument_equal tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Let_name_argument_equal tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Let_retrieve_tag_top_equal tag_cal_l -> tag_cal_l
  | Group_for_any_header_top_formula_t.Let_string_off_argument_equal tag_cal_l -> tag_cal_l
;;

let camlline_tag_list_off_group_for_any_header_top_tag tag_ght =
  let for_ght = retrieve tag_ght in
  camlline_tag_list_off_group_for_any_header_top_formula for_ght
;; 

(** {6 Iterating_for_formula_for_any_header_top.} *)

let map f_of_tag_cal for_ght = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_header_top_formula for_ght in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_ght = 
  let tag_cal_l = camlline_tag_list_off_group_for_any_header_top_formula for_ght in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_ght_1 for_ght_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_header_top_formula for_ght_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_header_top_formula for_ght_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_ght_1 for_ght_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_any_header_top_formula for_ght_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_any_header_top_formula for_ght_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;


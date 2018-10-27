(** {3 Group_for_formula_header_top_builder_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_formula_header_top_builder_interface_v";
   "Current : FGNR:Group_for_formula_header_top_builder_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gtb =
  match for_gtb with
  | Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_formula _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula
  | Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_tag _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_tag
  | Group_for_formula_header_top_builder_formula_t.Let_iter2_for_formula _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_iter2_for_formula
  | Group_for_formula_header_top_builder_formula_t.Let_iter_for_formula _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_iter_for_formula
  | Group_for_formula_header_top_builder_formula_t.Let_map2_for_formula _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_map2_for_formula
  | Group_for_formula_header_top_builder_formula_t.Let_map_for_formula _ ->
     Group_for_formula_header_top_builder_symbol_t.Let_map_for_formula
;;

(** {6 Naming_for_formula} *)

let name for_gtb = 
  let sym_gtb = symbol_of_formula for_gtb in
  Group_for_formula_header_top_builder_symbol_v.name sym_gtb
;;
(* ***

let string_off for_gtb =
  let sym_gtb = symbol_of_formula for_gtb in
  Group_for_formula_header_top_builder_symbol_v.string_off sym_gtb
;;

let longname for_gtb =
  Format.sprintf "Group_for_formula_header_top_builder_formula_t.%s" 
    (String.capitalize (name for_gtb))

let fullname for_gtb =
  Format.sprintf "%s \"%s\"" (longname for_gtb) (string_off for_gtb)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_gtb soi_gro =
  let sym_cal_l = Group_for_formula_header_top_builder_interface_v.make sym_gtb in
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

let make sym_gtb soi_gro =
  let tag_cal_l = build_n_store sym_gtb soi_gro in

  match sym_gtb with 
  | Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula ->
     Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_formula tag_cal_l
  | Group_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_tag ->
     Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_tag tag_cal_l
  | Group_for_formula_header_top_builder_symbol_t.Let_iter2_for_formula ->
     Group_for_formula_header_top_builder_formula_t.Let_iter2_for_formula tag_cal_l
  | Group_for_formula_header_top_builder_symbol_t.Let_iter_for_formula ->
     Group_for_formula_header_top_builder_formula_t.Let_iter_for_formula tag_cal_l
  | Group_for_formula_header_top_builder_symbol_t.Let_map2_for_formula ->
     Group_for_formula_header_top_builder_formula_t.Let_map2_for_formula tag_cal_l
  | Group_for_formula_header_top_builder_symbol_t.Let_map_for_formula ->
     Group_for_formula_header_top_builder_formula_t.Let_map_for_formula tag_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gtb =
  let soi_gro = Tag_v.sole_index_off_tag tag_gtb in
  let sym_gtb = Tag_v.entity_off_tag tag_gtb in
  make sym_gtb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb =
  match for_gtb with
  | Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_formula tag_cal_l -> tag_cal_l
  | Group_for_formula_header_top_builder_formula_t.Let_builder_tag_list_off_top_tag tag_cal_l -> tag_cal_l
  | Group_for_formula_header_top_builder_formula_t.Let_iter2_for_formula tag_cal_l -> tag_cal_l
  | Group_for_formula_header_top_builder_formula_t.Let_iter_for_formula tag_cal_l -> tag_cal_l
  | Group_for_formula_header_top_builder_formula_t.Let_map2_for_formula tag_cal_l -> tag_cal_l
  | Group_for_formula_header_top_builder_formula_t.Let_map_for_formula tag_cal_l -> tag_cal_l

;;

let camlline_tag_list_off_group_for_formula_header_top_builder_tag tag_gtb =
  let for_gtb = retrieve tag_gtb in
  camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb
;; 

(** {6 Iterating_for_formula_for_formula_header_top_builder.} *)

let map f_of_tag_cal for_gtb = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gtb = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gtb_1 for_gtb_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gtb_1 for_gtb_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_header_top_builder_formula for_gtb_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;


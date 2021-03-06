(** {3 Group_for_formula_body_top_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_formula_body_top_data_interface_v";
   "Current : FGNR:Group_for_formula_body_top_data_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gbt =
  match for_gbt with
  | Group_for_formula_body_top_data_formula_t.Data_tag_list_of_tag_for_formula _ ->
     Group_for_formula_body_top_data_symbol_t.Data_tag_list_of_tag_for_formula
;;

(** {6 Naming_for_formula} *)

let name for_gbt = 
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_data_symbol_v.name sym_gbt
;;
(* ***

let string_off for_gbt =
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_data_symbol_v.string_off sym_gbt
;;

let longname for_gbt =
  Format.sprintf "Group_for_formula_body_top_data_formula_t.%s" 
    (String.capitalize (name for_gbt))

let fullname for_gbt =
  Format.sprintf "%s \"%s\"" (longname for_gbt) (string_off for_gbt)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_gbt soi_gro =
  let sym_cal_l = Group_for_formula_body_top_data_interface_v.make sym_gbt in
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

let make sym_gbt soi_gro =
  let tag_cal_l = build_n_store sym_gbt soi_gro in

  match sym_gbt with 
  | Group_for_formula_body_top_data_symbol_t.Data_tag_list_of_tag_for_formula ->
     Group_for_formula_body_top_data_formula_t.Data_tag_list_of_tag_for_formula tag_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gbt =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  make sym_gbt soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt =
  match for_gbt with
  | Group_for_formula_body_top_data_formula_t.Data_tag_list_of_tag_for_formula tag_cal_l -> tag_cal_l
;;

let camlline_tag_list_off_group_for_formula_body_top_data_tag tag_gbt =
  let for_gbt = retrieve tag_gbt in
  camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt
;; 

(** {6 Iterating_for_formula_for_formula_body_top_data.} *)

let map f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gbt_1 for_gbt_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gbt_1 for_gbt_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_top_data_formula for_gbt_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;


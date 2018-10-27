(** {3 Group_for_formula_body_top_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_top_builder_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_top_builder_tag tag_gtb =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_top_builder_tag 
      tag_gtb 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gtb soi_gro =
  let tag_gtb = Tag_v.make sym_gtb soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_top_builder_tag tag_gtb in
  match sym_gtb with
  | Group_for_formula_body_top_builder_symbol_t.Builder_formula_list ->
     Group_for_formula_body_top_builder_value_t.Builder_formula_list val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Builder_tag_list ->
     Group_for_formula_body_top_builder_value_t.Builder_tag_list val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Builder_tag_list_of_tag_for_formula ->
     Group_for_formula_body_top_builder_value_t.Builder_tag_list_of_tag_for_formula val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Iter2_on_builder_tag_list ->
     Group_for_formula_body_top_builder_value_t.Iter2_on_builder_tag_list val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Iter_on_builder_tag_list ->
     Group_for_formula_body_top_builder_value_t.Iter_on_builder_tag_list val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Map2_on_builder_tag_list ->
     Group_for_formula_body_top_builder_value_t.Map2_on_builder_tag_list val_cal_l
  | Group_for_formula_body_top_builder_symbol_t.Map_on_builder_tag_list ->
     Group_for_formula_body_top_builder_value_t.Map_on_builder_tag_list val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gtb =
  let sym_gtb = Tag_v.entity_off_tag tag_gtb in
  let soi_cal = Tag_v.sole_index_off_tag tag_gtb in
  make sym_gtb soi_cal

;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_top_builder_tag tag_gtb =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_top_builder_tag tag_gtb in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_top_builder_value val_gtb =
  match val_gtb with
  | Group_for_formula_body_top_builder_value_t.Builder_formula_list val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Builder_tag_list val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Builder_tag_list_of_tag_for_formula val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Iter2_on_builder_tag_list val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Iter_on_builder_tag_list val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Map2_on_builder_tag_list val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_builder_value_t.Map_on_builder_tag_list val_cal_l -> val_cal_l 
;;

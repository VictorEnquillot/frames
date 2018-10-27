(** {3 Group_for_any_header_constant_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_header_constant_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_header_constant type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_any_header_constant_tag tag_ghc =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_any_header_constant_tag 
      tag_ghc 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_ghc soi_gro =
  let tag_ghc = Tag_v.make sym_ghc soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_any_header_constant_tag tag_ghc in
  match sym_ghc with
  | Group_for_any_header_constant_symbol_t.Let_documentation ->
      Group_for_any_header_constant_value_t.Let_documentation val_cal_l

  | Group_for_any_header_constant_symbol_t.Let_nam_cod_equal ->
      Group_for_any_header_constant_value_t.Let_nam_cod_equal val_cal_l

  | Group_for_any_header_constant_symbol_t.Type_et_any_equal ->
      Group_for_any_header_constant_value_t.Type_et_any_equal val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_ghc =
  let sym_ghc = Tag_v.entity_off_tag tag_ghc in
  let soi_cal = Tag_v.sole_index_off_tag tag_ghc in
  make sym_ghc soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_header_constant_tag tag_ghc =
  let val_cal_l = camlline_value_list_off_group_for_any_header_constant_tag tag_ghc in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_any_header_constant_value val_ghc =
  match val_ghc with
  | Group_for_any_header_constant_value_t.Let_documentation val_cal_l -> 
      val_cal_l
	
  | Group_for_any_header_constant_value_t.Let_nam_cod_equal val_cal_l -> 
      val_cal_l
	
  | Group_for_any_header_constant_value_t.Type_et_any_equal val_cal_l -> 
      val_cal_l

;;

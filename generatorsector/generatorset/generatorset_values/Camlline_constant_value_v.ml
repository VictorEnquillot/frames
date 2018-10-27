(** {3 Camlline_constant_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_constant_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Constant type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let make sym_cac soi_cal =
  match sym_cac with
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_ccf ->
      Camlline_constant_value_t.Camlline_constant_function_value  
	(Camlline_constant_function_value_v.make sym_ccf soi_cal)

  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_ccp -> 
      Camlline_constant_value_t.Camlline_constant_pervasive_value 
	(Camlline_constant_pervasive_value_v.make sym_ccp soi_cal)
;;

let retrieve tag_cac =
  let soi_cal = Tag_v.sole_index_off_tag tag_cac in
  let sym_cac = Tag_v.entity_off_tag tag_cac in
  make sym_cac soi_cal
;;

let string_off val_cac =
  match val_cac with
  | Camlline_constant_value_t.Camlline_constant_function_value val_ccf ->
      Camlline_constant_function_value_v.string_off val_ccf

  | Camlline_constant_value_t.Camlline_constant_pervasive_value val_ccp -> 
      Camlline_constant_pervasive_value_v.string_off val_ccp
;;

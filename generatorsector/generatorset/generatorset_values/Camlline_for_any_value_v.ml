(** {3 Camlline_for_any_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_cfa soi_cal =
  match sym_cfa with
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_clc ->
      (Camlline_for_any_uno_value_v.string_of sym_clc soi_cal)
	
  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_cld -> 
      (Camlline_for_any_duo_value_v.string_of sym_cld soi_cal)
	
  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_cld -> 
      (Camlline_for_any_trio_value_v.string_of sym_cld soi_cal)
	
;;

(** {6 Making_for_value} *)

let make sym_cfa soi_cal =
  match sym_cfa with
  | Camlline_for_any_symbol_t.Camlline_for_any_uno_symbol sym_clc ->
      Camlline_for_any_value_t.Camlline_for_any_uno_value  
	(Camlline_for_any_uno_value_v.make sym_clc soi_cal)

  | Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol sym_cld -> 
      Camlline_for_any_value_t.Camlline_for_any_duo_value
	(Camlline_for_any_duo_value_v.make sym_cld soi_cal)

  | Camlline_for_any_symbol_t.Camlline_for_any_trio_symbol sym_cld -> 
      Camlline_for_any_value_t.Camlline_for_any_trio_value
	(Camlline_for_any_trio_value_v.make sym_cld soi_cal)

;;

(** {6 Retrieving} *)

let retrieve tag_cfa =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfa in
  let sym_cfa = Tag_v.entity_off_tag tag_cfa in
  make sym_cfa soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfa =
  match val_cfa with
  | Camlline_for_any_value_t.Camlline_for_any_uno_value val_cau ->
      Camlline_for_any_uno_value_v.string_off val_cau

  | Camlline_for_any_value_t.Camlline_for_any_duo_value val_cad -> 
	Camlline_for_any_duo_value_v.string_off val_cad

  | Camlline_for_any_value_t.Camlline_for_any_trio_value val_cad -> 
	Camlline_for_any_trio_value_v.string_off val_cad

;;

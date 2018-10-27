(** {3 Camlline_for_tag_datastructure_camltype_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_datastructure_camltype_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_cdc soi_cal =
  match sym_cdc with
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_clc ->
	(Camlline_for_tag_datastructure_camltype_uno_value_v.string_of sym_clc soi_cal)

  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_cld -> 
	(Camlline_for_tag_datastructure_camltype_duo_value_v.string_of sym_cld soi_cal)








;;

(** {6 Making_for_value} *)

let make sym_cdc soi_cal =
  match sym_cdc with
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_clc ->
      Camlline_for_tag_datastructure_camltype_value_t.Camlline_for_tag_datastructure_camltype_uno_value  
	(Camlline_for_tag_datastructure_camltype_uno_value_v.make sym_clc soi_cal)

  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_cld -> 
      Camlline_for_tag_datastructure_camltype_value_t.Camlline_for_tag_datastructure_camltype_duo_value
	(Camlline_for_tag_datastructure_camltype_duo_value_v.make sym_cld soi_cal)








;;

(** {6 Retrieving} *)

let retrieve tag_cdc =
  let soi_cal = Tag_v.sole_index_off_tag tag_cdc in
  let sym_cdc = Tag_v.entity_off_tag tag_cdc in
  make sym_cdc soi_cal
;;

(** {6 String_offing} *)

let string_off val_cdc =
  match val_cdc with
  | Camlline_for_tag_datastructure_camltype_value_t.Camlline_for_tag_datastructure_camltype_uno_value val_cac ->
      Camlline_for_tag_datastructure_camltype_uno_value_v.string_off val_cac

  | Camlline_for_tag_datastructure_camltype_value_t.Camlline_for_tag_datastructure_camltype_duo_value val_cad -> 
	Camlline_for_tag_datastructure_camltype_duo_value_v.string_off val_cad


	




;;

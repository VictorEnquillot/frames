(** {3 Camlline_for_tag_uno_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_uno_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_ctu soi_cal =
  match sym_ctu with
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_clc ->
	(Camlline_for_tag_uno_camltype_value_v.string_of sym_clc soi_cal)

  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_cld -> 
	(Camlline_for_tag_uno_top_value_v.string_of sym_cld soi_cal)
;;

(** {6 Making_for_value} *)

let make sym_ctu soi_cal =
  match sym_ctu with
  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_camltype_symbol sym_clc ->
      Camlline_for_tag_uno_value_t.Camlline_for_tag_uno_camltype_value  
	(Camlline_for_tag_uno_camltype_value_v.make sym_clc soi_cal)

  | Camlline_for_tag_uno_symbol_t.Camlline_for_tag_uno_top_symbol sym_cld -> 
      Camlline_for_tag_uno_value_t.Camlline_for_tag_uno_top_value
	(Camlline_for_tag_uno_top_value_v.make sym_cld soi_cal)








;;

(** {6 Retrieving} *)

let retrieve tag_ctu =
  let soi_cal = Tag_v.sole_index_off_tag tag_ctu in
  let sym_ctu = Tag_v.entity_off_tag tag_ctu in
  make sym_ctu soi_cal
;;

(** {6 String_offing} *)

let string_off val_ctu =
  match val_ctu with
  | Camlline_for_tag_uno_value_t.Camlline_for_tag_uno_camltype_value val_cac ->
      Camlline_for_tag_uno_camltype_value_v.string_off val_cac

  | Camlline_for_tag_uno_value_t.Camlline_for_tag_uno_top_value val_cad -> 
	Camlline_for_tag_uno_top_value_v.string_off val_cad


	




;;

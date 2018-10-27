(** {3 Camlline_for_tag_duo_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_duo_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_ctt soi_cal =
  match sym_ctt with
  | Camlline_for_tag_duo_symbol_t.Camlline_for_tag_duo_current_top_symbol sym_cct ->
      Camlline_for_tag_duo_current_top_value_v.string_of sym_cct soi_cal
;;
	

(** {6 Making_of_value} *)

let make sym_ctt soi_cal =
  match sym_ctt with
  | Camlline_for_tag_duo_symbol_t.Camlline_for_tag_duo_current_top_symbol sym_cct ->
      Camlline_for_tag_duo_value_t.Camlline_for_tag_duo_current_top_value
	(Camlline_for_tag_duo_current_top_value_v.make sym_cct soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_ctt =
  let sym_ctt = Tag_v.entity_off_tag tag_ctt in
  let soi_cal = Tag_v.sole_index_off_tag tag_ctt in
  make sym_ctt soi_cal
;;

(** {6 String_offing} *)

let string_off val_ctt =
  match val_ctt with
  | Camlline_for_tag_duo_value_t.Camlline_for_tag_duo_current_top_value val_cct ->
      Camlline_for_tag_duo_current_top_value_v.string_off val_cct
;;


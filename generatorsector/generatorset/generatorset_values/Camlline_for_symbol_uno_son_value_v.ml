(** {3 Camlline_for_symbol_uno_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_uno_son_value_v";
   "Needed-by : VGNR:Camlline_uno_son_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_ccc soi_cal =
  match sym_ccc with
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_clc ->
	(Camlline_for_symbol_uno_son_bare_value_v.string_of sym_clc soi_cal)

  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_cld -> 
	(Camlline_for_symbol_uno_son_notleaf_value_v.string_of sym_cld soi_cal)

  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_clu -> 
	(Camlline_for_symbol_uno_son_ofstring_value_v.string_of sym_clu soi_cal)
;;

(** {6 Making_for_value} *)

let make sym_ccc soi_cal =
  match sym_ccc with
  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol sym_clc ->
      Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_bare_value  
	(Camlline_for_symbol_uno_son_bare_value_v.make sym_clc soi_cal)

  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_notleaf_symbol sym_cld -> 
      Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_notleaf_value
	(Camlline_for_symbol_uno_son_notleaf_value_v.make sym_cld soi_cal)

  | Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_ofstring_symbol sym_cld -> 
      Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_ofstring_value 
	(Camlline_for_symbol_uno_son_ofstring_value_v.make sym_cld soi_cal)
;;

(** {6 Retrieving} *)

let retrieve tag_ccc =
  let soi_cal = Tag_v.sole_index_off_tag tag_ccc in
  let sym_ccc = Tag_v.entity_off_tag tag_ccc in
  make sym_ccc soi_cal
;;

(** {6 String_offing} *)

let string_off val_ccc =
  match val_ccc with
  | Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_bare_value val_cac ->
      Camlline_for_symbol_uno_son_bare_value_v.string_off val_cac

  | Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_notleaf_value val_cad -> 
	Camlline_for_symbol_uno_son_notleaf_value_v.string_off val_cad

  | Camlline_for_symbol_uno_son_value_t.Camlline_for_symbol_uno_son_ofstring_value val_cad -> 
	Camlline_for_symbol_uno_son_ofstring_value_v.string_off val_cad
;;

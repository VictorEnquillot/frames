(** {3 Camlline_for_any_duo_value_v}  *)
(** {3 Camlline_for_any_duo_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_cad soi_cal =
  match sym_cad with
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_clc ->
	(Camlline_for_any_duo_current_son_value_v.string_of sym_clc soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_cld -> 
	(Camlline_for_any_duo_current_top_value_v.string_of sym_cld soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_clu -> 
	(Camlline_for_any_duo_datastructure_value_v.string_of sym_clu soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_clv -> 
	(Camlline_for_any_duo_son_top_bare_value_v.string_of sym_clv soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_clt -> 
	(Camlline_for_any_duo_son_top_ofstring_value_v.string_of sym_clt soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_clc ->
	(Camlline_for_any_duo_son_top_notleaf_value_v.string_of sym_clc soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_cld -> 
	(Camlline_for_any_duo_top_main_value_v.string_of sym_cld soi_cal)



;;

(** {6 Making_for_value} *)

let make sym_cad soi_cal =
  match sym_cad with
  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_son_symbol sym_clc ->
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_current_son_value  
	(Camlline_for_any_duo_current_son_value_v.make sym_clc soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_current_top_symbol sym_cld -> 
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_current_top_value
	(Camlline_for_any_duo_current_top_value_v.make sym_cld soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_datastructure_symbol sym_clv -> 
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_datastructure_value 
	(Camlline_for_any_duo_datastructure_value_v.make sym_clv soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_bare_symbol sym_clt -> 
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_bare_value 
	(Camlline_for_any_duo_son_top_bare_value_v.make sym_clt soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_ofstring_symbol sym_clu -> 
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_ofstring_value 
	(Camlline_for_any_duo_son_top_ofstring_value_v.make sym_clu soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol sym_clc ->
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_notleaf_value  
	(Camlline_for_any_duo_son_top_notleaf_value_v.make sym_clc soi_cal)

  | Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol sym_cld -> 
      Camlline_for_any_duo_value_t.Camlline_for_any_duo_top_main_value
	(Camlline_for_any_duo_top_main_value_v.make sym_cld soi_cal)



;;

(** {6 Retrieving} *)

let retrieve tag_cad =
  let soi_cal = Tag_v.sole_index_off_tag tag_cad in
  let sym_cad = Tag_v.entity_off_tag tag_cad in
  make sym_cad soi_cal
;;

(** {6 String_offing} *)

let string_off val_cad =
  match val_cad with
  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_current_son_value val_cac ->
      Camlline_for_any_duo_current_son_value_v.string_off val_cac

  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_current_top_value val_cad -> 
	Camlline_for_any_duo_current_top_value_v.string_off val_cad

  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_datastructure_value val_cav -> 
      Camlline_for_any_duo_datastructure_value_v.string_off val_cav

  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_bare_value val_cat -> 
      Camlline_for_any_duo_son_top_bare_value_v.string_off val_cat
	
  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_ofstring_value val_cau -> 
      Camlline_for_any_duo_son_top_ofstring_value_v.string_off val_cau

  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_son_top_notleaf_value val_cac ->
      Camlline_for_any_duo_son_top_notleaf_value_v.string_off val_cac

  | Camlline_for_any_duo_value_t.Camlline_for_any_duo_top_main_value val_cad -> 
	Camlline_for_any_duo_top_main_value_v.string_off val_cad


;;

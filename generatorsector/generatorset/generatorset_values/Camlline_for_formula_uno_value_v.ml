(** {3 Camlline_for_formula_uno_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_uno_value_v";
   "Needed-by : VGNR:Camlline_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 String_ofing} *)

let string_of sym_cfu soi_cal =
  match sym_cfu with
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_clc ->
	(Camlline_for_formula_uno_builder_value_v.string_of sym_clc soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_cld -> 
	(Camlline_for_formula_uno_data_value_v.string_of sym_cld soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_cld -> 
	(Camlline_for_formula_uno_main_value_v.string_of sym_cld soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_clu -> 
	(Camlline_for_formula_uno_son_value_v.string_of sym_clu soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_cld -> 
	(Camlline_for_formula_uno_top_value_v.string_of sym_cld soi_cal)

;;

(** {6 Making_for_value} *)

let make sym_cfu soi_cal =
  match sym_cfu with
  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_builder_symbol sym_clc ->
      Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_builder_value  
	(Camlline_for_formula_uno_builder_value_v.make sym_clc soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol sym_cld -> 
      Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_data_value
	(Camlline_for_formula_uno_data_value_v.make sym_cld soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol sym_cld -> 
      Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_main_value
	(Camlline_for_formula_uno_main_value_v.make sym_cld soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_son_symbol sym_cld -> 
      Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_son_value 
	(Camlline_for_formula_uno_son_value_v.make sym_cld soi_cal)

  | Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_top_symbol sym_clt -> 
      Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_top_value 
	(Camlline_for_formula_uno_top_value_v.make sym_clt soi_cal)


;;

(** {6 Retrieving} *)

let retrieve tag_cfu =
  let soi_cal = Tag_v.sole_index_off_tag tag_cfu in
  let sym_cfu = Tag_v.entity_off_tag tag_cfu in
  make sym_cfu soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfu =
  match val_cfu with
  | Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_builder_value val_cac ->
      Camlline_for_formula_uno_builder_value_v.string_off val_cac

  | Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_data_value val_cad -> 
	Camlline_for_formula_uno_data_value_v.string_off val_cad

  | Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_main_value val_cad -> 
	Camlline_for_formula_uno_main_value_v.string_off val_cad

  | Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_son_value val_cad -> 
      Camlline_for_formula_uno_son_value_v.string_off val_cad

  | Camlline_for_formula_uno_value_t.Camlline_for_formula_uno_top_value val_cat -> 
      Camlline_for_formula_uno_top_value_v.string_off val_cat
;;       


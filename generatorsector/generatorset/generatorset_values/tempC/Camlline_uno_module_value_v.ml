(** {3 The functionalities for a Value for an Camlline_uno_module of a Camlfile.}  *)

let nam_cod = "Camlline_uno_module_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cum soi_cal =
  failwith "Camlline_uno_module_value_v.make NO MORE in use"
(**
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_module_symbol sym_cum
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cum with
  | Camlline_uno_module_symbol_t.Module_Mx_p_equal_X_p ->  
      Format.sprintf "module %s = %s_p"
	(abbreviation_module_p sym_cat sym_ent)  
	(String.capitalize (Entity_symbol_v.string_off sym_ent) )

  | Camlline_uno_module_symbol_t.Module_Mx_t_equal_X_t ->  
      Format.sprintf "module %s = %s_t"
	(abbreviation_module_t sym_cat sym_ent)  
	(String.capitalize (Entity_symbol_v.string_off sym_ent) )

  | Camlline_uno_module_symbol_t.Module_Mx_v_equal_X_v ->  
      Format.sprintf "module %s = %s_v"
	(abbreviation_module_v sym_cat sym_ent)  
	(String.capitalize (Entity_symbol_v.string_off sym_ent) ) 
**)
;;

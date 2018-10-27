(** {3 The functionalities for a Value for an Camlline_uno_value of a Camlfile.}  *)

let nam_cod = "Camlline_uno_value_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cuv soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_uno_value_symbol sym_cuv 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cuv with
    Camlline_uno_value_symbol_t.Msc_tdot_msc
  | Camlline_uno_value_symbol_t.Mss_tdot_mss 
  | Camlline_uno_value_symbol_t.Mst_tdot_mst -> 
      Format.sprintf "    %s_t.%s"
	(String.capitalize (module_name sym_cat sym_ent))  
	(module_name sym_cat sym_ent)  

  | Camlline_uno_value_symbol_t.Msc_tdot_msc_arrow 
  | Camlline_uno_value_symbol_t.Mss_tdot_mss_arrow 
  | Camlline_uno_value_symbol_t.Mst_tdot_mst_arrow -> 
      Format.sprintf "    %s_t.%s ->"
	(String.capitalize (module_name sym_cat sym_ent))  
	(module_name sym_cat sym_ent)  
;;

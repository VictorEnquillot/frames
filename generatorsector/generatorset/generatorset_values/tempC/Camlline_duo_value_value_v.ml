(** {3 The functionalities for a Value for an Camlline_duo_value of a Camlfile.}  *)

let nam_cod = "Camlline_duo_value_value_v.ml";;

(** {6 Aliases} *)

open Camlline_value_tools_v;;

(** {6 Making.} *)

let make sym_cdv soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_duo_value_symbol sym_cdv 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2) = pair_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cdv with
(* extracting val first line *)
  | Camlline_duo_value_symbol_t.Val_mac_off_mat_colon -> 
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val %s_off_%s :"
	(module_name sym_cat sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
      
(* upgrading val first line *)
  | Camlline_duo_value_symbol_t.Val_mat_of_mac_colon -> 
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val %s_of_%s :"
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 
      
(* upgrading val one line for l only *)
  | Camlline_duo_value_symbol_t.Val_esl_colon_Mst_tdot_mst -> 
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val %s : %s_t.%s;;"
	(Entity_symbol_v.string_off sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 

(* querying val first line *)
  | Camlline_duo_value_symbol_t.Val_is_mss_off_mst_colon -> 
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val is_%s_off_%s :"
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 
;;

(** {3 Camlline_for_any_duo_son_top_bare_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_son_top_bare_value_v";
   "Needed-by : VGNR:Camlline_duo_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cst soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_cst 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_1, sym_ent_2) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cst with
  | Camlline_for_any_duo_son_top_bare_symbol_t.Et_any_tdot_es ->
   (*   Geometry_symbol_t.Triangle_symbol ->  *)

      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "  %s_t.%s "
	(module_name_capitalized sym_cat sym_ent_t) 
	(entity_name_capitalized sym_ent_s)
 
  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es ->
   (*   | Geometry_symbol_t.Triangle_symbol ->  *)

      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "  | %s_t.%s "
	(module_name_capitalized sym_cat sym_ent_t) 
	(entity_name_capitalized sym_ent_s)
 
  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true ->
   (*   | Geometry_symbol_t.Vector -> true *)

      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "  | %s_t.%s -> true"
	(module_name_capitalized sym_cat sym_ent_t) 
	(entity_name_capitalized sym_ent_s) 
;;

(** {6 Making_of_value} *)

let make sym_cst soi_cal =
  let str = string_of sym_cst soi_cal in
  match sym_cst with

  | Camlline_for_any_duo_son_top_bare_symbol_t.Et_any_tdot_es ->
       Camlline_for_any_duo_son_top_bare_value_t.Et_any_tdot_es str 

  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es ->
       Camlline_for_any_duo_son_top_bare_value_t.Pipe_et_any_tdot_es str

  | Camlline_for_any_duo_son_top_bare_symbol_t.Pipe_et_any_tdot_es_arrow_true ->
       Camlline_for_any_duo_son_top_bare_value_t.Pipe_et_any_tdot_es_arrow_true str
;;

(** {6 Retrieving} *)

let retrieve tag_cst =
  let sym_cst = Tag_v.entity_off_tag tag_cst in
  let soi_cal = Tag_v.sole_index_off_tag tag_cst in
  make sym_cst soi_cal
;;

(** {6 String_offing} *)

let string_off val_cst =
  match val_cst with
  | Camlline_for_any_duo_son_top_bare_value_t.Et_any_tdot_es str -> str
  | Camlline_for_any_duo_son_top_bare_value_t.Pipe_et_any_tdot_es str -> str
  | Camlline_for_any_duo_son_top_bare_value_t.Pipe_et_any_tdot_es_arrow_true str -> str
;;


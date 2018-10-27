(** {3 Camlline_formula_v}  *)

let nam_cod = "Camlline_formula_v.ml";;

(** {6 Naming} *)

let name for_cal =
  match for_cal with
  | Camlline_formula_t.Camlline_for_any_formula for_cau ->
      Camlline_for_any_formula_v.name for_cau

  | Camlline_formula_t.Camlline_for_symbol_formula for_cad ->
      Camlline_for_symbol_formula_v.name for_cad

  | Camlline_formula_t.Camlline_constant_formula for_cac ->
      Camlline_constant_formula_v.name for_cac

  | Camlline_formula_t.Camlline_for_formula_formula for_cad ->
      Camlline_for_formula_formula_v.name for_cad

  | Camlline_formula_t.Camlline_for_tag_formula for_cad ->
      Camlline_for_tag_formula_v.name for_cad

;;

(** {6 Making} *)

let make sym_cal soi_cal =
  match sym_cal with 
  | Camlline_symbol_t.Camlline_constant_symbol sym_cac ->
      Camlline_formula_t.Camlline_constant_formula 
	(Camlline_constant_formula_v.make sym_cac soi_cal)

  | Camlline_symbol_t.Camlline_for_formula_symbol sym_cad ->
      Camlline_formula_t.Camlline_for_formula_formula 
	(Camlline_for_formula_formula_v.make sym_cad soi_cal)

  | Camlline_symbol_t.Camlline_for_symbol_symbol sym_cad ->
      Camlline_formula_t.Camlline_for_symbol_formula 
	(Camlline_for_symbol_formula_v.make sym_cad soi_cal)

  | Camlline_symbol_t.Camlline_for_any_symbol sym_cau ->
      Camlline_formula_t.Camlline_for_any_formula 
	(Camlline_for_any_formula_v.make sym_cau soi_cal)
	
  | Camlline_symbol_t.Camlline_for_tag_symbol sym_cad ->
      Camlline_formula_t.Camlline_for_tag_formula 
	(Camlline_for_tag_formula_v.make sym_cad soi_cal)

;;

(** {6 Retrieving.} *)

let retrieve tag_cal =
  let sym_cal = Tag_v.entity_off_tag tag_cal in
  let soi_cal = Tag_v.sole_index_off_tag tag_cal in
  make sym_cal soi_cal
;;

(** {6 Extracting.} *)

let entity_tag_list_off_camlline_formula for_cal =
  match for_cal with
  | Camlline_formula_t.Camlline_constant_formula for_cac ->
      Camlline_constant_formula_v.entity_tag_list_off_camlline_constant_formula for_cac

  | Camlline_formula_t.Camlline_for_symbol_formula for_cad ->
      Camlline_for_symbol_formula_v.entity_tag_list_off_camlline_for_symbol_formula for_cad

  | Camlline_formula_t.Camlline_for_formula_formula for_cad ->
      Camlline_for_formula_formula_v.entity_tag_list_off_camlline_for_formula_formula for_cad

  | Camlline_formula_t.Camlline_for_tag_formula for_cad ->
      Camlline_for_tag_formula_v.entity_tag_list_off_camlline_for_tag_formula for_cad

  | Camlline_formula_t.Camlline_for_any_formula for_cau ->
      Camlline_for_any_formula_v.entity_tag_list_off_camlline_for_any_formula for_cau
;;

let entity_tag_list_off_camlline_tag tag_cal =
  let for_cal = retrieve tag_cal in
  entity_tag_list_off_camlline_formula for_cal
;;

(** {6 Iterating.} *)

let map f for_cal = 
  let tag_ent_l = entity_tag_list_off_camlline_formula for_cal in
  List.map f tag_ent_l
;;

let iter f for_cal = 
  let tag_ent_l = entity_tag_list_off_camlline_formula for_cal in
  List.iter f tag_ent_l ;;

let map2 f for_cal_1 for_cal_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_formula for_cal_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_formula for_cal_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cal_1 for_cal_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_formula for_cal_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_formula for_cal_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;


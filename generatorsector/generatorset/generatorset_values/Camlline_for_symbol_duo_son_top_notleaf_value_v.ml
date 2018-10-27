(** {3 Camlline_for_symbol_duo_son_top_notleaf_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_duo_son_top_notleaf_value_v";
   "Needed-by : VGNR:Camlline_duo_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cdf soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_cdf 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_son, sym_ent_top) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l in

  match sym_cdf with
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol ->

      Format.sprintf "  %s_symbol_t.%s_symbol" 
	(entity_name_capitalized sym_ent_top) 
	(entity_name_capitalized sym_ent_son) 

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol_sym_as ->

      Format.sprintf "  %s_symbol_t.%s sym_%s" 
	(entity_name_capitalized sym_ent_top) 
	(entity_name_capitalized sym_ent_son) 
	(abbreviation_argument sym_ent_son)

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_of_es_symbol_sym_as ->

      Format.sprintf "    %s_symbol_of_%s_symbol sym_%s" 
	(entity_name sym_ent_top) 
	(entity_name sym_ent_son) 
	(abbreviation_argument sym_ent_son)

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es ->
  (* let vector = figureset_symbol_of_vector_symbol Vector_symbol_v.vector;; *)

      Format.sprintf "let %s = %s_symbol_of_%s_symbol %s_symbol_v.%s;;" 
	(entity_name sym_ent_son)
	(entity_name sym_ent_top) 
	(entity_name sym_ent_son) 
	(entity_name_capitalized sym_ent_son)
	(entity_name sym_ent_son)

(* abbreviating a Basicnullary *)
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg ->
      (* let fromid s = Point_symbol_t.Fromid s *)

      Format.sprintf "let %s_symbol s = %s_symbol_t.%s_symbol s;;" 
	(entity_name sym_ent_son)
	(entity_name_capitalized sym_ent_top)
	(entity_name_capitalized sym_ent_son)

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string ->
    (* | Point_symbol_t.Fromid _ -> "fromid" *) 

      Format.sprintf "  | %s_symbol_t.%s_symbol _ -> \"%s\""
	(entity_name_capitalized sym_ent_top)
	(entity_name_capitalized sym_ent_son) 
	(entity_name sym_ent_son)

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow ->
   (* | Top_symbol_t.Son_symbol sym_son -> *)

      Format.sprintf "  | %s_symbol_t.%s_symbol sym_%s ->"
	(entity_name_capitalized sym_ent_top ) 
        (entity_name_capitalized sym_ent_son)
	(abbreviation_argument sym_ent_son)

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Try_et_symbol_of_es_symbol ->
      (* try entity_symbol_of_entity_fictive_symbol *)

      Format.sprintf "  try %s_symbol_of_%s_symbol"
	(entity_name sym_ent_top) 
	(entity_name sym_ent_son)
;;

(** {6 Making_of_value} *)

let make sym_cdf soi_cal =
  let str = string_of sym_cdf soi_cal in
  match sym_cdf with
  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_tdot_es_symbol str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_tdot_es_symbol_sym_as ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_tdot_es_symbol_sym_as str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Et_symbol_of_es_symbol_sym_as ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_of_es_symbol_sym_as str

  | Camlline_for_symbol_duo_son_top_notleaf_symbol_t.Try_et_symbol_of_es_symbol ->
       Camlline_for_symbol_duo_son_top_notleaf_value_t.Try_et_symbol_of_es_symbol str
;;

(** {6 Retrieving} *)

let retrieve tag_cdf =
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cdf in
  make sym_cdf soi_cal
;;

(** {6 String_offing} *)

let string_off val_cdf =
  match val_cdf with
  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_tdot_es_symbol str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string str -> str

| Camlline_for_symbol_duo_son_top_notleaf_value_t.Pipe_et_symbol_tdot_es_symbol_sym_as_arrow str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_tdot_es_symbol_sym_as str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Et_symbol_of_es_symbol_sym_as str -> str

  | Camlline_for_symbol_duo_son_top_notleaf_value_t.Try_et_symbol_of_es_symbol str -> str
;;


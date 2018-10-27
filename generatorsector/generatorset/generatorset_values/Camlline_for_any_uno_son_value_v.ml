(** {3 Camlline_for_any_uno_son_value_v}  *)

let nam_cod = "Camlline_for_any_uno_son_value_v.ml";;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_of} *)

let string_of sym_cuf soi_cal =
  let tag_cuf = Tag_v.make sym_cuf soi_cal in
  let tag_ent_l = 
    Camlline_for_any_uno_son_formula_v.entity_tag_list_off_camlline_for_any_uno_son_tag
      tag_cuf 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_son_symbol 
      sym_cuf 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cuf with
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment ->             
   (* Point_3d *) 
      Format.sprintf "(* %s *)"
      (entity_name_capitalized sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.make %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.name %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.fullname %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.longname %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as -> 
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      %s.string_off %s"
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as ->
      let str ="Format.sprintf %s \"%s\"" in
      Format.sprintf " %s (longname %s) (string_off %s)" 
	str 
	(abbreviation_argument sym_ent)
	(abbreviation_argument sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as ->

      let sym_cof = Contentfile_symbol_v.type_alone in
      let str = "\"%s\"" in
      Format.sprintf "  Format.sprintf \"%s.%s@.    (String.capitalize (name %s) )" 
	str
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function ->
   (* let is_entity_proper = function *)

      Format.sprintf "let is_%s = function"
	(entity_name sym_ent)  

  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function ->
   (* let is_triangle_symbol = function *)

      Format.sprintf "let is_%s = function"
	(module_name sym_cat sym_ent)  

  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow -> 

      Format.sprintf "  | %s %s ->"
	(entity_name sym_ent)  
	(abbreviation_argument sym_ent)
;;

(** {6 Making_of_value} *)

let make sym_cuf soi_cal =
  let str = string_of sym_cuf soi_cal in
  match sym_cuf with
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment ->
     Camlline_for_any_uno_son_value_t.Comment_es_comment str

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as ->
     Camlline_for_any_uno_son_value_t.Es_any_vdot_fullname_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as ->
     Camlline_for_any_uno_son_value_t.Es_any_vdot_longname_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as ->
     Camlline_for_any_uno_son_value_t.Es_any_vdot_string_off_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as ->
     Camlline_for_any_uno_son_value_t.Es_any_vdot_make_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as ->
     Camlline_for_any_uno_son_value_t.Es_any_vdot_name_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as ->
     Camlline_for_any_uno_son_value_t.Format_sprintf_fullname_ac_as_string_off_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as ->
     Camlline_for_any_uno_son_value_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as str

  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function ->
     Camlline_for_any_uno_son_value_t.Let_is_es_any_equal_function str

  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function ->
     Camlline_for_any_uno_son_value_t.Let_is_es_equal_function str

  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow ->
     Camlline_for_any_uno_son_value_t.Pipe_datastructure_ac_as_arrow str

 ;;

(** {6 Retrieving} *)

let retrieve tag_cuf =
  let sym_cuf = Tag_v.entity_off_tag tag_cuf in
  let soi_cal = Tag_v.sole_index_off_tag tag_cuf in
  make sym_cuf soi_cal
;;

(** {6 String_offing} *)

let string_off val_cuf =
  match val_cuf with
  | Camlline_for_any_uno_son_value_t.Comment_es_comment str ->
     str

  | Camlline_for_any_uno_son_value_t.Es_any_vdot_fullname_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Es_any_vdot_longname_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Es_any_vdot_string_off_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Es_any_vdot_make_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Es_any_vdot_name_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Format_sprintf_fullname_ac_as_string_off_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as str ->
     str

  | Camlline_for_any_uno_son_value_t.Let_is_es_any_equal_function str -> str

  | Camlline_for_any_uno_son_value_t.Let_is_es_equal_function str -> str

  | Camlline_for_any_uno_son_value_t.Pipe_datastructure_ac_as_arrow str -> str
;;

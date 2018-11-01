(** {3 Camlline_for_any_uno_top_value_v}  *)

let nam_cod = "Camlline_for_any_uno_top_value_v.ml";;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_of} *)

let string_of sym_cuf soi_cal =
  let tag_cuf = Tag_v.make sym_cuf soi_cal in
  let tag_ent_l = 
    Camlline_for_any_uno_top_formula_v.entity_tag_list_off_camlline_for_any_uno_top_tag 
      tag_cuf
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_cuf 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_dom = Camlline_tag_v.domain_symbol_off_camlline_tag tag_cal in

  match sym_cuf with
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current ->
      let sym_cof = 
	Camlline_tag_v.contentfile_symbol_off_camlline_tag 
	  tag_cal 
      in
      Format.sprintf "  \"Current : %s%s:%s\";"
	(uppercase_initial_category sym_cat)
	(uppercase_abbreviation_domain sym_dom)
	(module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
	
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal ->
      Format.sprintf "let fullname %s ="
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal ->
      Format.sprintf "let longname %s ="
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal ->
      Format.sprintf "let name %s ="
	(abbreviation_categorized_argument sym_cat sym_ent)
	
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal ->
      Format.sprintf "let string_off %s ="
	(abbreviation_categorized_argument sym_cat sym_ent)
	
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname ->
   (*  Format.sprintf "%s \"%s\"" (longname sym_geo) (string_off sym_geo) *)

      let str = "%s \\\"%s\\\"\"" in
      Format.sprintf 
	"  Format.sprintf \"%s (longname sym_%s) (string_off sym_%s)"
	str
	(abbreviation_argument sym_ent)  
	(abbreviation_argument sym_ent)  

  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname ->
   (*  Format.sprintf "Geometry_symbol_t.%s" (String.capitalize_ascii (name sym_geo)) *)

      Format.sprintf 
	"  Format.sprintf \"%s_t.%%s\" (String.capitalize_ascii (name sym_%s))" 
	(module_name_capitalized sym_cat sym_ent)  
	(abbreviation_argument sym_ent)  


  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare ->
      Format.sprintf "  try name_of_topson_bare %s"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf ->
      Format.sprintf "  try name_of_topson_notleaf %s"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring ->
      Format.sprintf "  try name_of_topson_ofstring %s"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare ->
      Format.sprintf "  try string_off_of_topson_bare %s"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf ->
      Format.sprintf "  try string_off_of_topson_notleaf %s"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring ->
      Format.sprintf "  try string_off_of_topson_ofstring %s"
	(abbreviation_argument sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar ->

      Format.sprintf "  (String.capitalize_ascii (name %s) )"
	(abbreviation_categorized_argument sym_cat sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal ->

      Format.sprintf "let retrieve tag_%s ="
	(abbreviation_argument sym_ent)

  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote ->

      Format.sprintf "Format.sprintf \"%s_any_t.%%s\""
	(abbreviation_categorized_argument sym_cat sym_ent)

;;

(** {6 Making_of_value} *)

let make sym_cuf soi_cal =
  let str = string_of sym_cuf soi_cal in
  match sym_cuf with
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote ->
     Camlline_for_any_uno_top_value_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote str
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal ->
     Camlline_for_any_uno_top_value_t.Let_fullname_ac_at_equal str
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal ->
     Camlline_for_any_uno_top_value_t.Let_longname_ac_at_equal str
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal ->
     Camlline_for_any_uno_top_value_t.Let_name_ac_at_equal str
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal ->
     Camlline_for_any_uno_top_value_t.Let_retrieve_tag_top_equal str
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal ->
     Camlline_for_any_uno_top_value_t.Let_string_off_ac_at_equal str
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar ->
     Camlline_for_any_uno_top_value_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar str
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current ->
     Camlline_for_any_uno_top_value_t.Double_quote_current str
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname ->
     Camlline_for_any_uno_top_value_t.Sprintf_for_any_fullname str
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname ->
     Camlline_for_any_uno_top_value_t.Sprintf_for_any_longname str
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare ->
     Camlline_for_any_uno_top_value_t.Try_name_of_topson_bare str
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf ->
     Camlline_for_any_uno_top_value_t.Try_name_of_topson_notleaf str
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring ->
     Camlline_for_any_uno_top_value_t.Try_name_of_topson_ofstring str
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare ->
     Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_bare str
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf ->
     Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_notleaf str
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring ->
     Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_ofstring str

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
  | Camlline_for_any_uno_top_value_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote str -> str 
  | Camlline_for_any_uno_top_value_t.Let_fullname_ac_at_equal str -> str 
  | Camlline_for_any_uno_top_value_t.Let_longname_ac_at_equal str -> str 
  | Camlline_for_any_uno_top_value_t.Let_name_ac_at_equal str -> str 
  | Camlline_for_any_uno_top_value_t.Let_retrieve_tag_top_equal str -> str 
  | Camlline_for_any_uno_top_value_t.Let_string_off_ac_at_equal str -> str 
  | Camlline_for_any_uno_top_value_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar str -> str 
  | Camlline_for_any_uno_top_value_t.Double_quote_current str -> str 
  | Camlline_for_any_uno_top_value_t.Sprintf_for_any_fullname str -> str 
  | Camlline_for_any_uno_top_value_t.Sprintf_for_any_longname str -> str 
  | Camlline_for_any_uno_top_value_t.Try_name_of_topson_bare str -> str 
  | Camlline_for_any_uno_top_value_t.Try_name_of_topson_notleaf str -> str 
  | Camlline_for_any_uno_top_value_t.Try_name_of_topson_ofstring str -> str 
  | Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_bare str -> str 
  | Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_notleaf str -> str 
  | Camlline_for_any_uno_top_value_t.Try_string_off_of_topson_ofstring str -> str 

;;

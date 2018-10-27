(** {3 Camlline_for_any_duo_son_top_notleaf_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_any_duo_son_top_notleaf_value_v";
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
    Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_cst 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_s, sym_ent_t) = Tools_vgnr_v.duo_off_list nam_cod "make" sym_cal sym_ent_l in

  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_ite = Camlline_tag_v.item_symbol_off_camlline_tag tag_cal in

  let sym_cof_typ = Contentfile_symbol_v.type_alone in

  match sym_cst with
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any ->

      Format.sprintf "  %s_t.%s ->"
	(module_name_capitalized sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 


  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_of_es_any_ac_as -> 
   (*    top_formula_of_son_formula for_son *)
 
      Format.sprintf "    %s_of_%s %s" 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any_ac_as -> 
   (*  Top_formula_t.Son_formula for_son *) 

      Format.sprintf "  %s.%s %s"
	(module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.If_not_is_es_any_off_et_any_ac_at ->

      Format.sprintf "  if not (is_%s_off_%s %s)"
        (module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 
	(abbreviation_categorized_argument sym_cat sym_ent_t)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in -> 
   (*  let sym_tri = triangle_symbol_off_figureset_symbol sym_geo in *)
   (*      let sym_tri = triangle_symbol_off_figureset_symbol sym_geo in *)

      Format.sprintf "%slet %s = %s_off_%s %s in"
	(space_for_querying sym_ite)
	(abbreviation_categorized_argument sym_cat sym_ent_s)  
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t)
	(abbreviation_categorized_argument sym_cat sym_ent_t)
	
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function ->  (* Ex.: let atom_zerotied_symbol_off_atom_symbol = function *)

      Format.sprintf "let %s_off_%s = function" 
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_et_any_of_es_any_ac_as_equal ->

      Format.sprintf "let %s_of_%s %s = " 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function ->  

      Format.sprintf "let is_%s_off_%s = function" 
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true ->

      Format.sprintf "  | %s.%s _ -> true"
        (module_name_capitalized_suffixed sym_cat sym_ent_t sym_cof_typ)
	(module_name_capitalized sym_cat sym_ent_s) 

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_arrow ->
   (*   | Triangle_symbol_t.Triangle_scalene_symbol -> *)

      Format.sprintf "  | %s_t.%s ->"
	(module_name_capitalized sym_cat sym_ent_t) 
	(module_name_capitalized sym_cat sym_ent_s) 

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow ->
   (*   | Top_formula_t.Son_formula for_son -> *) 

      Format.sprintf "  | %s_t.%s %s ->"
	(module_name_capitalized sym_cat sym_ent_t) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as -> 
   (* | Top_formula_t.Son_formula for_son -> for_son *) 

      Format.sprintf "  | %s_t.%s %s -> %s"
	(module_name_capitalized sym_cat sym_ent_t) 
	(module_name_capitalized sym_cat sym_ent_s) 
	(abbreviation_categorized_argument sym_cat sym_ent_s)
	(abbreviation_categorized_argument sym_cat sym_ent_s)

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines ->

      Format.sprintf "  | %s -> Error_messages_v.print_fatal_error\
      @.      nam_cod \"%s_off_%s\"\
      @.      \"%s\"\
      @.      (name %s) \"check\""
	  (abbreviation_categorized_argument sym_cat sym_ent_t)
	  (module_name sym_cat sym_ent_s) 
	  (module_name sym_cat sym_ent_t) 
	  (module_name_capitalized sym_cat sym_ent_s) 
	  (abbreviation_categorized_argument sym_cat sym_ent_t)

;;

(** {6 Making_of_value} *)

let make sym_cst soi_cal =
  let str = string_of sym_cst soi_cal in
  match sym_cst with
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_tdot_es_any str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.If_not_is_es_any_off_et_any_ac_at ->
       Camlline_for_any_duo_son_top_notleaf_value_t.If_not_is_es_any_off_et_any_ac_at str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Let_es_any_off_et_any_equal_function str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_et_any_of_es_any_ac_as_equal ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Let_et_any_of_es_any_ac_as_equal str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Let_is_es_any_off_et_any_equal_function str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_underscore_arrow_true str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_arrow ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_arrow str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any_ac_as ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_tdot_es_any_ac_as str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_ac_as_arrow str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines str

  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_of_es_any_ac_as ->
       Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_of_es_any_ac_as str

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
  | Camlline_for_any_duo_son_top_notleaf_value_t.If_not_is_es_any_off_et_any_ac_at str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Let_es_any_off_et_any_equal_function str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Let_et_any_of_es_any_ac_as_equal str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Let_is_es_any_off_et_any_equal_function str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_tdot_es_any str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_tdot_es_any_ac_as str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_ac_as_arrow str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_arrow str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_et_any_tdot_es_any_underscore_arrow_true str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines str -> str
  | Camlline_for_any_duo_son_top_notleaf_value_t.Et_any_of_es_any_ac_as str -> str

;;


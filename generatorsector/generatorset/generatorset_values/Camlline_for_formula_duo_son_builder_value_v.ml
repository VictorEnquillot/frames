(** {3 Camlline_for_formula_duo_son_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_formula_duo_son_builder_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cfs soi_cal =
  let nam_fun = "string_of" in

  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let tag_ent_l = 
    Camlline_for_formula_duo_son_builder_formula_v.entity_tag_list_off_camlline_for_formula_duo_son_builder_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_son, sym_ent_bui) = duo_off_list nam_cod nam_fun sym_cal sym_ent_l in

  match sym_cfs with
  | Camlline_for_formula_duo_son_builder_symbol_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as ->
   (* Son_formula_v.builder_tag_list_off_son_formula for_son *)

      Format.sprintf "      %s_formula_v.%s_tag_list_off_%s_formula for_%s" 
       (entity_name_capitalized sym_ent_son)  
       (entity_name sym_ent_bui)  
       (entity_name sym_ent_son)  
       (abbreviation_argument sym_ent_son)

  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list ->
(* | Son of Builder_tag_t.builder_tag list *)

      Format.sprintf "  | %s of %s_tag_t.%s_tag list" 
       (entity_name_capitalized sym_ent_son)  
       (entity_name_capitalized sym_ent_bui)  
       (entity_name sym_ent_bui)  

  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list ->
(* | Son of string * Builder_tag_t.builder_tag list *)

      Format.sprintf "  | %s of string * %s_tag_t.%s_tag list" 
       (entity_name_capitalized sym_ent_son)  
       (entity_name_capitalized sym_ent_bui)  
       (entity_name sym_ent_bui)  
;;
	

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with
  | Camlline_for_formula_duo_son_builder_symbol_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as ->
      Camlline_for_formula_duo_son_builder_value_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as str
	
  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list ->
      Camlline_for_formula_duo_son_builder_value_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list str
	
  | Camlline_for_formula_duo_son_builder_symbol_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list ->
      Camlline_for_formula_duo_son_builder_value_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list str
;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;

(** {6 String_offing} *)

let string_off val_cfs =
  match val_cfs with
  | Camlline_for_formula_duo_son_builder_value_t.Es_formula_vdot_eb_tag_list_off_es_formula_for_as str -> str 
  | Camlline_for_formula_duo_son_builder_value_t.Pipe_es_constructor_of_eb_tag_tdot_eb_tag_list str -> str
 | Camlline_for_formula_duo_son_builder_value_t.Pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list str -> str
;;


(** {3 Camlline_for_symbol_uno_son_notleaf_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_symbol_uno_son_notleaf_value_v";
   "Needed-by : VGNR:Camlline_uno_son_notleaf_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let tag_ent_l = 
    Camlline_for_symbol_uno_son_notleaf_formula_v.entity_tag_list_off_camlline_for_symbol_uno_son_notleaf_tag 
      tag_cfs 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_cfs 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent_son = uno_off_list nam_cod "make" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Camlline_tag_v.contentfile_symbol_off_camlline_tag tag_cal in
  let sym_usf = Camlline_tag_v.usagefile_symbol_off_camlline_tag tag_cal in

  match sym_cfs with

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar ->
      (* Ex.: (Entity_fictive_symbol_v.make nam s) *)
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "      (%s.make nam s)"
	(module_name_capitalized_suffixed sym_cat sym_ent_son sym_cof)  
	
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as -> (*    Triangle_scalene_symbol_v.name sym_trs *)
      
      let sym_ent_s = sym_ent_son in
      Format.sprintf "    %s_symbol_v.name sym_%s"
        (entity_name_capitalized sym_ent_s) 
        (abbreviation_argument sym_ent_s)

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as -> (*  Triangle_scalene_symbol_v.string_off sym_trs    *)
      
      let sym_ent_s = sym_ent_son in
      Format.sprintf "  %s_symbol_v.string_off sym_%s"
	(entity_name_capitalized sym_ent_s) 
	(abbreviation_argument sym_ent_s)
       
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol ->
      (* Ex.: failwith "Not_a_entity_fictive_symbol:entity_fictive_symbol_v.ml:make" *)
      
      Format.sprintf "    failwith \"Not_a_%s:%s:make\"" 
	(module_name sym_cat sym_ent_son)  
	(module_name_capitalized_suffixed_extended sym_cat sym_ent_son sym_cof sym_usf)  
	
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow ->
      (* Ex.: with Failure "Not_a_entity_fictive_symbol:Entity_fictive_symbol_v.ml:make" -> *)
      let sym_cof = Contentfile_symbol_v.value_alone in
      Format.sprintf "  with Failure \"Not_a_%s:%s:make\" ->" 
	(module_name sym_cat sym_ent_son)  
	(module_name_capitalized_suffixed_extended sym_cat sym_ent_son sym_cof sym_usf)  
;;

(** {6 Making_of_value} *)

let make sym_cfs soi_cal =
  let str = string_of sym_cfs soi_cal in
  match sym_cfs with

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar ->
     Camlline_for_symbol_uno_son_notleaf_value_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar str

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as ->
     Camlline_for_symbol_uno_son_notleaf_value_t.Es_symbol_vdot_name_sym_as str

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as ->
     Camlline_for_symbol_uno_son_notleaf_value_t.Es_symbol_vdot_string_off_sym_as str

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol ->
     Camlline_for_symbol_uno_son_notleaf_value_t.Failwith_not_es_symbol str

  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow ->
     Camlline_for_symbol_uno_son_notleaf_value_t.With_failure_not_es_symbol_arrow str

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
  | Camlline_for_symbol_uno_son_notleaf_value_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar str -> str
  | Camlline_for_symbol_uno_son_notleaf_value_t.Es_symbol_vdot_name_sym_as str -> str
  | Camlline_for_symbol_uno_son_notleaf_value_t.Es_symbol_vdot_string_off_sym_as str -> str
  | Camlline_for_symbol_uno_son_notleaf_value_t.Failwith_not_es_symbol str -> str
  | Camlline_for_symbol_uno_son_notleaf_value_t.With_failure_not_es_symbol_arrow str -> str
;;


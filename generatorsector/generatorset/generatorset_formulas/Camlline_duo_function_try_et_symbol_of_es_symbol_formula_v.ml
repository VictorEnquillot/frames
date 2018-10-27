(** {3 Camlline_duo_function_try_et_symbol_of_es_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_duo_function_try_et_symbol_of_es_symbol_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : the Camlline_symbol list expressing the Current formula";
   "Remark : ";
   "Improve : ";
   "Example : try entity_symbol_of_entity_fictive_symbol";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_cdf = "try_top_of_son_with_failure_arrow_formula_v";;

let longname for_cdf =
  Format.sprintf "Camlline_duo_function_try_et_symbol_of_est_symbol_t.%s" 
    (String.capitalize (name for_cdf))

let string_off for_cdf = "";;

let fullname for_cdf =
  Format.sprintf "%s \"%s\"" (longname for_cdf) (string_off for_cdf)
;;

(** {6 Topson_notleaf.} *)

let entity_topson_notleaf_symbol_list_of_octtup dec_cdf =
  let (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = dec_cdf in
  let sym_enp_top =
    Entity_symbol_v.entity_proper_symbol_off_entity_symbol 
      sym_ent_top
  in
  let tri_enp = (sym_enp_top, sym_cat, sym_dos) in

  Entity_topson_notleaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
    tri_enp
;;

(** {6 Building.} *)

let build dec_cdf idx_gro =
  let (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = dec_cdf in
  let sym_son_l = entity_topson_notleaf_symbol_list_of_octtup dec_cdf in
  let sym_ent_son = List.nth sym_son_l (idx_gro-1) in

  [
   sym_ent_son; 
   sym_ent_top;
 ] 
;;

(** {6 Storing Sons.} *)

let store_sons sym_ent_l soi_ent_l =
  let gss_ent_l = List.map 
      Generatorset_symbol_v.generatorset_symbol_of_entity_symbol
      sym_ent_l
  in

  List.iter2 
    Generatorset_symbol_by_sole_index_register_v.store
    soi_ent_l gss_ent_l;
;;

(** {6 Making.} *)

let make sym_cdf soi_cal =
  let tag_cdf = Tag_v.make sym_cdf soi_cal in
  let non_cdf =
    Camlline_duo_function_tag_v.camlline_duo_function_dectup_off_camlline_duo_function_tag
      tag_cdf
  in
  let idx_gro = Sole_index_v.father_index_off_sole_index soi_cal in
  let sym_ent_l = build non_cdf idx_gro in
  let soi_ent_l = 
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  store_sons sym_ent_l soi_ent_l;
  List.map2 Tag_v.make sym_ent_l soi_ent_l 
;;

(** {6 Retrieving.} *)

let retrieve tag_cdf = 
  let sym_cdf = Tag_v.entity_off_tag tag_cdf in
  let soi_gro = Tag_v.sole_index_off_tag tag_cdf in
  make sym_cdf soi_gro
;;


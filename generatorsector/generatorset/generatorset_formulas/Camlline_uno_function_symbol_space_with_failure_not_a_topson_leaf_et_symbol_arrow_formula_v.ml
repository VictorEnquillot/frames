(** {3 Camlline_uno_function_symbol_with_failure_not_a_topson_leaf_et_symbol_arrow_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_uno_function_symbol_with_failure_not_a_topson_leaf_et_symbol_arrow_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : the Camlline_tag list expressing the Current formula";
   "Remark : ";
   "Improve : ";
   "Example :   (Entity_fictive_symbol_v.make nam s)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_cfs = "with_failure_not_a_topson_leaf_arrow_formula";;

let longname for_cfs =
  Format.sprintf "Camlline_uno_function_symbol_with_failure_not_a_topson_leaf_et_symbol_arrow_t.%s" 
    (String.capitalize (name for_cfs))

let string_off for_cfs = "";;

let fullname for_cfs =
  Format.sprintf "%s \"%s\"" (longname for_cfs) (string_off for_cfs)
;;

(** {6 Topson_leaf.} *)

(** {6 Building.} *)

let build dec_cfs =
  let (sym_cfs, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = dec_cfs in
  [
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

let make sym_cfs soi_cal =
  let tag_cfs = Tag_v.make sym_cfs soi_cal in
  let non_cfs =
    Camlline_uno_function_symbol_tag_v.camlline_uno_function_symbol_dectup_off_camlline_uno_function_symbol_tag
      tag_cfs
  in
  let sym_ent_l = build non_cfs in
  let soi_ent_l = 
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  store_sons sym_ent_l soi_ent_l;
  List.map2 Tag_v.make sym_ent_l soi_ent_l 
;;

(** {6 Retrieving.} *)

let retrieve tag_cfs = 
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_cfs in
  make sym_cfs soi_cal
;;


(** {3 Camlline_for_tag_trio_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_trio_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_ctt soi_cal =
  Utilities_v.not_yet_implemented nam_cod "string_of"
(*
  let tag_ctt = Tag_v.make sym_ctt soi_cal in
  let tag_ent_l = 
    Camlline_for_tag_trio_formula_v.entity_tag_list_off_camlline_for_tag_trio_tag 
      tag_ctt 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_tag_trio_symbol sym_ctt 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let sym_ent = trio_of_list nam_cod "string_of" sym_cal sym_ent_l in

  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in
  let sym_cof = Contentfile_symbol_v.value_alone in

  match sym_ctt with
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar ->
      Utilities_v.not_yet_implemented nam_cod "string_of Lpar_a_b_c_tag_rpar"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped ->
      Utilities_v.not_yet_implemented nam_cod "string_of Lpar_a_b_c_tag_rpar_tree_footed_capped"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped ->
      Utilities_v.not_yet_implemented nam_cod "string_of Lpar_a_b_c_tag_rpar_tree_leafed_capped"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet ->
      Utilities_v.not_yet_implemented nam_cod "string_of Lpar_a_b_c_tag_rpar_triplet"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list ->
      Utilities_v.not_yet_implemented nam_cod "string_of Lpar_a_b_c_tag_rpar_triplet_list"

      Format.sprintf "    failwith \"Not_%s:%s:make\"" 
       (abbreviation_argument sym_ent)
       (entity_name sym_ent)  
       (entity_name_capitalized sym_ent)  
       (module_name_capitalized sym_cat sym_ent)  
       (module_name_capitalized_suffixed sym_cat sym_ent sym_cof)  
*)
;;
	

(** {6 Making_of_value} *)

let make sym_ctt soi_cal =
  let str = string_of sym_ctt soi_cal in
  match sym_ctt with
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar ->
     Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar str
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped ->
     Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_tree_footed_capped str
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped ->
     Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped str
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet ->
     Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_triplet str
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list ->
     Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_triplet_list str

;;

(** {6 Retrieving} *)

let retrieve tag_ctt =
  let sym_ctt = Tag_v.entity_off_tag tag_ctt in
  let soi_cal = Tag_v.sole_index_off_tag tag_ctt in
  make sym_ctt soi_cal
;;

(** {6 String_offing} *)

let string_off val_ctt =
  match val_ctt with
  | Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar str -> str 
  | Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_tree_footed_capped str -> str 
  | Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped str -> str 
  | Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_triplet str -> str 
  | Camlline_for_tag_trio_value_t.Lpar_a_b_c_tag_rpar_triplet_list str -> str 

;;


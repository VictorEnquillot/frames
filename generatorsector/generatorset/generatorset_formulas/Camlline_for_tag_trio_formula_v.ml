(** {3 Camlline_for_tag_trio_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_tag_trio_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Stem type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ctt =
  match for_ctt with
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar _ ->
     Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_footed_capped _ ->
     Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped _ ->
     Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet _ ->
     Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet_list _ ->
     Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list

;;

(** {6 Naming_for_formula} *)

let name for_ctt = 
  let sym_ctt = symbol_of_formula for_ctt in
  Camlline_for_tag_trio_symbol_v.name sym_ctt
;;
(* ***

let string_off for_ctt =
  let sym_ctt = symbol_of_formula for_ctt in
  Camlline_for_tag_trio_symbol_v.string_off sym_ctt
;;

let longname for_ctt =
  Format.sprintf "Camlline_for_tag_trio_formula_t.%s" 
    (String.capitalize (name for_ctt))

let fullname for_ctt =
  Format.sprintf "%s \"%s\"" (longname for_ctt) (string_off for_ctt)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ctt soi_cal =
  Utilities_v.not_yet_implemented nam_cod "build_n_store for an Entity_fictive_nullary"
(*   let tag_ctt = Tag_v.make sym_ctt soi_cal in *)
(*   let dec_ctt =  *)
(*     Camlline_for_tag_trio_tag_v.camlline_for_tag_trio_dectup_off_camlline_for_tag_trio_tag  *)
(*       tag_ctt  *)
(*   in *)

(* (\* BT builders *\) *)

(*   let sym_ent_top = Decuplet_v.right_third_off_decuplet dec_ctt in *)
(*   let sym_bui_l =  *)
(*     Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide  *)
(*       tri_efn *)
(*   in *)
(*   let soi_bui_l =  *)
(*     Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
(*       1 (List.length sym_bui_l) *)
(*       soi_cal *)
(*   in *)

(*   let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in *)
(*   Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l; *)
  
(*   List.map2 Tag_v.make sym_ent_l soi_ent_l *)
;;

(** {6 Making_for_formula} *)

let make sym_ctt soi_cal =
  let tag_ent_l = build_n_store sym_ctt soi_cal in
  match sym_ctt with 
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar ->
     Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar tag_ent_l
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped ->
     Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_footed_capped tag_ent_l
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped ->
     Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped tag_ent_l
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet ->
     Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet tag_ent_l
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list ->
     Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet_list tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ctt =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctt in
  let sym_ctt = Tag_v.entity_off_tag tag_ctt in
  make sym_ctt soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_tag_trio_formula for_ctt =
  match for_ctt with
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar tag_ent_l -> tag_ent_l
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_footed_capped tag_ent_l -> tag_ent_l
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped tag_ent_l -> tag_ent_l
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet tag_ent_l -> tag_ent_l
  | Camlline_for_tag_trio_formula_t.Lpar_a_b_c_tag_rpar_triplet_list tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_tag_trio_tag tag_ctt =
  let for_ctt = retrieve tag_ctt in
  entity_tag_list_off_camlline_for_tag_trio_formula for_ctt
;; 

(** {6 Iterating_for_formula_for_tag_trio.} *)

let map f_of_tag_ent for_ctt = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctt = 
  let tag_ent_l = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctt_1 for_ctt_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctt_1 for_ctt_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_tag_trio_formula for_ctt_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;


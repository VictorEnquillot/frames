(** {3 Camlline_for_formula_duo_top_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_top_data_formula_v";
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

let symbol_of_formula for_ctd =
  match for_ctd with
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_equal_function _ ->
     Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_for_at_equal _ ->
     Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_tag_tag_at_equal _ ->
     Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal
  | Camlline_for_formula_duo_top_data_formula_t.Ed_tag_list_off_et_formula_for_at _ ->
     Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at
;;

(** {6 Naming_for_formula} *)

let name for_ctd = 
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_formula_duo_top_data_symbol_v.name sym_ctd
;;
(* ***

let string_off for_ctd =
  let sym_ctd = symbol_of_formula for_ctd in
  Camlline_for_formula_duo_top_data_symbol_v.string_off sym_ctd
;;

let longname for_ctd =
  Format.sprintf "Camlline_for_formula_duo_top_data_formula_t.%s" 
    (String.capitalize (name for_ctd))

let fullname for_ctd =
  Format.sprintf "%s \"%s\"" (longname for_ctd) (string_off for_ctd)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ctd soi_cal =
  let tag_ctd = Tag_v.make sym_ctd soi_cal in
  let dec_ctd = 
    Camlline_for_formula_duo_top_data_tag_v.camlline_for_formula_duo_top_data_dectup_off_camlline_for_formula_duo_top_data_tag 
      tag_ctd 
  in

(* BT builders *)

  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_ctd in
  let sym_ent_top = Triplet_v.left_off_triplet tri_ent_top in
  let sym_ent_dat = Tools_fgnr_v.entity_builder_data_symbol_of_entity_tritup tri_ent_top in

  let sym_ent_l = 
    Camlline_for_formula_duo_top_data_interface_v.make sym_ctd sym_ent_top sym_ent_dat 
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_ctd soi_cal =
  let tag_ent_l = build_n_store sym_ctd soi_cal in

  match sym_ctd with 
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function ->
     Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_equal_function tag_ent_l
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal ->
     Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_for_at_equal tag_ent_l
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal ->
     Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_tag_tag_at_equal tag_ent_l
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at ->
     Camlline_for_formula_duo_top_data_formula_t.Ed_tag_list_off_et_formula_for_at tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ctd =
  let soi_gro = Tag_v.sole_index_off_tag tag_ctd in
  let sym_ctd = Tag_v.entity_off_tag tag_ctd in
  make sym_ctd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd =
  match for_ctd with
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_equal_function tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_formula_for_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_data_formula_t.Let_ed_tag_list_off_et_tag_tag_at_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_duo_top_data_formula_t.Ed_tag_list_off_et_formula_for_at tag_ent_l -> tag_ent_l
;;

let entity_tag_list_off_camlline_for_formula_duo_top_data_tag tag_ctd =
  let for_ctd = retrieve tag_ctd in
  entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd
;; 

(** {6 Iterating_for_formula_for_formula_duo_top_data.} *)

let map f_of_tag_ent for_ctd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ctd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ctd_1 for_ctd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ctd_1 for_ctd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_top_data_formula for_ctd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;


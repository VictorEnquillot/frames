(** {3 Camlline_for_formula_duo_main_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_duo_main_data_formula_v";
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

let symbol_of_formula for_cmd =
  match for_cmd with
  | Camlline_for_formula_duo_main_data_formula_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in _ ->
      Camlline_for_formula_duo_main_data_symbol_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in

 | Camlline_for_formula_duo_main_data_formula_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in _ ->
     Camlline_for_formula_duo_main_data_symbol_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in

;;

(** {6 Naming_for_formula} *)

let name for_cmd = 
  let sym_cmd = symbol_of_formula for_cmd in
  Camlline_for_formula_duo_main_data_symbol_v.name sym_cmd
;;
(* ***

let string_off for_cmd =
  let sym_cmd = symbol_of_formula for_cmd in
  Camlline_for_formula_duo_main_data_symbol_v.string_off sym_cmd
;;

let longname for_cmd =
  Format.sprintf "Camlline_for_formula_duo_main_data_formula_t.%s" 
    (String.capitalize (name for_cmd))

let fullname for_cmd =
  Format.sprintf "%s \"%s\"" (longname for_cmd) (string_off for_cmd)
;;
*** *)

(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cmd soi_cal =
  let tag_cmd = Tag_v.make sym_cmd soi_cal in
  let dec_cmd = 
    Camlline_for_formula_duo_main_data_tag_v.camlline_for_formula_duo_main_data_dectup_off_camlline_for_formula_duo_main_data_tag 
      tag_cmd 
  in

(* BT data *)

  let sym_ent_l = 
    Camlline_for_formula_duo_main_data_interface_v.make_of_tuple dec_cmd in

  let soi_ent_l =
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_cmd soi_cal =
  let tag_ent_l = build_n_store sym_cmd soi_cal in
  match sym_cmd with 
  | Camlline_for_formula_duo_main_data_symbol_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in ->
      Camlline_for_formula_duo_main_data_formula_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in tag_ent_l

 | Camlline_for_formula_duo_main_data_symbol_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in ->
     Camlline_for_formula_duo_main_data_formula_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cmd =
  let soi_gro = Tag_v.sole_index_off_tag tag_cmd in
  let sym_cmd = Tag_v.entity_off_tag tag_cmd in
  make sym_cmd soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd =
  match for_cmd with
  | Camlline_for_formula_duo_main_data_formula_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in tag_ent_l
  | Camlline_for_formula_duo_main_data_formula_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_duo_main_data_tag tag_cmd =
  let for_cmd = retrieve tag_cmd in
  entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd
;; 

(** {6 Iterating_for_formula_for_formula_duo_main_data.} *)

let map f_of_tag_ent for_cmd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cmd = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cmd_1 for_cmd_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cmd_1 for_cmd_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_duo_main_data_formula for_cmd_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;


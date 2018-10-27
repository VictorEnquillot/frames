(** {3 Camlline_for_formula_uno_data_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_for_formula_uno_data_formula_v";
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

let symbol_of_formula for_cud =
  match for_cud with
  | Camlline_for_formula_uno_data_formula_t.Double_quote_data _ ->
     Camlline_for_formula_uno_data_symbol_t.Double_quote_data
  | Camlline_for_formula_uno_data_formula_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in _ ->
     Camlline_for_formula_uno_data_symbol_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in
  | Camlline_for_formula_uno_data_formula_t.Let_soi_ad_l_equal _ ->
     Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal
  | Camlline_for_formula_uno_data_formula_t.Let_tag_ad_ll_equal_list_dot_map _ ->
     Camlline_for_formula_uno_data_symbol_t.Let_tag_ad_ll_equal_list_dot_map
  | Camlline_for_formula_uno_data_formula_t.List_dot_flatten_tag_ad_ll _ ->
     Camlline_for_formula_uno_data_symbol_t.List_dot_flatten_tag_ad_ll
  | Camlline_for_formula_uno_data_formula_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l _ ->
     Camlline_for_formula_uno_data_symbol_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l

;;

(** {6 Naming_for_formula} *)

let name for_cud = 
  let sym_cud = symbol_of_formula for_cud in
  Camlline_for_formula_uno_data_symbol_v.name sym_cud
;;
(* ***

let string_off for_cud =
  let sym_cud = symbol_of_formula for_cud in
  Camlline_for_formula_uno_data_symbol_v.string_off sym_cud
;;

let longname for_cud =
  Format.sprintf "Camlline_for_formula_uno_data_formula_t.%s" 
    (String.capitalize (name for_cud))

let fullname for_cud =
  Format.sprintf "%s \"%s\"" (longname for_cud) (string_off for_cud)
;;
*** *)

(** {6 Building_and_storing_basic_sons} *)

let build_n_store sym_cud soi_cal =
  let tag_cud = Tag_v.make sym_cud soi_cal in
  let dec_cud = 
    Camlline_for_formula_uno_data_tag_v.camlline_for_formula_uno_data_dectup_off_camlline_for_formula_uno_data_tag 
      tag_cud 
  in

(* BT builders *)
  
  let sym_ent_l = 
    Camlline_for_formula_uno_data_interface_v.make_of_tuple dec_cud in

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

let make sym_cud soi_cal =
  let tag_ent_l = build_n_store sym_cud soi_cal in
  match sym_cud with 
  | Camlline_for_formula_uno_data_symbol_t.Double_quote_data ->
     Camlline_for_formula_uno_data_formula_t.Double_quote_data tag_ent_l
  | Camlline_for_formula_uno_data_symbol_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in ->
     Camlline_for_formula_uno_data_formula_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in tag_ent_l
  | Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal ->
     Camlline_for_formula_uno_data_formula_t.Let_soi_ad_l_equal tag_ent_l
  | Camlline_for_formula_uno_data_symbol_t.Let_tag_ad_ll_equal_list_dot_map ->
     Camlline_for_formula_uno_data_formula_t.Let_tag_ad_ll_equal_list_dot_map tag_ent_l
  | Camlline_for_formula_uno_data_symbol_t.List_dot_flatten_tag_ad_ll ->
     Camlline_for_formula_uno_data_formula_t.List_dot_flatten_tag_ad_ll tag_ent_l
  | Camlline_for_formula_uno_data_symbol_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l ->
     Camlline_for_formula_uno_data_formula_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_cud =
  let soi_gro = Tag_v.sole_index_off_tag tag_cud in
  let sym_cud = Tag_v.entity_off_tag tag_cud in
  make sym_cud soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud =
  match for_cud with
  | Camlline_for_formula_uno_data_formula_t.Double_quote_data tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_data_formula_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_data_formula_t.Let_soi_ad_l_equal tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_data_formula_t.Let_tag_ad_ll_equal_list_dot_map tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_data_formula_t.List_dot_flatten_tag_ad_ll tag_ent_l -> tag_ent_l
  | Camlline_for_formula_uno_data_formula_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l tag_ent_l -> tag_ent_l

;;

let entity_tag_list_off_camlline_for_formula_uno_data_tag tag_cud =
  let for_cud = retrieve tag_cud in
  entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud
;; 

(** {6 Iterating_for_formula_for_formula_uno_data.} *)

let map f_of_tag_ent for_cud = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_cud = 
  let tag_ent_l = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_cud_1 for_cud_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_cud_1 for_cud_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_for_formula_uno_data_formula for_cud_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;


(** {3 Camlline_for_tag_duo_current_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Camlline_for_tag_duo_current_top_value_v";
   "Needed-by : VGNR:Camlline_uno_function_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

(** {6 Opening} *)

open Tools_vgnr_v;;

(** {6 String_ofing} *)

let string_of sym_ctd soi_cal =
  let nam_fun = "string_of" in

  let tag_ctd = Tag_v.make sym_ctd soi_cal in
  let tag_ent_l = 
    Camlline_for_tag_duo_current_top_formula_v.entity_tag_list_off_camlline_for_tag_duo_current_top_tag 
      tag_ctd 
  in
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_for_tag_duo_current_top_symbol sym_ctd 	
  in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_cur, sym_ent_top) = duo_off_list nam_cod nam_fun sym_cal sym_ent_l in

  match sym_ctd with
  | Camlline_for_tag_duo_current_top_symbol_t.Let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in ->

      Format.sprintf "let tag_%s = Tag_v.make_%s_symbol sym_%s soi_%s in"
       (entity_name sym_ent_cur)  
       (entity_name sym_ent_cur)  
       (abbreviation_argument sym_ent_cur)
       (abbreviation_argument sym_ent_top)

  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at ->

      Format.sprintf "Tag_v.map_left %s_symbol %s_symbol_off_%s_symbol tag_%s"
       (entity_name sym_ent_top)  
       (entity_name sym_ent_cur)  
       (entity_name sym_ent_top)  
       (abbreviation_argument sym_ent_top)

  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac ->

      Format.sprintf "Tag_v.map_left %s_symbol %s_symbol_off_%s_symbol tag_%s"
       (entity_name sym_ent_top)  
       (entity_name sym_ent_top)  
       (entity_name sym_ent_cur)  
       (abbreviation_argument sym_ent_cur)

  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at ->

      Format.sprintf "Tag_v.map_left %s_symbol is_%s_symbol_off_%s_symbol tag_%s"
       (entity_name sym_ent_top)  
       (entity_name sym_ent_cur)  
       (entity_name sym_ent_top)  
       (abbreviation_argument sym_ent_top)
;;
	

(** {6 Making_of_value} *)

let make sym_ctd soi_cal =
  let str = string_of sym_ctd soi_cal in
  match sym_ctd with
  | Camlline_for_tag_duo_current_top_symbol_t.Let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in ->
     Camlline_for_tag_duo_current_top_value_t.Let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in str
  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at ->
     Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at str
  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac ->
     Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac str
  | Camlline_for_tag_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at ->
     Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at str
;;

(** {6 Retrieving} *)

let retrieve tag_ctd =
  let sym_ctd = Tag_v.entity_off_tag tag_ctd in
  let soi_cal = Tag_v.sole_index_off_tag tag_ctd in
  make sym_ctd soi_cal
;;

(** {6 String_offing} *)

let string_off val_ctd =
  match val_ctd with
  | Camlline_for_tag_duo_current_top_value_t.Let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in str -> str 
  | Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at str -> str 
  | Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac str -> str 
  | Camlline_for_tag_duo_current_top_value_t.Tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at str -> str 

;;


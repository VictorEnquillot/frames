(** {3 Camlline_for_formula_uno_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_data_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_data_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_tuple dec_cud =

  let sym_cud = Decuplet_v.left_off_decuplet dec_cud in
  let sym_ent_dat = Tools_ignr_v.entity_builder_data_symbol_of_camlline_dectup dec_cud in

  match sym_cud with
  | Camlline_for_formula_uno_data_symbol_t.Double_quote_data 
  | Camlline_for_formula_uno_data_symbol_t.Let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in
  | Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal
  | Camlline_for_formula_uno_data_symbol_t.Let_tag_ad_ll_equal_list_dot_map
  | Camlline_for_formula_uno_data_symbol_t.List_dot_flatten_tag_ad_ll
  | Camlline_for_formula_uno_data_symbol_t.List_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l ->

      [
       sym_ent_dat
     ]
;;



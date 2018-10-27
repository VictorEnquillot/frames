(** {3 Camlline_for_formula_duo_main_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_main_data_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_main_data_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Data_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dodataset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_tuple dec_cmd =

  let sym_cut = Decuplet_v.left_off_decuplet dec_cmd in
  let sym_ent_mai = Tools_ignr_v.entity_main_symbol_of_camlline_dectup dec_cmd in
  let sym_ent_dat = Tools_ignr_v.entity_builder_data_symbol_of_camlline_dectup dec_cmd in

  match sym_cut with
  | Camlline_for_formula_duo_main_data_symbol_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in 
  | Camlline_for_formula_duo_main_data_symbol_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in ->

      [
       sym_ent_mai;
       sym_ent_dat;
     ]
;;



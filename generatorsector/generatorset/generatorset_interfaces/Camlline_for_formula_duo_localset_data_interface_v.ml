(** {3 Camlline_for_formula_uno_localset_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_uno_localset_data_v";
   "Needed-by : FGNR:Camlline_for_formula_uno_localset_data_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_tuple dec_cdd =

  let tri_ent_top = Decuplet_v.right_triplet_off_decuplet dec_cdd in
  let sym_dom = Decuplet_v.right_off_decuplet dec_cdd in
  let nam_dom = Domain_symbol_v.name sym_dom in
  let sym_ent_dom = Entity_symbol_v.make "entity_proper_with_sons" nam_dom in
  let sym_ent_dat = Tools_ignr_v.entity_builder_data_symbol_of_entity_tritup tri_ent_top in
  let sym_cdd = Decuplet_v.left_off_decuplet dec_cdd in

  match sym_cdd with
  | Camlline_for_formula_duo_localset_data_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_ed_symbol_in 
  | Camlline_for_formula_duo_localset_data_symbol_t.List_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ad_l_dss_ad_l_semicolon ->

      [
       sym_ent_dom;
       sym_ent_dat;
     ]
;;



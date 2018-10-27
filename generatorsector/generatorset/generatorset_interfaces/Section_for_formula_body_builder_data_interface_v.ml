(** {6 Section_for_formula_body_builder_data_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_builder_data_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_builder_data_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
  | Section_for_formula_body_builder_data_symbol_t.Data_formula_list ->
      (* let tag_dat_ll = List.map *)
      (*   Builder_formula_v.data_tag_list_off_builder_formula for_bui_l in  *)
      (* List.flatten tag_dat_ll *)
      
      let sym_gr1 = Group_for_formula_body_builder_data_symbol_v.data_formula_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_builder_data_symbol sym_gr1;
     ]
	
;;

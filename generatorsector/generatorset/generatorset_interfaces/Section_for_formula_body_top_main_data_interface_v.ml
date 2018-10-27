(** {6 Section_for_formula_body_top_main_data_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_top_main_data_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_top_main_data_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
  | Section_for_formula_body_top_main_data_symbol_t.Builder_stem_sole_index_data_list ->

(* Group_for_formula_body_top_data : main_tag_off_top_symbol *)
(* Group_for_formula_body_main_data : builder_stem_symbol_data_list *)
(* Group_for_formula_body_main_data : sole_index_data_list  *)
      
      let sym_gr1 = Group_for_formula_body_top_main_symbol_v.main_tag_off_top_symbol in
      let sym_gr2 = Group_for_formula_body_main_data_symbol_v.builder_stem_symbol_data_list in
      let sym_gr3 = Group_for_formula_body_main_data_symbol_v.sole_index_data_list in

      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_main_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_formula_body_main_data_symbol sym_gr2;
       Group_symbol_v.group_symbol_of_group_for_formula_body_main_data_symbol sym_gr3;
     ]
	
;;

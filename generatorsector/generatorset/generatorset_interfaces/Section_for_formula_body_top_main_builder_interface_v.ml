(** {6 Section_for_formula_body_top_main_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_top_main_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_top_main_builder_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
   | Section_for_formula_body_top_main_builder_symbol_t.Builder_node_sole_index_builder_list ->
(* group_for_formula_body_top_main : main_tag_off_top_symbol *)
(* group_for_formula_body_main_builder : builder_node_symbol_builder_list  *)
(* group_for_formula_body_main_builder : sole_index_builder_list  *)

       let sym_gr1 = Group_for_formula_body_top_main_symbol_v.main_tag_off_top_symbol in
       let sym_gr2 = Group_for_formula_body_main_builder_symbol_v.builder_node_symbol_builder_list in
       let sym_gr3 = Group_for_formula_body_main_builder_symbol_v.sole_index_builder_list in
       [
	Group_symbol_v.group_symbol_of_group_for_formula_body_top_main_symbol sym_gr1;
	Group_symbol_v.group_symbol_of_group_for_formula_body_main_builder_symbol sym_gr2;
	Group_symbol_v.group_symbol_of_group_for_formula_body_main_builder_symbol sym_gr3;
      ]

;;

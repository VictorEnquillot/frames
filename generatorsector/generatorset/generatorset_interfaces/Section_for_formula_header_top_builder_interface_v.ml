(** {6 Section_for_formula_header_top_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_header_top_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_header_top_builder_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_shc =
  let sym_shc = Octuplet_v.left_off_octuplet oct_shc in
  match sym_shc with
  | Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_formula ->
(* group_for_formula_header_top_builder : let_builder_tag_list_off_top_formula  *)
(* let builder_tag_list_off_top_formula = function *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]
	
  | Section_for_formula_header_top_builder_symbol_t.Let_builder_tag_list_off_top_tag ->
(* group_for_formula_header_top_builder : let_builder_tag_list_off_top_tag *)
(* let builder_tag_list_off_top_tag tag_top = *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_tag in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_header_top_builder_symbol_t.Let_iter2_for_formula ->
(* group_for_formula_header_top_builder : let_iter2_for_formula *)
(* let iter2 f_of_tag_bui for_top_1 for_top_2 = *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_iter2_for_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_header_top_builder_symbol_t.Let_iter_for_formula ->
(* group_for_formula_header_top_builder : let_iter_for_formula *)
(* let iter f_of_tag_bui for_top = *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_iter_for_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_header_top_builder_symbol_t.Let_map2_for_formula ->
(* group_for_formula_header_top_builder : let_map2_for_formula *)
(* let map2 f_of_tag_bui for_top_1 for_top_2 = *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_map2_for_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_header_top_builder_symbol_t.Let_map_for_formula ->
(* group_for_formula_header_top_builder : let_map_for_formula *)
(* let map f_of_tag_bui for_top = *)

      let sym_gr1 = Group_for_formula_header_top_builder_symbol_v.let_map_for_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_builder_symbol sym_gr1;
     ]
;;

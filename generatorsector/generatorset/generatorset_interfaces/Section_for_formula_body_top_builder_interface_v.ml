(** {6 Section_for_formula_body_top_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_top_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_top_builder_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_symbol sym_stb =
  match sym_stb with
  | Section_for_formula_body_top_builder_symbol_t.Builder_formula_list ->
  (* let tag_bui_l = builder_tag_list_off_top_formula for_top in *)
  (* let for_bui_l = List.map Builder_formula_v.retrieve tag_bui_l in *)

      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.builder_tag_list in
      let sym_gr2 = Group_for_formula_body_top_builder_symbol_v.builder_formula_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr2;
     ]
	
  | Section_for_formula_body_top_builder_symbol_t.Builder_tag_list_of_tag_for_formula ->
  (* let for_top = retrieve tag_top in *)
  (* builder_tag_list_off_top_formula for_top *)
      
      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.builder_tag_list_of_tag_for_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_body_top_builder_symbol_t.Iter2_on_builder_tag_list ->
      (* let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in *)
      (* let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in *)
      (* List.iter2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2  *)
      
      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.iter2_on_builder_tag_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_body_top_builder_symbol_t.Iter_on_builder_tag_list ->
      (* let tag_bui_l = data_tag_list_off_top_formula for_top in *)
      (* List.iter f_of_tag_bui tag_bui_l *)
      
      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.iter_on_builder_tag_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_body_top_builder_symbol_t.Map2_on_builder_tag_list ->
      (* let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in *)
      (* let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in *)
      (* List.map2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2 *)

      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.map2_on_builder_tag_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
     ]

  | Section_for_formula_body_top_builder_symbol_t.Map_on_builder_tag_list ->
      (* let tag_bui_l = data_tag_list_off_top_formula for_top in *)
      (* List.map f_of_tag_bui tag_bui_l *)
      
      let sym_gr1 = Group_for_formula_body_top_builder_symbol_v.map_on_builder_tag_list in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_body_top_builder_symbol sym_gr1;
     ]
;;

(** {3 Group_for_formula_body_top_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_top_builder_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_top_builder_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_top_builder_symbol_t.Builder_formula_list ->
(*  let for_bui_l = List.map Builder_interface_v.retrieve tag_bui_l in *)

      let sym_ca1 = Camlline_for_formula_uno_builder_symbol_v.let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca1;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Builder_tag_list ->
(*  let tag_bui_l = builder_tag_list_off_top_formula for_top in *)

      let sym_ca1 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca1;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Builder_tag_list_of_tag_for_formula ->
(*  let for_top = retrieve tag_top in *)
(*  builder_tag_list_off_top_formula for_top *)

      let sym_ca1 = Camlline_for_formula_uno_top_symbol_v.let_for_at_equal_retrieve_tag_at_in in
      let sym_ca2 = Camlline_for_formula_duo_top_builder_symbol_v.eb_tag_list_off_et_formula_for_at in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca2;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Iter2_on_builder_tag_list ->
  (* let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in *)
  (* let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in *)
  (* List.iter2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2  *)

      let sym_ca1 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in in
      let sym_ca2 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in in
      let sym_ca3 = Camlline_for_formula_uno_builder_symbol_v.list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca3;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Map2_on_builder_tag_list ->
  (* let tag_bui_l_1 = builder_tag_list_off_top_formula for_top_1 in *)
  (* let tag_bui_l_2 = builder_tag_list_off_top_formula for_top_2 in *)
  (* List.map2 f_of_tag_bui tag_bui_l_1 tag_bui_l_2 *)

      let sym_ca1 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in in
      let sym_ca2 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in in
      let sym_ca3 = Camlline_for_formula_uno_builder_symbol_v.list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca3;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Iter_on_builder_tag_list ->
  (* let tag_bui_l = builder_tag_list_off_top_formula for_top_1 in *)
  (* List.iter f_of_tag_bui tag_bui_l *)

      let sym_ca1 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in in
      let sym_ca2 = Camlline_for_formula_uno_builder_symbol_v.list_dot_iter_f_of_tag_ab_tag_ab_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca2;
     ]

  | Group_for_formula_body_top_builder_symbol_t.Map_on_builder_tag_list ->
  (* let tag_bui_l = builder_tag_list_off_top_formula for_top_1 in *)
  (* List.map f_of_tag_bui tag_bui_l *)

      let sym_ca1 = Camlline_for_formula_duo_top_builder_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in in
      let sym_ca2 = Camlline_for_formula_uno_builder_symbol_v.list_dot_map_f_of_tag_ab_tag_ab_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca2;
     ]

;;

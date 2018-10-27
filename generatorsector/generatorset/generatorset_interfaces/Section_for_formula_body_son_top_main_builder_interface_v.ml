(** {6 Section_for_formula_body_son_top_main_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_son_top_main_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_son_top_main_builder_v";
   "What-is-it : It defines the Son_top_main_builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_son_top_main_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_smb =
  let sym_smb = Octuplet_v.left_off_octuplet oct_smb in
  match sym_smb with
  | Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_bare_for_formula -> 
  (* | Top_symbol_t.Son ->  *)
  (*     let tag_bui_l = build_n_store sym_top soi_mai in *)
  (*     Top_formula_t.Son tag_bui_l *)

  (* | ... repeat *)
      
      let sym_gr1 = Group_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_bare_for_formula in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gr1 in

      Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
        oct_smb
	sym_gro

  | Section_for_formula_body_son_top_main_builder_symbol_t.Make_topson_pattern_ofstring_for_formula -> 
  (* | Top_symbol_t.Son s ->  *)
  (*     let tag_bui_l = build_n_store sym_top soi_mai in *)
  (*     Top_formula_t.Son (s, tag_bui_l) *)

  (* | ... repeat *)
      
      let sym_gr1 = Group_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_ofstring_for_formula in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_top_main_builder_symbol sym_gr1 in

      Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
        oct_smb
	sym_gro

;;

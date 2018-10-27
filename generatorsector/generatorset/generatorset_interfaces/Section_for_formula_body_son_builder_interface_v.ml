(** {6 Section_for_formula_body_son_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_son_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_son_builder_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sbs =
  let sym_sbs = Octuplet_v.left_off_octuplet oct_sbs in
  match sym_sbs with
  | Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_constructors ->
      (*  | Son of Builder_tag_t.builder_tag list *)
      (*    ... repeat *)      

      let sym_gr1 = Group_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_bare_one_constructor  in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_builder_symbol sym_gr1 in      
      Tools_ignr_v.topson_bare_symbol_repeated_list_of_octtup_of_group_symbol 
        oct_sbs 
	sym_gro
	
  | Section_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_constructors ->
      (*  | Son of (string, Builder_tag_t.builder_tag list) *)
      (*    ... repeat *)      

      let sym_gr1 = Group_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_ofstring_one_constructor in
      let sym_gro = Group_symbol_v.group_symbol_of_group_for_formula_body_son_builder_symbol sym_gr1 in
      Tools_ignr_v.topson_ofstring_symbol_repeated_list_of_octtup_of_group_symbol 
        oct_sbs 
	sym_gro
;;

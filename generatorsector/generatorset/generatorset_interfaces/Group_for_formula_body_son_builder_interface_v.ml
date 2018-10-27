(** {3 Group_for_formula_body_son_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_son_builder_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_son_builder_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_iii =
  match sym_iii with
  | Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_bare_one_constructor ->
(* | Son of Builder_tag_t.builder_tag_l *)

      let sym_ca1 = Camlline_for_formula_duo_son_builder_symbol_v.pipe_es_constructor_of_eb_tag_tdot_eb_tag_list in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_ca1
     ]
	
  | Group_for_formula_body_son_builder_symbol_t.Pipe_topson_formula_type_ofstring_one_constructor ->
(* | Son of (string, Builder_tag_t.builder_tag_l) *)

      let sym_ca1 = Camlline_for_formula_duo_son_builder_symbol_v.pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_ca1
     ]
	
;;



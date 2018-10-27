(** {3 Group_for_formula_body_builder_alone_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_builder_alone_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_builder_alone_interface_v";
   "What-is-it : It defines the Builder_alone_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilder_aloneset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gbd =
  match sym_gbd with
  | Group_for_formula_body_builder_alone_symbol_t.Make_builder_tag_list ->
   (*  List.map2 Tag_v.make sym_bui_l soi_bui_l *)
	
      let sym_ca1 = Camlline_for_formula_uno_builder_symbol_v.list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_ca1;
     ]
;;


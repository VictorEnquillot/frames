(** {6 Section_for_formula_body_localset_builder_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_localset_builder_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_localset_builder_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from domain_builderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sdb =
  let sym_sdb = Octuplet_v.left_off_octuplet oct_sdb in
  match sym_sdb with
   | Section_for_formula_body_localset_builder_symbol_t.Builder_tag_list ->

(* group_for_formula_body_localset_builder : localset_symbol_builder_list *)
(* group_for_formula_body_localset_builder : store_builder_tag_list *)
(* group_for_formula_body_builder_alone : make_builder_tag_list *)

       let sym_gr1 = Group_for_formula_body_localset_builder_symbol_v.localset_symbol_builder_list in
       let sym_gr2 = Group_for_formula_body_localset_builder_symbol_v.store_builder_tag_list in
       let sym_gr3 = Group_for_formula_body_builder_alone_symbol_v.make_builder_tag_list in
       [
	Group_symbol_v.group_symbol_of_group_for_formula_body_localset_builder_symbol sym_gr1;
	Group_symbol_v.group_symbol_of_group_for_formula_body_localset_builder_symbol sym_gr2;
	Group_symbol_v.group_symbol_of_group_for_formula_body_builder_alone_symbol sym_gr3;
      ]

;;

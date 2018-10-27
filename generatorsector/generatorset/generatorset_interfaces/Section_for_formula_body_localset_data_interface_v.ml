(** {6 Section_for_formula_body_localset_data_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_formula_body_localset_data_interface_v";
   "Needed-by : FGNR:Section_for_formula_body_localset_data_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make_of_tuple oct_sdb =
  let sym_sdb = Octuplet_v.left_off_octuplet oct_sdb in
  match sym_sdb with
   | Section_for_formula_body_localset_data_symbol_t.Data_tag_list ->
(* group_for_formula_body_data_alone : make_data_tag_list *)

       let sym_gr1 = Group_for_formula_body_data_alone_symbol_v.make_data_tag_list in
       [
	Group_symbol_v.group_symbol_of_group_for_formula_body_data_alone_symbol sym_gr1;
      ]

;;

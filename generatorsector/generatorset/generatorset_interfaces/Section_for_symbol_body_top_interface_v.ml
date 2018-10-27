(** {6 Section_for_symbol_body_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_body_top_interface_v";
   "Needed-by : FGNR:Section_for_symbol_body_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make sym_sbs =
    match sym_sbs with
  | Section_for_symbol_body_top_symbol_t.Documentation_list_for_symbol ->

      let sym_gr1 = Group_for_symbol_body_top_symbol_v.documentation_list_for_symbol in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_top_symbol sym_gr1;
     ]
	
;;


(** {3 Section_for_symbol_header_current_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_header_current_interface_v";
   "Needed-by : FGNR:Section_for_symbol_header_current_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_sst =
  match sym_sst with 
  | Section_for_symbol_header_current_symbol_t.Let_is_grandson_bare ->
      
      let sym_gr1 = Group_for_symbol_header_current_symbol_v.let_is_grandson_bare in
      
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_symbol sym_gr1;
     ]
	
  | Section_for_symbol_header_current_symbol_t.Let_is_grandson_ofstring ->
       
      let sym_gr1 = Group_for_symbol_header_current_symbol_v.let_is_grandson_ofstring in
      
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_symbol sym_gr1;
     ]

  | Section_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_bare ->
      
      let sym_gr1 = Group_for_symbol_header_current_symbol_v.let_abbreviate_grandson_bare in
      
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_symbol sym_gr1;
     ]
	
 | Section_for_symbol_header_current_symbol_t.Let_abbreviate_grandson_ofstring ->
       
      let sym_gr1 = Group_for_symbol_header_current_symbol_v.let_abbreviate_grandson_ofstring in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_symbol sym_gr1;
     ]
;;

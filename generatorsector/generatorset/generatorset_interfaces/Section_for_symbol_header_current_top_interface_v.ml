(** {3 Section_for_symbol_header_current_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_header_current_top_interface_v";
   "Needed-by : FGNR:Section_for_symbol_header_current_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_sst =
  match sym_sst with 
  | Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal ->
       
      let sym_gr1 = Group_for_symbol_header_current_top_symbol_v.let_grandson_notleaf_symbol_off_top_symbol_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal ->
       
      let sym_gr1 = Group_for_symbol_header_current_top_symbol_v.let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gr1;
     ]
 
 | Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal ->
     (* "let geometryset_symbol_of_triangle_isoceles_symbol sym_tis ="; *)
     
      let sym_gr1 = Group_for_symbol_header_current_top_symbol_v.let_top_symbol_of_grandson_notleaf_symbol_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare ->
       
      let sym_gr1 = Group_for_symbol_header_current_top_symbol_v.let_is_grandson_bare in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gr1;
     ]
 
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring ->
       
      let sym_gr1 = Group_for_symbol_header_current_top_symbol_v.let_is_grandson_ofstring in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_current_top_symbol sym_gr1;
     ]
 
;;

(** {3 Camlparagraph_for_symbol_let_mixed_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_symbol_let_mixed_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_symbol_let_mixed_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_clm = 
  match sym_clm with
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_fullname_argument_equal_function_for_symbol
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_make_argument_equal_function_for_symbol
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_name_argument_equal_function_for_symbol
  | Camlparagraph_for_symbol_let_mixed_symbol_t.Let_symbol_list_argument_equal_function_for_symbol ->
      
      Utilities_v.not_yet_implemented nam_cod "make"
;;


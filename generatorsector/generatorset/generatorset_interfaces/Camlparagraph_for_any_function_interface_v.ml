(** {3 Camlparagraph_for_any_comment_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_any_function_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_any_function_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_caf = 
  match sym_caf with
  | Camlparagraph_for_any_function_symbol_t.Let_nam_cod_equal -> 
      let sym_hea = Section_for_any_header_constant_symbol_v.let_nam_cod_equal in
      
      [
       Section_symbol_v.section_symbol_of_section_for_any_header_constant_symbol sym_hea;
     ]

;;

(** {3 Group_for_formula_header_constant_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_header_constant_interface_v";
   "Needed-by : FGNR:Group_for_formula_header_constant_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_iii =
  match sym_iii with
  | Group_for_formula_header_constant_symbol_t.Let_symbol_of_formula_equal_function ->
(* let symbol_of_formula = function *)

      let sym_ca1 = Camlline_constant_function_symbol_v.let_symbol_of_formula_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]
;;



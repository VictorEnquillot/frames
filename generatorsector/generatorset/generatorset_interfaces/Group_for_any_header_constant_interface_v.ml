(** {3 Group_for_any_header_constant_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_header_constant_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_header_constant_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbt =
  match sym_gbt with 
  | Group_for_any_header_constant_symbol_t.Let_documentation ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_documentation_unit_equal in 
     [ 
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_any_header_constant_symbol_t.Let_nam_cod_equal ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_nam_cod_equal in 
     [ 
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_any_header_constant_symbol_t.Type_et_any_equal ->
      let sym_ca1 = Camlline_for_any_uno_camltype_symbol_v.type_et_any_equal in 
     [ 
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_symbol sym_ca1;
     ]
;;


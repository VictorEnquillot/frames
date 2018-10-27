(** {6 Section_for_any_header_constant_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_any_header_constant_interface_v";
   "Needed-by : FGNR:Section_for_any_header_constant_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is a Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make sym_shc = 
  match sym_shc with 
  | Section_for_any_header_constant_symbol_t.Let_documentation ->	

      let sym_gr1 = Group_for_any_header_constant_symbol_v.let_documentation in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_constant_symbol sym_gr1;
     ]

  | Section_for_any_header_constant_symbol_t.Let_nam_cod_equal ->

      let sym_gr1 = Group_for_any_header_constant_symbol_v.let_nam_cod_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_constant_symbol sym_gr1;
     ]
	
  | Section_for_any_header_constant_symbol_t.Type_et_any_equal ->

      let sym_gr1 = Group_for_any_header_constant_symbol_v.type_et_any_equal in
      [
       Group_symbol_v.group_symbol_of_group_for_any_header_constant_symbol sym_gr1
     ]
;;


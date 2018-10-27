(** {3 Section_for_symbol_header_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Group_symbol";  
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_header_top_group_symbol_datastructure_v";
   "Needed-by : FGNR:Section_for_symbol_header_top_v";
   "What-is-it : It defines the Group_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Group_symbol Datastructure} *)

let make sym_shc =
  match sym_shc with 
  | Section_for_symbol_header_top_symbol_t.Let_fullname_argument_equal ->
(* let fullname sym_enp = *)
      let sym_ght = Group_for_symbol_header_top_symbol_v.let_fullname_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_top_symbol sym_ght;
     ]

  | Section_for_symbol_header_top_symbol_t.Let_longname_argument_equal ->
(* let longname sym_enp = *)
      let sym_ght = Group_for_symbol_header_top_symbol_v.let_longname_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_top_symbol sym_ght;
     ]

  | Section_for_symbol_header_top_symbol_t.Let_name_argument_equal ->
      let sym_gr1 = Group_for_symbol_header_top_symbol_v.let_name_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_top_symbol_t.Let_string_off_argument_equal ->
      let sym_gr1 = Group_for_symbol_header_top_symbol_v.let_string_off_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_top_symbol sym_gr1;
     ]

;;


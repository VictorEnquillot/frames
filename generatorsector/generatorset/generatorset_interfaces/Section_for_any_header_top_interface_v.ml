(** {6 Section_for_any_header_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_any_header_top_interface_v";
   "Needed-by : FGNR:Section_for_any_header_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is a Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make sym_shc = 
  match sym_shc with 
  | Section_for_any_header_top_symbol_t.Camlfile_title ->	

      let sym_gr1 = Group_for_any_header_top_symbol_v.camlfile_title in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

  | Section_for_any_header_top_symbol_t.Item_title ->	

      let sym_gr1 = Group_for_any_header_top_symbol_v.item_title in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

  | Section_for_any_header_top_symbol_t.Let_name_argument_equal ->

      let sym_gr1 = Group_for_any_header_top_symbol_v.let_name_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

  | Section_for_any_header_top_symbol_t.Let_longname_argument_equal ->

      let sym_gr1 = Group_for_any_header_top_symbol_v.let_longname_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

  | Section_for_any_header_top_symbol_t.Let_fullname_argument_equal ->

      let sym_gr1 = Group_for_any_header_top_symbol_v.let_fullname_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

  | Section_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal ->

      let sym_gr1 = Group_for_any_header_top_symbol_v.let_retrieve_tag_top_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]

 | Section_for_any_header_top_symbol_t.Let_string_off_argument_equal ->

      let sym_gr1 = Group_for_any_header_top_symbol_v.let_string_off_argument_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_any_header_top_symbol sym_gr1;
     ]
;;


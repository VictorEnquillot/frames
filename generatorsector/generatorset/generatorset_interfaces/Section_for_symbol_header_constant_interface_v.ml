(** {3 Section_for_symbol_header_constant_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_header_constant_interface_v";
   "Needed-by : FGNR:Section_for_symbol_header_constant_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_shc =
  match sym_shc with 
  | Section_for_symbol_header_constant_symbol_t.Let_make_equal_function ->
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_make_equal_function in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> 
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_make_nam_s_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> 

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_make_of_topson_bare_nam_equal in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> 
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_make_of_topson_ofstring_nam_s_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> 
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_make_of_topson_notleaf_nam_s_equal in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_name_equal_function ->
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_name_equal_function in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_name_of_topson_bare_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_name_of_topson_notleaf_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_name_of_topson_ofstring_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_equal_function ->
      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_string_off_equal_function in

      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_bare_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_notleaf_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function ->

      let sym_gr1 = Group_for_symbol_header_constant_symbol_v.let_string_off_of_topson_ofstring_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_constant_symbol sym_gr1;
     ]

;;

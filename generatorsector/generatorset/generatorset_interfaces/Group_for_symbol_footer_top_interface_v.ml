(** {3 Group_for_symbol_footer_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_symbol_footer_top_interface_v";
   "Needed-by : FGNR:Group_for_symbol_footer_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gft sym_ent_top =
  match sym_gft with 
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_make in
      let sym_ca2 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca2;
     ]
	

  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_make_et_of_string_of_string in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_make in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]


  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_name_et_of_string_of_string in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_name in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]


  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.let_underscore_print_error_string_off_et_of_string_of_string in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_et_symbol_string_off in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_make in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_make in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_make in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_string_off in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_string_off in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_string_off in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]


  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_bare_et_symbol_name in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_notleaf_et_symbol_name in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name ->

      let sym_ca1 = Camlline_constant_function_symbol_v.pipe_underscore_arrow in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.failwith_not_a_topson_ofstring_et_symbol_name in
      let sym_ca3 = Camlline_constant_pervasive_symbol_v.double_semicolon in

      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca3;
     ]

  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_make_et_of_string_of_string in
      let sym_ca2 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca2;
     ]

  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_name_et_of_string_of_string in
      let sym_ca2 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca2;
     ]

  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off ->

      let sym_ca1 = Camlline_for_symbol_uno_top_symbol_v.print_fatal_error_string_off_et_of_string_of_string in
      let sym_ca2 = Camlline_constant_pervasive_symbol_v.double_semicolon in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca2;
     ]

;;

(** {3 Group_for_symbol_body_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_symbol_body_top_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_symbol_body_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_ghc = 
  match sym_ghc with
  | Group_for_symbol_header_constant_symbol_t.Let_make_equal_function -> 
      [
       Camlline_symbol_v.let_make_equal_function;
     ]
        
  | Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> 
      [
       Camlline_symbol_v.let_make_nam_s_equal
     ]
        
  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_bare_nam_equal -> 
      [
       Camlline_symbol_v.let_make_of_topson_bare_nam_equal;
       Camlline_symbol_v.let_nam_low_equal_string_lowercase_nam_in;
       Camlline_symbol_v.match_nam_low_with;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal -> 
      [
       Camlline_symbol_v.let_make_of_topson_ofstring_nam_s_equal;
       Camlline_symbol_v.let_nam_low_equal_string_lowercase_nam_in;
       Camlline_symbol_v.match_nam_low_with;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal ->
      [
       Camlline_symbol_v.let_make_of_topson_notleaf_nam_s_equal;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_name_equal_function -> 

      [
       Camlline_symbol_v.let_name_equal_function;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_bare_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_name_of_topson_bare_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_notleaf_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_name_of_topson_notleaf_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_name_of_topson_ofstring_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_name_of_topson_ofstring_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_string_off_equal_function ->
      [
       Camlline_symbol_v.let_string_off_equal_function;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_bare_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_string_off_of_topson_bare_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_notleaf_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_string_off_of_topson_notleaf_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

  | Group_for_symbol_header_constant_symbol_t.Let_string_off_of_topson_ofstring_equal_function ->

      let sym_ca1 = Camlline_constant_function_symbol_v.let_string_off_of_topson_ofstring_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_constant_function_symbol sym_ca1;
     ]

;;

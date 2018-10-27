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

let make oct_shc soi_sec =
  let sym_shc = Octuplet_v.left_off_octuplet oct_shc in
  match sym_shc with 
  | Section_for_symbol_header_constant_symbol_t.Let_make_equal_function ->
      [
       Group_symbol_v.let_make_equal_function;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_name_equal_function ->
      [
       Group_symbol_v.let_name_equal_function;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal -> 
      [
       Group_symbol_v.let_make_nam_s_equal;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal -> 
      [
       Group_symbol_v.let_make_of_topson_leaf_nam_s_equal;
     ]

  | Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_notleaf_nam_s_equal -> 
      [
       Group_symbol_v.let_make_of_topson_notleaf_nam_s_equal;
     ]
;;


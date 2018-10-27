(** {3 Group_for_formula_body_top_alone_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_top_alone_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_top_alone_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gta =
  match sym_gta with
  | Group_for_formula_body_top_alone_symbol_t.Symbol_of_formula_in_name_top ->
(* let sym_top = symbol_of_formula for_top in *)
(* Top_symbol_v.name sym_top *)

      let sym_ca1 = Camlline_for_formula_uno_top_symbol_v.let_sym_at_equal_symbol_of_formula_for_at_in in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.et_symbol_vdot_name_sym_at in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
     ]

  | Group_for_formula_body_top_alone_symbol_t.Symbol_of_formula_in_string_off_top ->
(*  let sym_top = symbol_of_formula for_top in *)
(*  Top_symbol_v.string_off sym_top *)

      let sym_ca1 = Camlline_for_formula_uno_top_symbol_v.let_sym_at_equal_symbol_of_formula_for_at_in in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.et_symbol_vdot_string_off_sym_at in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
     ]

;;


(** {3 Group_for_formula_header_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_header_top_main_interface_v";
   "Needed-by : FGNR:Group_for_formula_header_top_main_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gtm =
  match sym_gtm with
  | Group_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons
  | Group_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons ->
(* let build_n_store sym_top soi_mai = *)

      let sym_ca1 = Camlline_for_any_duo_top_main_symbol_v.let_build_n_store_sym_at_soi_am_equal in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_top_main_symbol sym_ca1;
     ]
	
  | Group_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with ->
(* let make sym_top soi_am = *)
(*   match sym_top with *)

      let sym_ca1 = Camlline_for_any_duo_top_main_symbol_v.let_make_sym_at_soi_am_equal in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.match_sym_at_with in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_top_main_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
     ]
;;



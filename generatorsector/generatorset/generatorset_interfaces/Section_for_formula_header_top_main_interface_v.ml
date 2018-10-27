(** {3 Section_for_formula_header_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Section_for_formula_header_top_main_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Section_for_formula_header_top_main_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_symbol sym_stm =
  match sym_stm with
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons ->
(* section_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* group_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* let build_n_store sym_top soi_mai = *)

      let sym_gr1 = Group_for_formula_header_top_main_symbol_v.let_build_n_store_basic_sons in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_main_symbol sym_gr1;
     ]
	
  | Section_for_formula_header_top_main_symbol_t.Let_build_n_store_proper_sons ->
(* section_for_formula_header_top_main : let_build_n_store_proper_sons  *)
(* group_for_formula_header_top_main : let_build_n_store_proper_sons  *)
(* let build_n_store sym_top soi_mai = *)

      let sym_gr1 = Group_for_formula_header_top_main_symbol_v.let_build_n_store_proper_sons in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_main_symbol sym_gr1;
     ]
	
  | Section_for_formula_header_top_main_symbol_t.Let_make_arguments_equal_match_with->
(* section_for_formula_header_top_main : let_make_arguments_equal_match_with  *)
(* group_for_formula_header_top_main : let_make_arguments_equal_match_with  *)
(* let make sym_top soi_mai = *)
(*   match sym_top with *) 

      let sym_gr1 = Group_for_formula_header_top_main_symbol_v.let_make_arguments_equal_match_with in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_main_symbol sym_gr1;
     ]
	
;;



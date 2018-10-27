(** {3 Group_for_formula_header_top_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_header_top_data_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_formula_header_top_data_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_iii =
  match sym_iii with
  | Group_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_formula ->
(* let data_tag_list_off_top_formula = function *)

      let sym_ca1 = Camlline_for_formula_duo_top_data_symbol_v.let_ed_tag_list_off_et_formula_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_data_symbol sym_ca1;
     ]
	
  | Group_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_tag ->
(* let data_tag_list_off_top_tag tag_top = *)

      let sym_ca1 = Camlline_for_formula_duo_top_data_symbol_v.let_ed_tag_list_off_et_tag_tag_at_equal in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_data_symbol sym_ca1;
     ]
;;



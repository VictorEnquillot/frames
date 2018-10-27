(** {3 Section_for_formula_header_top_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Section_for_formula_header_top_data_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Section_for_formula_header_top_data_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dodataset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_std =
  match sym_std with
  | Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_formula ->
(* section_for_formula_header_top_data : let_data_tag_list_off_top_formula  *)
(* group_for_formula_header_top_data : let_data_tag_list_off_top_formula  *)

      let sym_gr1 = Group_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_formula in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_data_symbol sym_gr1;
     ]
	
  | Section_for_formula_header_top_data_symbol_t.Let_data_tag_list_off_top_tag->
(* section_for_formula_header_top_data : let_data_tag_list_off_top_tag  *)
(* group_for_formula_header_top_data : let_data_tag_list_off_top_tag  *)

      let sym_gr1 = Group_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_tag in
      [
       Group_symbol_v.group_symbol_of_group_for_formula_header_top_data_symbol sym_gr1;
     ]
	
;;



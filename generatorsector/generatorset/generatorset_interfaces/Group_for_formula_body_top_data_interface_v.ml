(** {3 Group_for_formula_body_top_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_top_data_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_top_data_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_top_data_symbol_t.Data_tag_list_of_tag_for_formula ->
(*  let for_top = retrieve tag_top in *)
(*  data_tag_list_off_top_formula for_top *)

      let sym_ca1 = Camlline_for_formula_uno_top_symbol_v.let_for_at_equal_retrieve_tag_at_in in
      let sym_ca2 = Camlline_for_formula_duo_top_data_symbol_v.ed_tag_list_off_et_formula_for_at in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_data_symbol sym_ca2;
    ]
;;


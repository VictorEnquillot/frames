(** {3 Camlline_for_formula_duo_top_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_top_data_interface_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_top_data_formula_v";
   "Datas : Camlline_symbol";  
   "What-is-it : It defines the Data_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
   "Improve : has been simplified";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_ctd sym_ent_top sym_ent_dat =
  match sym_ctd with
  | Camlline_for_formula_duo_top_data_symbol_t.Ed_tag_list_off_et_formula_for_at 
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_equal_function
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_formula_for_at_equal
  | Camlline_for_formula_duo_top_data_symbol_t.Let_ed_tag_list_off_et_tag_tag_at_equal ->
      [
       sym_ent_top;
       sym_ent_dat; 
     ]
;;



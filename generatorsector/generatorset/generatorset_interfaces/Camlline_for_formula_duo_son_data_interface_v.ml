(** {3 Camlline_for_formula_duo_son_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_son_data_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_son_data_v";
   "Datas : Camlline_symbol";  
   "What-is-it : It defines the Data_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dodataset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_duo sym_cut sym_ent_son sym_ent_dat =
  match sym_cut with
  | Camlline_for_formula_duo_son_data_symbol_t.Es_formula_vdot_ed_tag_list_off_es_formula_for_as
  | Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_ed_tag_tdot_ed_tag_list 
  | Camlline_for_formula_duo_son_data_symbol_t.Pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list ->

      [
       sym_ent_son;
       sym_ent_dat;
     ]
;;



(** {3 Camlline_for_formula_trio_son_builder_data_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_trio_son_builder_data_interface_v";
   "Data : IGNR:Camlline_for_formula_trio_son_builder_data_v";
   "Needed-by : FGNR:Camlline_for_formula_trio_son_builder_data_v";
   "Datas : Camlline_symbol";  
   "What-is-it : It defines the Data_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_duo sym_cbd sym_ent_bui sym_ent_dat =
  match sym_cbd with
  | Camlline_for_formula_duo_builder_data_symbol_t.Eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in ->

      [
       sym_ent_bui;
       sym_ent_dat; 
     ]
;;



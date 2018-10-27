(** {3 Camlline_for_formula_duo_current_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_duo_current_top_v";
   "Needed-by : FGNR:Camlline_for_formula_duo_current_top_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from dotopset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_duo sym_cct sym_ent_cur sym_ent_top =
  match sym_cct with
  | Camlline_for_formula_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at
  | Camlline_for_formula_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac
  | Camlline_for_formula_duo_current_top_symbol_t.Tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at ->

      [
       sym_ent_cur;
       sym_ent_top;
     ]
;;



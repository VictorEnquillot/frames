(** {3 Group_for_formula_body_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_formula_body_top_main_interface_v";
   "Needed-by : FGNR:Group_for_formula_body_top_main_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from dobuilderset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_gst =
  match sym_gst with
  | Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol ->

(* let sym_mai = Main_symbol_v.main_symbol_of_top_symbol sym_top in *)
(* let tag_mai = Tag_v.make sym_mai soi_mai in *)

      let sym_ca1 = Camlline_for_formula_duo_top_main_symbol_v.let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in in
      let sym_ca2 = Camlline_for_formula_uno_main_symbol_v.let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_duo_top_main_symbol sym_ca1;
       Camlline_symbol_v.camlline_symbol_of_camlline_for_formula_uno_main_symbol sym_ca2;
     ]
;;


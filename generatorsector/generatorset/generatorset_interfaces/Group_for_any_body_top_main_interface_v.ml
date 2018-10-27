(** {3 Group_for_any_body_top_main_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_body_top_main_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_body_top_main_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbt = 
  match sym_gbt with 
  | Group_for_any_body_top_main_symbol_t.Make_tag_top ->
      (* let soi_am = Tag_v.sole_index_off_tag tag_top in *)
      (* let sym_top = Tag_v.symbol_off_tag tag_top in *)
      (* make sym_top soi_am  *)
      
      let sym_ca1 = Camlline_for_any_duo_top_main_symbol_v.let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in in
      let sym_ca2 = Camlline_for_symbol_uno_top_symbol_v.let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in in
      let sym_ca3 = Camlline_for_any_duo_top_main_symbol_v.make_sym_at_soi_am in
      [ 
	Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_top_main_symbol sym_ca1;
	Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_ca2;
	Camlline_symbol_v.camlline_symbol_of_camlline_for_any_duo_top_main_symbol sym_ca3;
      ]
;;


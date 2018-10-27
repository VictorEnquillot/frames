(** {3 Camlline_for_formula_trio_top_main_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_trio_top_main_builder_v";
   "Needed-by : FGNR:Camlline_for_formula_trio_top_main_builder_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make sym_cmb sym_ent_top sym_ent_mai sym_ent_bui =
  match sym_cmb with
  | Camlline_for_formula_trio_top_main_builder_symbol_t.Let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in ->

      [
       sym_ent_top;
	sym_ent_mai;
	sym_ent_bui;
     ]
;;



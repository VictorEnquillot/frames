(** {3 Camlline_for_formula_trio_son_top_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_formula_trio_son_top_builder_v";
   "Needed-by : FGNR:Camlline_for_formula_trio_son_top_builder_v";
   "Builders : Camlline_symbol";  
   "What-is-it : It defines the Builder_symbol Datastructure for Leaf Entities"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interfacing} *)

let make_of_son_top_builder sym_cut sym_ent_son sym_ent_top sym_ent_bui =
  match sym_cut with
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Et_formula_tdot_es_tag_ab_l
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l
  | Camlline_for_formula_trio_son_top_builder_symbol_t.Pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l ->

      [
       sym_ent_son;
       sym_ent_top;
       sym_ent_bui; 
     ]
;;



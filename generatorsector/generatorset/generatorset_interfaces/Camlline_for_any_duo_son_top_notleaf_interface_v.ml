(** {3 Camlline_for_any_duo_son_top_notleaf_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_duo_son_top_notleaf_interface_v";
   "Needed-by : FGNR:Camlline_for_any_duo_son_top_notleaf_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cdf sym_ent_son sym_ent_top =
  match sym_cdf with
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.If_not_is_es_any_off_et_any_ac_at
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_ac_as_equal_es_any_off_et_any_ac_at_in
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_et_any_of_es_any_ac_as_equal
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_is_es_any_off_et_any_equal_function
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_tdot_es_any_ac_as
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_ac_as_arrow_ac_as
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_arrow
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_et_any_tdot_es_any_underscore_arrow_true
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Pipe_print_fatal_error_es_any_off_et_any_4_lines
  | Camlline_for_any_duo_son_top_notleaf_symbol_t.Et_any_of_es_any_ac_as ->

      [
       sym_ent_son; 
       sym_ent_top;
     ] 
;;

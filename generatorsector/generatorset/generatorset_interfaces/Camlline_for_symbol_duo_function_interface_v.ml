(** {3 Camlline_for_symbol_duo_function_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_duo_function_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_duo_function_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cdf sym_ent_cur sym_ent_top =
  match sym_cdf with
  | Camlline_for_symbol_duo_function_symbol_t.Let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es
  | Camlline_for_symbol_duo_function_symbol_t.Let_es_equal_et_symbol_tdot_es
  | Camlline_for_symbol_duo_function_symbol_t.Let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg
  | Camlline_for_symbol_duo_function_symbol_t.Pipe_ecstring_arrow_et_symbol_tdot_ec_equal_string
  | Camlline_for_symbol_duo_function_symbol_t.Pipe_et_symbol_tdot_es_arrow
  | Camlline_for_symbol_duo_function_symbol_t.Pipe_et_symbol_tdot_es_arrow_string
  | Camlline_for_symbol_duo_function_symbol_t.Pipe_et_symbol_tdot_es_sarg_arrow
  | Camlline_for_symbol_duo_function_symbol_t.Pipe_et_symbol_tdot_es_symbol_underscore_arrow_string
  | Camlline_for_symbol_duo_function_symbol_t.Es_symbol_vdot_name_sym_as
  | Camlline_for_symbol_duo_function_symbol_t.Et_symbol_of_es_symbol_sym_as
  | Camlline_for_symbol_duo_function_symbol_t.Es_symbol_vdot_string_off_sym_as
  | Camlline_for_symbol_duo_function_symbol_t.Et_symbol_tdot_es_symbol_sym_as
  | Camlline_for_symbol_duo_function_symbol_t.Let_sym_at_equal_et_symbol_vdot_es_in
  | Camlline_for_symbol_duo_function_symbol_t.Try_et_symbol_of_es_symbol ->

      [
       sym_ent_cur; 
       sym_ent_top;
     ] 
	
;;

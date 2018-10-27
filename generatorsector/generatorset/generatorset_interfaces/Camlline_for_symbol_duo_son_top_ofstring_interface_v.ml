(** {3 Camlline_for_symbol_duo_son_top_ofstring_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_duo_son_top_ofstring_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_duo_son_top_ofstring_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cst sym_ent_son sym_ent_top =
  match sym_cst with
  | Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Et_symbol_tdot_es_sarg
  | Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Let_es_sarg_equal_et_symbol_tdot_es_sarg
  | Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Pipe_et_symbol_tdot_es_sarg_arrow
  | Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Pipe_et_symbol_tdot_es_sarg_arrow_sarg 
  | Camlline_for_symbol_duo_son_top_ofstring_symbol_t.Pipe_et_symbol_tdot_es_underscore_arrow_string ->
    [
       sym_ent_son; 
       sym_ent_top;
     ] 
	
;;

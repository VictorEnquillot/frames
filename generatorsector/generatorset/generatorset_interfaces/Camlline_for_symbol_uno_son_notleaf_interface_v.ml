(** {3 Camlline_for_symbol_uno_son_notleaf_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_uno_son_notleaf_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_uno_son_notleaf_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_csn sym_ent_son =
  match sym_csn with
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Lpar_es_symbol_vdot_make_of_string_of_string_rpar 
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_name_sym_as
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Es_symbol_vdot_string_off_sym_as
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.Failwith_not_es_symbol
  | Camlline_for_symbol_uno_son_notleaf_symbol_t.With_failure_not_es_symbol_arrow ->

      [
       sym_ent_son;
     ]
;;

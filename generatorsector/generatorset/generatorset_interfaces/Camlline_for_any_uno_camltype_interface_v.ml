(** {3 Camlline_for_any_uno_camltype_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_camltype_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_camltype_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cuc sym_ent_cur sym_ent_top =
  match sym_cuc with
(* Es *)
  | Camlline_for_any_uno_camltype_symbol_t.Pipe_es_equal_of_equal_string ->

      [
       sym_ent_cur; 
     ]

(* Et *)
  | Camlline_for_any_uno_camltype_symbol_t.Pipe_et_any_constructor_of_et_any_tdot_et_any
  | Camlline_for_any_uno_camltype_symbol_t.Type_et_any_equal
  | Camlline_for_any_uno_camltype_symbol_t.Type_et_any_equal_et
  | Camlline_for_any_uno_camltype_symbol_t.Type_et_any_equal_private ->

      [
       sym_ent_top; 
     ]

;;

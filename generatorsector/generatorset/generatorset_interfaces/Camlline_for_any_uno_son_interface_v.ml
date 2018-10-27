(** {3 Camlline_for_any_uno_son_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_son_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_son_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cfa sym_ent_son =
  match sym_cfa with
  | Camlline_for_any_uno_son_symbol_t.Comment_es_comment
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_fullname_ac_as
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_longname_ac_as
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_make_ac_as
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_name_ac_as
  | Camlline_for_any_uno_son_symbol_t.Es_any_vdot_string_off_ac_as
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_fullname_ac_as_string_off_ac_as
  | Camlline_for_any_uno_son_symbol_t.Format_sprintf_longname_es_tdot_string_capitalize_name_ac_as
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_any_equal_function
  | Camlline_for_any_uno_son_symbol_t.Let_is_es_equal_function
  | Camlline_for_any_uno_son_symbol_t.Pipe_datastructure_ac_as_arrow ->

      [
       sym_ent_son;
     ]
;;

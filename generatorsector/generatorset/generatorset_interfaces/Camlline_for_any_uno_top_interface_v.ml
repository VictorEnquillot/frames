(** {3 Camlline_for_any_uno_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_top_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_top_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cfa sym_ent_top =
  match sym_cfa with
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current 
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring ->
      
      [
       sym_ent_top;
     ]
	
;;

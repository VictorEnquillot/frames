(** {3 Camlline_constant_pervasive_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_constant_pervasive_interface_v";
   "Needed-by : FGNR:Camlline_constant_pervasive_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_ccp =
  match sym_ccp with
  | Camlline_constant_pervasive_symbol_t.Basic_type 
  | Camlline_constant_pervasive_symbol_t.Begin_line
  | Camlline_constant_pervasive_symbol_t.Bracket_left
  | Camlline_constant_pervasive_symbol_t.Bracket_right
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right
  | Camlline_constant_pervasive_symbol_t.Double_semicolon
  | Camlline_constant_pervasive_symbol_t.Else_line
  | Camlline_constant_pervasive_symbol_t.Empty_line
  | Camlline_constant_pervasive_symbol_t.End_line
  | Camlline_constant_pervasive_symbol_t.Item_title
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right
  | Camlline_constant_pervasive_symbol_t.Semicolon
  | Camlline_constant_pervasive_symbol_t.Then_false ->

      []
;;

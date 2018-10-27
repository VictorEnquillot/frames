(** {3 Camlline_for_symbol_uno_son_bare_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_uno_son_bare_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_uno_son_bare_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_csb sym_ent_son =
  match sym_csb with
  | Camlline_for_symbol_uno_son_bare_symbol_t.Pipe_esstring_arrow_es ->

      [
       sym_ent_son;
     ]

;;

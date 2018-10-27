(** {3 Camlline_for_any_uno_camlfile_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_camlfile_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_camlfile_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cuc sym_ent_top =
  match sym_cuc with
  | Camlline_for_any_uno_camlfile_symbol_t.Ending 
  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title ->

      [
       sym_ent_top; 
     ]

;;

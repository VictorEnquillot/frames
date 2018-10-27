(** {3 Camlline_for_any_uno_current_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_uno_current_interface_v";
   "Needed-by : FGNR:Camlline_for_any_uno_current_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cfa sym_ent_cur =
  match sym_cfa with
  | Camlline_for_any_uno_current_symbol_t.Left_off_doublet
  | Camlline_for_any_uno_current_symbol_t.Left_off_triplet 
  | Camlline_for_any_uno_current_symbol_t.Middle_off_triplet
  | Camlline_for_any_uno_current_symbol_t.Right_off_doublet
  | Camlline_for_any_uno_current_symbol_t.Right_off_triplet
  | Camlline_for_any_uno_current_symbol_t.Double_quote_current ->

      [
       sym_ent_cur;
     ]

;;

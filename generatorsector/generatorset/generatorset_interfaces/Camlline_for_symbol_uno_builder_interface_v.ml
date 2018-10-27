(** {3 Camlline_for_symbol_uno_builder_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_symbol_uno_builder_interface_v";
   "Needed-by : FGNR:Camlline_for_symbol_uno_builder_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cuf sym_ent_bui =
  match sym_cuf with
  | Camlline_for_symbol_uno_builder_symbol_t.Let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in ->
   
      [
       sym_ent_bui
     ]

;;

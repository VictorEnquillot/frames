(** {3 Camlline_for_any_duo_datastructure_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_duo_datastructure_interface_v";
   "Needed-by : FGNR:Camlline_for_any_duo_datastructure_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cdf sym_ent_cur sym_ent_top =
  match sym_cdf with
  | Camlline_for_any_duo_datastructure_symbol_t.Pipe_a_b_datastructure_of_a_b_datastructure ->
      
      Utilities_v.not_yet_implemented nam_cod "make"	

;;

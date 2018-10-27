(** {3 Camlline_for_any_trio_current_son_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Camlline_for_any_trio_current_son_top_interface_v";
   "Needed-by : FGNR:Camlline_for_any_trio_current_son_top_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cdf sym_ent_cur sym_ent_son sym_ent_top =
  match sym_cdf with
(* Ec Et *)	
  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg
  | Camlline_for_any_trio_current_son_top_symbol_t.Let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any ->
      [
       sym_ent_cur; 
       sym_ent_son; 
       sym_ent_top;
     ] 


;;

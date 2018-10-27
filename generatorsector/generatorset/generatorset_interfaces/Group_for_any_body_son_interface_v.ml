(** {3 Group_for_any_body_son_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_body_son_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbs = 
  match sym_gbs with 
  | Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor ->
      
      let sym_ca1 = Camlline_for_any_uno_camltype_son_notleaf_symbol_v.pipe_es_any_constructor_of_es_any_tdot_es_any in

      [ 
	Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_ca1;
      ]

;;


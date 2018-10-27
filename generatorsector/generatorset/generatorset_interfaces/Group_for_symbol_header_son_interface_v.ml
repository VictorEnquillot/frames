(** {3 Group_for_symbol_header_son_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_symbol_header_son_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_symbol_header_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gst =
  match sym_gst with
  | Group_for_symbol_header_son_symbol_t.Let_is_topson_bare
   (* let is_triangle_scalene_right = function *) 
  | Group_for_symbol_header_son_symbol_t.Let_is_topson_ofstring ->
   (* let is_entity_proper = function *) 
      let sym_ca1 = Camlline_for_any_uno_son_symbol_v.let_is_es_equal_function in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_son_symbol sym_ca1;
     ]
	
;;


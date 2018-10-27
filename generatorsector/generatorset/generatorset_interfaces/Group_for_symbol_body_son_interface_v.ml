(** {3 Group_for_symbol_body_son_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_symbol_body_son_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_symbol_body_son_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbs =
  match sym_gbs with 

  | Group_for_symbol_body_son_symbol_t.Pipe_esstring_arrow_es ->
 (*   | "triangle_isoceles_equilateral" -> triangle_isoceles_equilateral *)

      let sym_ca1 = Camlline_for_symbol_uno_son_symbol_v.pipe_esstring_arrow_es in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_symbol sym_ca1;
     ]
	
  | Group_for_symbol_body_son_symbol_t.Pipe_esstring_arrow_es_sarg ->
   (* | "point" -> point s *)
      
      let sym_ca1 = Camlline_for_symbol_uno_son_symbol_v.pipe_esstring_arrow_es_sarg in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_symbol_uno_son_symbol sym_ca1;
     ]

  | Group_for_symbol_body_son_symbol_t.Pipe_es_symbol_bare_type_constructor ->
   (* | Cl_5s *)
 
      let sym_ca1 = Camlline_for_any_uno_camltype_son_bare_symbol_v.pipe_es in
      [    
	   Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_ca1;
	 ]
	
  | Group_for_symbol_body_son_symbol_t.Pipe_es_symbol_ofstring_type_constructor ->
      (* | Point of string *)

      let sym_ca1 = Camlline_for_any_uno_camltype_son_ofstring_symbol_v.pipe_es_constructor_of_string in
      [    
	   Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_ca1;
	 ]
;;


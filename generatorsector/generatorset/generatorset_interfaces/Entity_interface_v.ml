(** {3 Entity_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Entity_interface_v";
   "Needed-by : FGNR:Entity_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make_of_tuple tri_ent =
  let sym_ent = Triplet_v.left_off_triplet tri_ent in

  match sym_ent with 
  | Entity_symbol_t.Entity_external_symbol _ ->
      Utilities_v.not_yet_implemented nam_cod "make Entity_external_symbol"
 
 | Entity_symbol_t.Entity_fictive_symbol _ ->
      Utilities_v.not_yet_implemented nam_cod "make Entity_fictive_symbol"

  | Entity_symbol_t.Entity_proper_symbol _ ->
      begin
	let tra_ent = 
	  Translating_trail_of_symbol_v.entity_trail_of_entity_tritup 
	    tri_ent
	in 
	let nam_kin =
	  Kind_name_by_constructor_notleaf_trail_provider_v.provide 
	    tra_ent
	in
	
	let sym_kin = Kind_symbol_v.make nam_kin in
	
	match sym_kin with
	| Kind_symbol_t.Kind_type -> 
	    [
	     Contentfile_symbol_v.type_alone; 
	     Contentfile_symbol_v.value_alone;
	   ]
	      
	| Kind_symbol_t.Kind_type_private -> 
	    [
	     Contentfile_symbol_v.type_n_value; 
	   ]
	      
	| _ ->
	    Error_messages_v.print_fatal_error nam_cod "make"
	      "kind were type|type_private"
	      (Kind_symbol_v.name sym_kin) "Check"
      end
;;


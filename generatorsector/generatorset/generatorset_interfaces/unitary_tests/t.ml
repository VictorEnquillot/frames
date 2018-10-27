let nam_cod = "";;

let camlline_symbol_of_entity_external_datastructure_tuple = function
  | "duo" 
  | "singlet" 
  | "trio" 
  | "triplet" as str ->
      
      Camlline_symbol_v.lpar_a_tag_rpar str
	
  | "couple_caml" 
  | "doublet"
  | "doublet_list" 
  | "doublet_tree" as str ->
      
      Camlline_symbol_v.lpar_a_b_c_tag_rpar str
	
  | str -> Error_messages_v.print_fatal_error nam_cod 
	"camlline_symbol_of_entity_external_datastructure_tuple"
        (Format.sprintf "string >%s< were defined" str)
        "it is NOT defined" "Check or add it"
;;


camlline_symbol_of_entity_external_datastructure_tuple "doublet";;
camlline_symbol_of_entity_external_datastructure_tuple "singlet";;

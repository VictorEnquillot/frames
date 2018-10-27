(** {3 The functionalities for the Key for Provider management.}  *)

(** {6 Making.} *)

val make :
    string -> 
      string -> 
	Key_t.key 
;;
(** Simulation of Constructor_path.
    Example : 
    ("codefile", "atom_symbol_function")
    ("item", "abbreviation")
    ("caml_line", "title")
*)

(** {6 Extracting.} *)

val key_name :
    Key_t.key ->	
      string	  
;;

val key_value :
    Key_t.key ->	
      string	  
;;

(** {6 Displaying.} *)

val name :	    
    Key_t.key ->	
      string	  
;;

(** {3 The functionalities for a Symbol for a Parameter.}  *)

(** {6 Making.} *)

val make :
    string ->
      Parameter_symbol_t.parameter_symbol
;;

(** {6 Displaying.} *)

val name_of_file_symbol :
    Parameter_symbol_t.file_symbol ->
      string
;;

val name :
    Parameter_symbol_t.parameter_symbol ->
      string
;;

(** {6 Abbreviating.} *)

val entity_external_n_codefile_list_file : Parameter_symbol_t.parameter_symbol;;
val module_scope_file : Parameter_symbol_t.parameter_symbol;;

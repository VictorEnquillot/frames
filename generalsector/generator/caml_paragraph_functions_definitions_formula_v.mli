(** {3 The functionalities for the Function section of a Formula for a Caml Paragraph.}  *)

(** {9 Function.} *)

(** {9 Retrieving Naming.} *)
(*
val retrieve_function_name_argument :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val retrieve_function_print_argument :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
*)
val retrieve_function_name_function :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
(*
val retrieve_function_print_function :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
*)
(** {9 Retrieving Upgrading.} *)

val retrieve_function_s_off_t_t_argument_datastructure :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val retrieve_function_s_off_t_function :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val retrieve_function_constant :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

(** {9 Retrieving Extracting.} *)

val retrieve_function_argument :
    Caml_paragraph_symbol_t.function_argument_symbol ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
	
val retrieve_function_function :
    Caml_paragraph_symbol_t.function_function_symbol ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val retrieve_functions_definitions :
    Caml_paragraph_symbol_t.functions_definitions_symbol ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;


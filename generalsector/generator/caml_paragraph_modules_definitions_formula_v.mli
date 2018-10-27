(** {3 The functionalities for a Formula for a Caml_paragraph Modules_definitions Symbol.}  *)

val retrieve_modules_definitions :
    Caml_paragraph_symbol_t.modules_definitions_symbol ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val anyson_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol :
    Category_symbol_t.category_symbol ->
      Codefile_symbol_t.codefile_symbol ->
	Constructor_symbol_t.constructor_symbol ->
	  Entitycategorysuffix_t.entitycategorysuffix list
;;(** list of all nodes in a constructor tree not beeing the top. *)

val up_entitycategorysuffix_list_of_category_symbol_of_codefile_symbol_of_topconstructor_symbol :
    Category_symbol_t.category_symbol ->
      Codefile_symbol_t.codefile_symbol ->
	Constructor_symbol_t.constructor_symbol ->
	  Entitycategorysuffix_t.entitycategorysuffix list 
;;(** list of all nodes in a constructor tree not beeing a leaf -- includes top. *)

val retrieve_modules_type_definitions_local_in_codefile_type :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
(*
val retrieve_modules_implementation_definitions_local_in_codefile_type :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;
*)
val retrieve_modules_type_definitions_local_in_codefile_implementation :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

val retrieve_modules_implementation_definitions_local_in_codefile_implementation :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_formula_t.caml_paragraph_formula
;;

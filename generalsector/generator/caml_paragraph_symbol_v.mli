(** {3 The Symbol for a Paragraph of Caml_line in an Item.}  *)

(** {6 Making.} *)
(*
val make :
    Caml_paragraph_context_t.caml_paragraph_context ->
      string ->
	Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val bottom_caml_paragraph_symbol_of_bottom_caml_paragraph_context :
    Caml_paragraph_context_t.caml_paragraph_context ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;
*)
(** {6 Abbreviating.} *)

val empty : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val heading : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val codefile_name :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val ending : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_constant :
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_name_argument :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_print_argument :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_t_of_s_argument :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_t_of_b_argument :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_b_off_t_t_argument :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_s_off_t_t_argument_datastructure :
    (Entitycategorycodefile_t.entitycategorycodefile list, Index_p.index) Doublet_t.doublet ->
       Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_name_function :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_print_function :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val function_s_off_t_function :
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val modules_type_definitions_local : 
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val modules_type_definitions_external : 
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val modules_implementation_definitions_local : 
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val modules_implementation_definitions_external : 
    Entitycategorycodefile_t.entitycategorycodefile list ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

val type_definition : 
    Entitycategorycodefile_t.entitycategorycodefile ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol
;;

(** {6 Displaying.} *)

val name_modules_implementation_definitions :
    Caml_paragraph_symbol_t.modules_implementation_definitions_symbol ->
      string
;;

val name :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      string
;;

(** {6 Keying.} *)

val key :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Key_t.key
;;

(** {6 Comparing.} *)

val compare :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_symbol_t.caml_paragraph_symbol ->
	int
;;

(** {6 Extracting.} *)
(**
val caml_paragraph_context_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_context_t.caml_paragraph_context
;;

val constructor_path_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Constructor_path_t.constructor_path
;;

val item_key_list_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Key_list_t.key_list
;;

val item_symbol_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Item_symbol_t.item_symbol
;;
**)

val entitycategorycodefile_list_off_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Entitycategorycodefile_t.entitycategorycodefile list
;;


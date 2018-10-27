(** {3 The functionalities for a Symbol for an Entity Category.}  *)


(** {6 Making.} *)

val make :
    string ->
      Category_symbol_t.category_symbol
;;

(** {6 Displaying.} *)

val name : 
    Category_symbol_t.category_symbol ->
      string
;;

val category_empty : Category_symbol_t.category_symbol;;
val category_formula : Category_symbol_t.category_symbol;;
val category_tag : Category_symbol_t.category_symbol;;
val category_path : Category_symbol_t.category_symbol;;
val category_provider : Category_symbol_t.category_symbol;;
val category_symbol : Category_symbol_t.category_symbol;;
val category_value : Category_symbol_t.category_symbol;;

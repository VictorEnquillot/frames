(** {3 The Symbol for a Constructor_es_symbolential}  *)

(** {6 Aliasing} *)


(** {6 Making} *)

let make_nullary str =
  Camlparagraph_endmarked_symbol_t.Constructor_es_symbolential_nullary str 
;;

let make_unary str =
  Camlparagraph_endmarked_symbol_t.Constructor_es_symbolential_unary str 
;;

(** {6 Naming} *)

let entity_name = function 
  | Camlparagraph_endmarked_symbol_t.Constructor_es_symbolential_nullary str -> str
  | Camlparagraph_endmarked_symbol_t.Constructor_es_symbolential_unary str -> str
;;

let name sym_ces =
  entity_name sym_ces 
;;

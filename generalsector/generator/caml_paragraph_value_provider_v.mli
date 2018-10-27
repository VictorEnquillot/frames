(** {3 The Provider for a Caml_paragraph from its Symbol.} *)

val store :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->  
      Caml_paragraph_value_t.caml_paragraph_value ->
	unit
;;

val retrieve :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_value_t.caml_paragraph_value
;;  

val provide :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_value_t.caml_paragraph_value
;;

val write : out_channel ->
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      unit
;;

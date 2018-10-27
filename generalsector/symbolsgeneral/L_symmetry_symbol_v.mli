(** {3 A Symbol for L symmetry.} *)

val make : int -> 
  L_symmetry_symbol_t.l_symmetry_symbol 
;;

val make_of_int : int -> 
  L_symmetry_symbol_t.l_symmetry_symbol 
;;

val index_of_l_symmetry_symbol : 
    L_symmetry_symbol_t.l_symmetry_symbol -> Index_p.index
;;

val int_of_l_symmetry_symbol : 
    L_symmetry_symbol_t.l_symmetry_symbol -> int
;;

val l_symmetry_symbol_of_int : int -> 
  L_symmetry_symbol_t.l_symmetry_symbol
;;

val l_symmetry_symbol_of_index : Index_p.index ->
  L_symmetry_symbol_t.l_symmetry_symbol
;;

val l_symmetry_symbol_of_ordinal : Ordinal_p.ordinal ->
  L_symmetry_symbol_t.l_symmetry_symbol
;;

val print : Format.formatter -> 
  L_symmetry_symbol_t.l_symmetry_symbol ->
    unit
;;

val name : L_symmetry_symbol_t.l_symmetry_symbol -> 
  string
;;

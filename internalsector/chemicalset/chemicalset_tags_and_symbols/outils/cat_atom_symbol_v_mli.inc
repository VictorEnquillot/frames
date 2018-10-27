(** {9 Valence.} *)

val mendeleev_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Mendeleev_symbol_t.mendeleev_symbol
;;

val valence_of_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Mendeleev_symbol_t.valence  
;;

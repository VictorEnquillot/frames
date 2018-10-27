(** {6 Extracting.} *)

let atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1c -> smb_a1c
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_conjugated_symbol_off_atom_onetied_symbol"
     "Atom_onetied_conjugated_symbol"
     (name s)
    "check"
;;

let atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1d -> smb_a1d
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_double_symbol_off_atom_onetied_symbol"
     "Atom_onetied_double_symbol"
     (name s)
    "check"
;;

let atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1s -> smb_a1s
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_single_symbol_off_atom_onetied_symbol"
     "Atom_onetied_single_symbol"
     (name s)
    "check"
;;

let atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1t -> smb_a1t
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_triple_symbol_off_atom_onetied_symbol"
     "Atom_onetied_triple_symbol"
     (name s)
    "check"
;;



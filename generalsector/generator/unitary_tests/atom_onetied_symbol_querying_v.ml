(** {6 Querying.} *)


let is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | A1s_t.Atom_onetied_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | A1s_t.Atom_onetied_double_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | A1s_t.Atom_onetied_single_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | A1s_t.Atom_onetied_triple_symbol _ -> true
  | _ -> false
;;



(** {3 The Formula Symbol for a Pack in Pdb File} *)


type clusterpdb_symbol_formula = 
  | Only_recordpdb_symbol of Residuepdb_symbol_t.recordpdb_symbol
  | List_recordpdb_symbol of Residuepdb_symbol_t.recordpdb_symbol list
;;
(** A Pack is made of One Record Only or of a Records List. *)

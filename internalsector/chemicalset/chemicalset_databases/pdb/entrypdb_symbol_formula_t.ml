(** {3 The Formula Symbol for a Pdb Entry.} *)


type entrypdb_symbol_formula = Clusterpdb_symbol_t.clusterpdb_symbol list
;;
(** A Pdb Entry (File) is made of `Packs' organized in a given well defined`order'.
     - A `Pack' is a collection of  `records' of the same type (symbol)
     - A `Record' is 
     -- either a formatted collection of `fields'
     -- or a string.
     - A field is some basic data delimited by two well defined columns.
N.B.: 
Sections have been removed as they play no role in the PDB Structure*)

(** {3 The Constrained Formula Symbol for a Pdb File} *)


type entrypdb_symbol_formula_constrained = Sectionpdb_symbol_t.sectionpdb_symbol list
;;
(** A Pdb File is made of `Sections' organized in some `order'.
     - A `Section' is a collection of `cluster' of `records'
     - A `Cluster' is a collection of  `records' of the same type (symbol)
     - A `Record' is 
     -- either a formatted collection of `fields'
     -- or a string.
     - A field is some basic data delimited by two well defined columns. *)

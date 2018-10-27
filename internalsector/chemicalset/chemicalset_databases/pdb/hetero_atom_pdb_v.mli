(* Id : Exp $ *)

(** {3 The Functions to handle Hetero-Atoms of the Pdb} *)

(* *** TODO 
val symbol_pdb_list : string list;;
(** The list of symbol names for Hetero Atoms in PDB. *)

val string_of_description : Atom_pdb_t.atom_pdb -> string;;

val symbol_pdb : Hetero_atom_pdb_t.symbol_pdb -> string;;
(** The symbol of an Hetero Atom in PDB for a type [t]. *) 

val of_symbol_pdb : string -> Hetero_atom_pdb_t.;;
(** The type [t] of an Hetero Atom  from its symbol in PDB. *)

val name : hetero_atom_pdb -> string;;
(** The PDB name of the Hetero Atom of type [t]. *)

val description_of_line_80 : string -> description;;  
(** the fields describing an hetero atom. *)

* *** *)

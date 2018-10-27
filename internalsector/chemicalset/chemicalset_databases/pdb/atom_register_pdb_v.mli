(* $Id: register_pdbs.mli,v 1.7 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 Registers for Pdb information} *)

(** {6 Pdb_register management.} *)
val make_of_name : string -> Atom_register_pdb_t.register_pdb
;;

val has_key : Atom_register_pdb_t.register_pdb -> Atom_register_pdb_t.key -> bool
;;

val retrieve : Atom_register_pdb_t.register_pdb -> Atom_register_pdb_t.key -> 
  Atom_register_pdb_t.entry
;;

val provide_data_by_key : unit -> Atom_register_pdb_t.register_pdb ->  
  Atom_register_pdb_t.key -> Atom_register_pdb_t.value 
;;
(** same as retrieve except it builds [all entries] if register not yet filled
    with build_and_store : 'a -> Atom_register_pdb_t.register_pdb -> unit. *)

val entry_number : Atom_register_pdb_t.register_pdb -> int
;;

val entries_selected : Atom_register_pdb_t.register_pdb -> 
  (Atom_register_pdb_t.entry -> bool) -> Atom_register_pdb_t.entry list
;;
(** [let l = entries_selected r p;;] 

     [r] is a [register_pdb].
     [p] is a predicate on [key].
     [l] is the [entry list] of all [entry] satisfying [p]. *)

val keys_selected : Atom_register_pdb_t.register_pdb -> 
  (Atom_register_pdb_t.key -> bool) -> Atom_register_pdb_t.key list
;;
(** [let l = keys_selected r p;;] 

     [r] is a [register_pdb].
     [p] is a predicate on [key].
     [l] is the [key list] of all [key] satisfying [p]. *)

val values_selected : Atom_register_pdb_t.register_pdb -> 
  (Atom_register_pdb_t.value -> bool) -> Atom_register_pdb_t.value list
;;
(** [let l = values_selected r p;;] 

     [r] is a [register_pdb].
     [p] is a predicate on [value].
     [l] is the [value list] of all [values] satisfying [p]. *)

val keys : Atom_register_pdb_t.register_pdb -> Atom_register_pdb_t.key list
;;

val values : Atom_register_pdb_t.register_pdb -> Atom_register_pdb_t.value list
;;

val store : Atom_register_pdb_t.register_pdb -> Atom_register_pdb_t.entry -> unit
;;

val print : Format.formatter -> Atom_register_pdb_t.register_pdb -> unit
;;

val print_key : Format.formatter -> Atom_register_pdb_t.key -> unit
;;

val print_value : Format.formatter -> Atom_register_pdb_t.value -> unit
;;

val print_entry : Format.formatter -> Atom_register_pdb_t.entry -> unit
;;

val print_key_list : Format.formatter -> Atom_register_pdb_t.key list -> unit
;;

val print_data_list : Format.formatter -> Atom_register_pdb_t.value list -> unit
;;

val print_entry_list : Format.formatter -> Atom_register_pdb_t.entry list -> unit
;;

(* TAKEN_OUT
val atom_pdb_by_keypdb : Atom_register_pdb_t.register_pdb
;;

val register_atom_b_pdby_path : Atom_register_pdb_t.register_pdb
;;

val register_atom_b_pdby_path : 
  (Atom_keypdb_t.atom_keypdb, Atom_pdb_t.atom_pdb) Hashtbl.t 
;;
(**
   stores the [Atom_pdb_t.atom_pdb] of a [Atom_name_pdb_t.atom_symbol_pdb] 
   using [Atom_keypdb_t.atom_keypdb] as key. *)

val atom_pdb_by_keypdb :
  (Atom_keypdb_t.atom_keypdb, Atom_pdb_t.atom_pdb) Hashtbl.t 
;;
(**
   stores the [Atom_pdb_t.atom_pdb] of a [Atom_name_pdb_t.atom_symbol_pdb] 
   using [Atom_keypdb_t.atom_keypdb] as key. *)

val print_of_name : Format.formatter -> string -> unit
;;
(** let print_of_name r;;
    prints all keys and associated values of register named [r]. *)

TAKEN_OUT *)

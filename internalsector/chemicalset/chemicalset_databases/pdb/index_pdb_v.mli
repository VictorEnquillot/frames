(* $Id: Exp $ *)

(** {3 Functions on Index of Pdb ATOM and HETATOM records} *)

(** {6 Making.} *)

val alternate_location_index_of_string : string -> 
  Index_pdb_t.alternate_location_index_pdb
;;

val branch_index_pdb_of_string : string -> Index_pdb_t.branch_index_pdb
;;

val branch_index_pdb_of_int : int -> Index_pdb_t.branch_index_pdb
;;

val remote_index_pdb_of_string : string -> Index_pdb_t.remote_index_pdb
;;

val remote_index_pdb_of_int : int -> Index_pdb_t.remote_index_pdb
;;

val h_index_pdb_of_string : string -> Index_pdb_t.h_index_pdb
;;

val h_index_pdb_of_int : int -> Index_pdb_t.h_index_pdb
;;

val insertion_index_pdb_of_string : string -> Index_pdb_t.insertion_index_pdb
;;

(** {6 Conversions from index_pdb.} *)

val string_of_index_pdb : Index_pdb_t.index_pdb -> string 
;;

val int_of_index_pdb : Index_pdb_t.index_pdb -> int
;;

(** {6 Printings.} *)

val print : Format.formatter -> Index_pdb_t.index_pdb -> unit
;;

val print_alternate_location_index : Format.formatter -> 
  Index_pdb_t.alternate_location_index_pdb -> unit
;;

val print_alternate_location_index_pdb : Format.formatter -> 
  Index_pdb_t.alternate_location_index_pdb -> unit
;;

val print_h_index_pdb : Format.formatter -> Index_pdb_t.h_index_pdb -> 
  unit
;;

val print_chain_index_pdb : Format.formatter -> 
  Polypeptide_identifier_t.chain_index -> unit
;;

val print_branch_index_pdb : Format.formatter -> Index_pdb_t.branch_index_pdb -> 
  unit
;;

val print_remote_index_pdb : Format.formatter -> 
  Index_pdb_t.remote_index_pdb -> unit
;;

val print_insertion_index_pdb : Format.formatter -> 
  Index_pdb_t.insertion_index_pdb -> unit
;;

(** {6 Readings} *)

val read_alternate_location_index : Scanf.Scanning.scanbuf -> 
  Index_pdb_t.alternate_location_index_pdb
;;

val read_branch_index_pdb : Scanf.Scanning.scanbuf -> Index_pdb_t.branch_index_pdb
;;

val read_h_index_pdb : Scanf.Scanning.scanbuf -> Index_pdb_t.h_index_pdb
;;

val read_insertion_index_pdb : Scanf.Scanning.scanbuf -> 
  Index_pdb_t.insertion_index_pdb
;;


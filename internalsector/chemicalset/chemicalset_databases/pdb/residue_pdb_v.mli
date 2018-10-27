(* $Id: residue_pdbs.mli,v 1.5 2007-08-22 17:43:05 colonna Exp $ *)

(** {3 The Functions to handle Residues of the Pdb} *)
(** {6 Residue_pdb_t.} *)

(** {9 make_...} *)

val make : Residue_pdb_t.residue_mention_pdb -> Residue_pdb_t.insequence_number ->
  Residue_pdb_t.id_pdb -> Residue_pdb_t.residue_pdb 
;;

val make_residue_mention_pdb : 
    Residue_pdb_t.alternate_location_index_pdb ->
      Residue_pdb_t.residue_symbol_pdb ->
	Residue_pdb_t.polypeptide_label_pdb ->
	  Residue_pdb_t.residue_canonical_index_pdb ->
	    Residue_pdb_t.insertion_index_pdb ->
	      Residue_pdb_t.alternate_location_weight_pdb ->
		Residue_pdb_t.residue_mention_pdb 
;;

val make_residue_name_pdb : Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb -> 
    Residue_pdb_t.polypeptide_label_pdb -> 
      Residue_pdb_t.residue_name_pdb
;;

val make_alternate_location_pdb : Residue_pdb_t.alternate_location_index_pdb ->
  Residue_pdb_t.alternate_location_weight_pdb -> 
    Residue_pdb_t.alternate_location_pdb
;;

val make_residue_code_pdb : Residue_pdb_t.residue_canonical_index_pdb -> 
  Residue_pdb_t.insertion_index_pdb -> Residue_pdb_t.residue_code_pdb
;;

(** {9 Residue_pdb_t Readings.} *)

(* TAKEN_OUT
val read_residue_mention_pdb : Scanf.Scanning.scanbuf -> 
  Residue_pdb_t.residue_mention_pdb
;;
(** read from ATOM record format. 
  Example : read_residue_mention_pdb (Scanf.Scanning.from_string "AILE_B___7C")
  gives (Ala, Altloc_B, Chain_C,  7, Insertion_A)   
*)

val read_residue_canonical_index_pdb : Scanf.Scanning.scanbuf -> 
  Residue_pdb_t.residue_canonical_index_pdb
;;
(** read from ATOM record format. 
  Example : read_residue_canonical_index_pdb (Scanf.Scanning.from_string "___7")
  gives 7. *)
*)

val read_insequence_number : Scanf.Scanning.scanbuf ->
  Residue_pdb_t.insequence_number
;;

val read_id_pdb : Scanf.Scanning.scanbuf -> Header_pdb_t.id_pdb
;;

val read_residue_name_pdb : Scanf.Scanning.scanbuf -> 
  Residue_pdb_t.residue_name_pdb
;;

(** {9 Residue_pdb_t_of_....} *)

val residue_pdb_of_aminoacid_symbol : Aminoacid_symbol_t.aminoacid_symbol ->  
  Residue_pdb_t.residue_pdb 
;;

(* TAKEN_OUT
val residue_pdb_of_string : string ->  Residue_pdb_t.residue_pdb 
;;
(** [let r = residue_pdb_of_string s;;]
    same as [residue_name_pdb_of_string] with [s] prolongated with a "_" and
    an positive integer string representation.

    Example: "AILE_B___7C_0.21_10" 
    gives (((Ile, Chain_A), (Altloc_B, 0.21), (7, Insertion_C)), 10). *)

val residue_code_pdb_of_string : string ->  Residue_pdb_t.residue_code_pdb
;;

val residue_mention_pdb_of_string : string ->  Residue_pdb_t.residue_mention_pdb 
;;
(** [let r = residue_mention_pdb_of_string s;;]
    [s] is a [string] of 11 characters located at columns 17 to 27 in 
        an ATOM record of a Pdb file, where blanks have been replaced
        by underscores.
    [r] is the [residue_mention_pdb] corresponding to [s].

    Example: "AILE_B___7C" 
    gives ((Ile, Altloc_B, Chain_A), (7, Insertion_C)). *)

val residue_canonical_index_pdb_of_string : string ->  
   Residue_pdb_t.residue_canonical_index_pdb
;;

val residue_name_pdb_of_string : string ->  Residue_pdb_t.residue_name_pdb
;;


val residue_pdb_of_anycase : string -> Residue_pdb_t.residue_pdb 
;;

TAKEN_OUT *)

val insequence_number_of_string : string ->  Residue_pdb_t.insequence_number
;;

val residue_name_pdb_of_anycase : string ->  Residue_pdb_t.residue_name_pdb
;;

val residue_mention_pdb_of_atom_record : Recordpdb_atom_t.recordpdb_atom ->
  Residue_pdb_t.residue_mention_pdb 
;;

val residue_name_pdb_of_char : char -> 
    Residue_pdb_t.polypeptide_label_pdb -> 
      Residue_pdb_t.residue_name_pdb
;;
(** [let n = residue_name_pdb_of_char c a i;;]

     Example: residue_pdb_of_char 'a' B
              (Ala, Chain_B). *)

val residue_name_pdb_of_one_letter_code_pdb : 
    One_letter_code_pdb_t.one_letter_code_pdb -> 
      Residue_pdb_t.polypeptide_label_pdb -> 
	Residue_pdb_t.residue_name_pdb 
;;
(** the same with one_letter_code A instead of char 'a'. *)
 
(** {9 Residue_pdb_t Printings.} *)

val print : Format.formatter -> Residue_pdb_t.residue_pdb -> unit
;;
 
val print_residue_mention_pdb : Format.formatter -> 
Residue_pdb_t.residue_mention_pdb -> unit

val print_residue_name_pdb : Format.formatter ->
  Residue_pdb_t.residue_name_pdb -> unit

val print_insequence_number : Format.formatter ->
  Residue_pdb_t.insequence_number -> unit

(** {9 Residue_pdb_t_to_....} *)

val aminoacid_symbol_pdb_of_residue_pdb : Residue_pdb_t.residue_pdb -> 
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb 
;;

val aminoacid_symbol_pdb_of_residue_name_pdb : Residue_pdb_t.residue_name_pdb ->
  Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
;;

(** A pseudo sequence number in a chain. needs [insertion_number]. *)

val polypeptide_label_pdb_of_residue_pdb : Residue_pdb_t.residue_pdb -> 
  Residue_pdb_t.polypeptide_label_pdb
;;
(** The chain index. *)

val string_of_residue_pdb : Residue_pdb_t.residue_pdb -> string
;;
(** [let s = string_of_residue_pdb r;;]

    [r] is a [residue_pdb].
    [s] is the [string] formed by the string representation of [r].
    and that of the number joined by a "_". 

    Example : ((((Ala, Chain_A), (45, Insertion_blank)), (Altloc_blank, 1.0))
           gives "Ala_A__45__1.00". *)

val uppercase_of_residue_pdb : Residue_pdb_t.residue_pdb -> string
;;
(** it is the same as [to_string] with a resulting string in uppercase.

    Example : "Ala_A__45__1.00" *)

val chemical_name_of_residue_pdb : Residue_pdb_t.residue_pdb -> string
;;
(** The Chemical name of the aminoacid_pdb symbol part of a [residue_pdb]. 
    Example: ((((Ala, Chain_A), (45, Insertion_blank)), (Altloc_blank, 1.0))
              gives  "Alanine". *)

(* $Id: Exp $ *)

(** {3 The functions to manage a Polypeptide_pdb_t.} *)
(** {6 polypeptide_pdb.} *)
(** {9 polypeptide_pdb_of_...} *)

val polypeptide_sequence_pdb_of_polypeptide_pdb : 
    Polypeptide_pdb_t.polypeptide_pdb ->
      Polypeptide_pdb_t.polypeptide_sequence_pdb
;;

val polypeptide_formula_pdb_of_polypeptide_pdb : 
    Polypeptide_pdb_t.polypeptide_pdb -> 
      Polypeptide_pdb_t.polypeptide_formula_pdb
;;
(** converts each [residue_pdb] of [polypeptide_pdb] into a 
    [Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb]. 
    raises No_such_amino_acid if conversion is impossible. *)
(* *** TODO TAKEN_OUT
val polypeptide_pdb_of_string_array : string array -> Polypeptide_pdb_t.polypeptide_pdb
;;
(** [let c = polypeptide_pdb_of_string_array a;;]
    
    [a] is a [string array], where each string is able to describe a
    [residue_pdb].
    [c] is the [polypeptide_pdb] read from them.*)
 
(** {9 polypeptide_pdb_to_...} *)
 
val polypeptide_formula_pdb_of_polypeptide_pdb : Polypeptide_pdb_t.polypeptide_pdb -> 
  Polypeptide_pdb_t.polypeptide_formula_pdb
;;
(** converts each [residue_pdb] of [polypeptide_pdb] into a 
    [Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb]. 
    raises No_such_amino_acid if conversion is impossible. *)

(** {9 ..._of_polypeptide_pdb.} *)

val residue_pdb_nth_of_polypeptide_pdb : int -> Polypeptide_pdb_t.polypeptide_pdb ->   
  Residue_pdb_t.residue_pdb
(** [let r = residue_pdb_nth_of_polypeptide_pdb i c;;]

    [c] is a [polypeptide_pdb] i.e. a [residue_pdb array] 
    [i] is the position in [c] of a [residue_pdb] (starts at 1).
    [r] is the nth [residue_pdb] in [c].

    Raises Failure "sequence too short" if n is too short
    Fails if n is < 1.  *)

 *)

(** {9 polypeptide_pdb_t Printings/Readings.} *)

val print : Format.formatter -> Polypeptide_pdb_t.polypeptide_pdb -> unit
;;

(* **** TAKEN_OUT


val polypeptide_sequence_pdb_of_protein_sequence : Amino_acid.amino_acid array -> 
  Polypeptide_pdb_t.polypeptide_sequence_pdb
;;

val polypeptide_sequence_pdb_of_chain_sequence : Amino_acid.amino_acid array -> 
  Polypeptide_pdb_t.polypeptide_sequence_pdb
;;

val polypeptide_sequence_pdb_of_pdb_line_array : string array -> 
  Polypeptide_pdb_t.polypeptide_sequence_pdb
;;
(** define a polypeptide_pdb from an array of Pdb file SEQRES lines.*) 

val polypeptide_sequence_pdb_of_seqres_records : Recordpdb_t.recordpdb list -> 
  Polypeptide_pdb_t.polypeptide_sequence_pdb
;;
(** A polypeptide_sequence_pdb from all SEQRES records for a chain in the PDB file. *)

val polypeptide_sequence_pdb_of_string_array : string array -> 
  Polypeptide_pdb_t.polypeptide_sequence_pdb
;;
(** [let s = polypeptide_sequence_pdb_of_string_array a;;]
 
     [a] is a [string array], where each string is able to describe a
         [aminoacid_pdb].
     [s] is the [polypeptide_sequence_pdb] read from them.*)

val polypeptide_sequence_pdb_of_one_word : string -> Polypeptide_pdb_t.polypeptide_sequence_pdb
;;
(** define a [polypeptide_sequence_pdb] from a one-word string made of a succession of
    one-letter-code characters.

    Example : "ARGP" gives peptide polypeptide_sequence_pdb
    (NterPlus Ala, Neutral Arg, Neutral Gly, Neutral Pro). *)
 

val polypeptide_sequence_pdb_to_string : Polypeptide_pdb_t.polypeptide_sequence_pdb -> string;;
(** the "flat" list separated by blanks of the residue names. *)


val labelled_chain_pdb_sequence_of_polypeptide_pdb : Polypeptide_pdb_t.polypeptide_label -> 
    Polypeptide_pdb_t.polypeptide_pdb -> Polypeptide_pdb_t.labelled_chain_pdb_sequence
;;

val labelled_chain_pdb_sequence_of_labelled_chain_pdb : 
    Polypeptide_pdb_t.labelled_chain_pdb -> Polypeptide_pdb_t.labelled_chain_pdb_sequence
;;
val labelled_chain_pdb_sequence_of_polypeptide_pdb_description :
    Polypeptide_pdb_t.description -> Polypeptide_pdb_t.labelled_chain_pdb_sequence
;;

val polypeptide_formula_pdb_of_polypeptide_sequence_pdb :  Polypeptide_pdb_t.polypeptide_sequence_pdb -> 
  Polypeptide_pdb_t.polypeptide_formula_pdb 
;;

****** *)

(** {9 polypeptide_pdb_t_sequence Printings/Readings.} *)

val print_polypeptide_sequence_pdb : Format.formatter -> Polypeptide_pdb_t.polypeptide_sequence_pdb -> 
  unit
;;

(** {6 polypeptide_formula_pdb.} *)

(** {9 polypeptide_formula_pdb_of_...} *)

val polypeptide_formula_pdb_of_one_word : string -> Polypeptide_pdb_t.polypeptide_formula_pdb
;;
(** define a [polypeptide_formula_pdb] from a one-word string made of a succession of
    one-letter-code characters.

    Example : "ARGP" gives peptide polypeptide_formula_pdb (Ala, Arg, Gly, Pro). *)
 
(** {9 ..._of_polypeptide_formula_pdb.} *)

val string_of_polypeptide_formula_pdb : Polypeptide_pdb_t.polypeptide_formula_pdb -> string;;
(** the "flatten" list, separated by blanks, of the residue_pdb symbol names. *)

(** {9 polypeptide_symbol_pdb_...} *)
(* *** TODO 

val polypeptide_symbol_pdb_of_labelled_chain_pdb : Polypeptide_pdb_t.labelled_chain_pdb -> 
  Polypeptide_pdb_t.polypeptide_symbol_pdb
;;

val polypeptide_symbol_pdb_of_polypeptide_pdb : Polypeptide_pdb_t.polypeptide_pdb -> 
  Polypeptide_pdb_t.polypeptide_symbol_pdb
;;

*** *)

val one_word_of_polypeptide_formula_pdb : Polypeptide_pdb_t.polypeptide_formula_pdb -> string
;;
(** [let w = one_word_of_polypeptide_formula_pdb f;;]
     
     [f] is a [polypeptide_formula_pdb] 
     [w] is the [string] made of the one_letter code conversion of [f]. 

     Example: peptide (Gly, Ala) gives string "GA". *)

(** {9 polypeptide_pdb_t_formula Printings/Readings.} *)

val print_polypeptide_formula_pdb : Format.formatter -> Polypeptide_pdb_t.polypeptide_formula_pdb -> 
  unit
;;


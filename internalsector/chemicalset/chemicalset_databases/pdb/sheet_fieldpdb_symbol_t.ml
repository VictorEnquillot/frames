(** {3 A Symbol for an SHEET field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect5.html#SHEET}
        http://www.wwpdb.org/documentation/format32/sect5.html#SHEET}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SHEET    1   A 5 THR A 107  ARG A 110  0
SHEET    2   A 5 ILE A  96  THR A  99 -1  N  LYS A  98   O  THR A 107
SHEET    3   A 5 ARG A  87  SER A  91 -1  N  LEU A  89   O  TYR A  97
SHEET    4   A 5 TRP A  71  ASP A  75 -1  N  ALA A  74   O  ILE A  88
SHEET    5   A 5 GLY A  52  PHE A  56 -1  N  PHE A  56   O  TRP A  71
SHEET    1   B 5 THR B 107  ARG B 110  0
SHEET    2   B 5 ILE B  96  THR B  99 -1  N  LYS B  98   O  THR B 107
SHEET    3   B 5 ARG B  87  SER B  91 -1  N  LEU B  89   O  TYR B  97
SHEET    4   B 5 TRP B  71  ASP B  75 -1  N  ALA B  74   O  ILE B  88
SHEET    5   B 5 GLY B  52  ILE B  55 -1  N  ASP B  54   O  GLU B  73

Details

* The initial residue for a strand is its N-terminus. Strand registration information is provided in columns 39 - 70. Strands are listed starting with one edge of the sheet and continuing to the spatially adjacent strand.

* The sense in columns 39 - 40 indicates whether strand n is parallel (sense = 1) or anti-parallel (sense = -1) to strand n-1. Sense is equal to zero (0) for the first strand of a sheet.

* The registration (columns 42 - 70) of strand n to strand n-1 may be specified by one hydrogen bond between each such pair of strands. This is done by providing the hydrogen bonding between the current and previous strands. No register information should be provided for the first strand.

* Split strands, or strands with two or more runs of residues from discontinuous parts of the amino acid sequence, are explicitly listed. Detail description can be included in the REMARK 700 .

*)

type sheet_fieldpdb_symbol =
  | Empty_1                                       (*  7- 7 string *)
  | Sheet_strand_number                           (*  8-10 int *)
  | Empty_2                                       (* 11-11 string *)
  | Sheet_id                                      (* 12-14 string *) 
  | Sheet_strand_count                            (* 15-16 int *) 
  | Sheet_initial_residue_name                    (* 18-20 string *)
  | Empty_3                                       (* 21-21 string *)
  | Sheet_initial_residue_chain_id                (* 22-22 char *)
  | Empty_4                                       (* 21-21 string *)
  | Sheet_initial_residue_sequence_number         (* 23-26 int *)
  | Sheet_initial_residue_insertion_code          (* 27-27 char *)
  | Empty_5                                       (* 28-28 string *)
  | Sheet_final_residue_name                      (* 29-31 string *)
  | Empty_6                                       (* 32-32 string *)
  | Sheet_final_residue_chain_id                  (* 33-33 char *)
  | Empty_7                                       (* 33-33 string *)
  | Sheet_final_residue_sequence_number           (* 34-37 int *)
  | Sheet_final_residue_insertion_code            (* 38-38 char *)
  | Sheet_sense                                   (* 39-40 int *)
  | Empty_8                                       (* 41-41 string *)
  | Sheet_current_strand_atom_name                (* 42-45 string *)
  | Sheet_current_strand_residue_name             (* 46-48 string *)
  | Empty_9                                       (* 49-49 string *)
  | Sheet_current_strand_chain_id                 (* 50-50 char *)
  | Sheet_current_strand_residue_sequence_number  (* 51-54 int *)
  | Sheet_current_strand_residue_inserion_code    (* 55-55 char *)
  | Empty_10                                      (* 56-56 string *)
  | Sheet_previous_strand_atom_name               (* 57-60 string *)
  | Sheet_previous_strand_residue_name            (* 61-63 string *)
  | Empty_11                                      (* 64-64 string *)
  | Sheet_previous_strand_chain_id                (* 65-65 char *)
  | Sheet_previous_strand_residue_sequence_number (* 66-69 int *)
  | Sheet_previous_strand_residue_inserion_code   (* 70-70 char *)
  | Empty_12                                      (* 71-80 string *)
;;

(* $Id: residue_pdb.mli,v 1.4 2007-07-11 20:50:10 colonna Exp $ *)

(** {3 A Residue of the Pdb} *)

(** It has not the meaning of a Residue as defined in the Frames library.
    It is a mere description of a residue not taking into account its molecular
    nature.
    A Atom_pdb knows in which Residue_pdb_t it is contained, and specifically
    knows the [insequence_number] (effective sequence index) of the residue.
    A Residue_pdb_t does not know anything about its contained atoms.  *)

(** It is a triplet defined 
    - from an ATOM record of the Pdb file
    - from the Polypeptidic chain sequence. 
    - from the Pdb_id of the HEADER record.
    It needs to link 
    [residue_code_pdb] (internal to PDB) to [insequence_number]
    (external to PDB). 
{[
    Example : ((Ile, Altloc_A, Chain_B), (7, Insertion_C), 10) 
    for "AILE_B___7C" if it is the 10th residue of the chain. 
   

                                ------ residue_pdb --- 
                               /                      \
               ----- (residue_mention_pdb, --------    insequence_number,  id_pdb)
              /             \                      \
       (residue_name_pdb,  residue_code_pdb, alternate_location_pdb)
            /                \                          (..._index
           /                  \                          ..._weight) 
  (aminoacid_symbol_pdb, (residue_canonical_index_pdb, 
   polypeptide_label_pdb)       insertion_index_pdb)



 ((((smb_ams_pdb, chn_lbl),  (can_num, ins_idx)), (alt_idx, alt_wgt)), ich_num, id_pdb) 
       (((res_nam,             res_cod),           alt_str),  ich_num, id_pdb)
                   (res_men,                             ich_num, id_pdb)
                                  pdb_res
*)

type residue_pdb = {
    residue_mention_pdb : residue_mention_pdb;
    insequence_number : insequence_number;
    id_pdb : id_pdb;
  }

and residue_mention_pdb = {
    alternate_location_index_pdb : alternate_location_index_pdb;
    residue_symbol_pdb : residue_symbol_pdb;
    polypeptide_label_pdb : polypeptide_label_pdb;
    residue_canonical_index_pdb : residue_canonical_index_pdb;
    insertion_index_pdb : insertion_index_pdb;
    alternate_location_weight_pdb : alternate_location_weight_pdb;
  }

and residue_symbol_pdb = Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
(** the aminoacid_symbol_pdb corresponding to the residue.
    Only aminoacid_symbol_pdb is known from ATOM record.
    Example : Ile. 
    Abbreviation code : sym_ams_pdb. *)

and polypeptide_label_pdb = Polypeptide_identifier_t.chain_index
(** It is the index of the polypeptidic chain containing the residue. 
    Example : Chain_B means this atom refers to the "B" Chain of the 
    protein. 
    Abbreviation code : pdb_chl. *)

and residue_canonical_index_pdb = Tokenpdb_t.integer_4
(** It is a number corresponding to the position of the residue in the 
    canonical polypeptidic chain. Starts from 1. 

    Pdb ATOM columns 23 - 26 "_145". *)

and insertion_index_pdb = Index_pdb_t.insertion_index_pdb
(** It is the index used to mention that this residue has been inserted 
    with respect to a canonical sequence numbering.

    Example : Insertion_C. 
    Pdb ATOM columns 27 "C". *)

and alternate_location_index_pdb = Index_pdb_t.alternate_location_index_pdb
(** A letter to characterize an alternate_location if any. 

    Example : Altloc_A means the alternative structure named "A". 
    Abbreviation code : alt_idx. *)

and alternate_location_weight_pdb = Tokenpdb_t.float_4
(** A float on 6 digit to characterize an alternate_location weight.

    Example : 0.21.  
    Abbreviation code : alt_wgt. *)

and insequence_number = Tokenpdb_t.integer_4
(** the number corresponding to the effective position of the residue in 
    its polypeptidic chain sequence. Starts from 1. 
    This information is not given in ATOM record only in SEQRES.
    Example : 10 means it is the 10th residue of the chain sequence. *)

and id_pdb = Header_pdb_t.id_pdb
(** the Protein identifier. 
    Example : 4PTI*)
;;

(** {6 Gathering of elementary types.} *)

type residue_name_pdb =
    residue_symbol_pdb * polypeptide_label_pdb 
(** the [residue_pdb] name part of the Pdb ATOM record : a triplet.
    Example : (Ile, Chain_B)
    Pdb ATOM columns (18-20, 22) "ILE B".
    Abbreviation code : pdb_rsn. *)
;;

type residue_code_pdb = 
    residue_canonical_index_pdb * insertion_index_pdb
(** It is a codage specific to the  PDB, refering to an arbitrary canonical
   chain sequence which needs to be translated into the [pdb_insequence_number]
   (the effective sequence index).

    Example : (7, Insertion_C)  means it is the third residue inserted after
    residue 7 of the canonical sequence. 

    Pdb ATOM columns (23 - 26, 27) "_145C". *)
;;

type alternate_location_pdb = 
    alternate_location_index_pdb * alternate_location_weight_pdb
(** The doublet of index and weight to define the alternative structure.

    Example : (Altloc_A, 0.21)  means the alternative structure named "A"
              is weight by 0.21. *)

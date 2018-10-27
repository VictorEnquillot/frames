(** {3 A Symbol for an SITE field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect7.html#SITE}
        http://www.wwpdb.org/documentation/format32/sect7.html#SITE}

Site records specify residues comprising catalytic, co-factor, anti-codon, regulatory or other essential sites or environments surrounding ligands present in the structure.
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SITE     1 AC1  3 HIS A  94  HIS A  96  HIS A 119                               
SITE     1 AC2  5 ASN A  62  GLY A  63  HIS A  64  HOH A 328                    
SITE     2 AC2  5 HOH A 634                                                     
SITE     1 AC3  5 GLN A 136  GLN A 137  PRO A 138  GLU A 205                    
SITE     2 AC3  5 CYS A 206                                                     
SITE     1 AC4 11 HIS A  64  HIS A  94  HIS A  96  HIS A 119                    
SITE     2 AC4 11 LEU A 198  THR A 199  THR A 200  TRP A 209                    
SITE     3 AC4 11 HOH A 572  HOH A 582  HOH A 635     
*)

type site_fieldpdb_symbol =
  | Site_sequence_number                (*  8-10 int *)
  | Empty_1                             (* 11-11 string *)
  | Site_name                           (* 12-14 string *)
  | Empty_2                             (* 15-15 string *)
  | Site_residue_count                  (* 16-17 int *) 
  | Empty_3                             (* 18-18 string *)
  | Site_first_residue_name             (* 19-21 string *)
  | Empty_4                             (* 22-22 string *)
  | Site_first_residue_chain_id         (* 23-23 char *)
  | Site_first_residue_sequence_number  (* 24-27 int *)
  | Site_first_residue_insertion_code   (* 28-28 char *)
  | Empty_5                             (* 29-29 string *)
  | Site_second_residue_name            (* 30-32 string *)
  | Empty_6                             (* 33-33 string *)
  | Site_second_residue_chain_id        (* 34-34 char *)
  | Site_second_residue_sequence_number (* 35-38 int *)
  | Site_second_residue_insertion_code  (* 39-39 char *)
  | Empty_7                             (* 40-40 string *)
  | Site_third_residue_name             (* 41-43 string *)
  | Empty_8                             (* 44-44 string *)
  | Site_third_residue_chain_id         (* 45-45 char *)
  | Site_third_residue_sequence_number  (* 46-49 int *)
  | Site_third_residue_insertion_code   (* 50-50 char *)
  | Empty_9                             (* 51-51 string *)
  | Site_fourth_residue_name            (* 52-54 string *)
  | Empty_10                            (* 55-55 string *)
  | Site_fourth_residue_chain_id        (* 56-56 char *)
  | Site_fourth_residue_sequence_number (* 57-60 int *)
  | Site_fourth_residue_insertion_code  (* 61-61 char *)
  | Empty_11                            (* 62-80 string *)
;;

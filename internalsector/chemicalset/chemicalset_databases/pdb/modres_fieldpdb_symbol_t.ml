(** {3 A Symbol for a field in a MODRES Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#MODRES}
        http://www.wwpdb.org/documentation/format32/sect3.html#MODRES}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890                                                                                                                                                
MODRES 2R0L ASN A   74  ASN  GLYCOSYLATION SITE   
MODRES 1IL2 1MG D 1937    G  1N-METHYLGUANOSINE-5'-MONOPHOSPHATE  
MODRES 4ABC MSE B   32  MET  SELENOMETHIONINE
*)

type modres_fieldpdb_symbol =
  | Empty_1                      (*  7- 7 string *)
  | Modres_id                    (*  8-11 string *)
  | Empty_2                      (* 12-12 string *)
  | Modres_residue_name          (* 13-15 string *)
  | Empty_3                      (* 16-16 string *)
  | Modres_chain_id              (* 17-17 char *)
  | Empty_4                      (* 18-18 string *)
  | Modres_sequence_number       (* 19-22 int *)
  | Modres_insertion_code        (* 23-23 char *)
  | Empty_5                      (* 24-24 string *)
  | Modres_standard_residue_name (* 25-27 string *)
  | Empty_6                      (* 28-29 string *) 
  | Modres_description           (* 30-70 string *) 
  | Empty_7                      (* 71-80 string *)
;;

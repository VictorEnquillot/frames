(** {3 The functionalities for a Value for a HEADER Record of the Pdb file.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}
        http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HEADER    PHOTOSYNTHESIS                          28-MAR-07   2UXK              
HEADER    TRANSFERASE/TRANSFERASE INHIBITOR       17-SEP-04   1XH6              
HEADER    MEMBRANE PROTEIN, TRANSPORT PROTEIN     20-JUL-06   2HRT        
*)


let column_and_width_and_symbol_list () =
  let frm_smb_rcp = Header_recordpdb_symbol_formula_v.make () in
  List.map 
    Header_fieldpdb_data_v.column_and_width_and_symbol_of_header_fieldpdb_symbol
  frm_smb_rcp
;;
 
let value str_rcp =
  let col_len_smb_l = 
    column_and_width_and_symbol_list () in
  List.map 
    (fun (c, w, smb) -> 
      Header_fieldpdb_data_v.data_of_string_of_header_fieldpdb_symbol 
	(String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal c) (Ordinal_p.int_of_ordinal w)) smb
    )
    col_len_smb_l
;;


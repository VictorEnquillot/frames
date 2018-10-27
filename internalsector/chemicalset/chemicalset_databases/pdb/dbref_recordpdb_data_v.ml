(** {3 The functionalities for a Value for a SEQRES Record of the Pdb file.} *)

let nam_cod = "Dbref_recordpdb_data_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#DBREF}
        http://www.wwpdb.org/documentation/format32/sect3.html#DBREF}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
DBREF  2JHQ A    1   226  UNP    Q9KPK8   UNG_VIBCH        1    226 
           
DBREF  3AKY A    1   219  UNP    P07170   KAD1_YEAST       3    221     

DBREF  1HAN A    2   298  UNP    P47228   BPHC_BURCE       1    297 

DBREF  3D3I A    0   760  UNP    P42592   YGJK_ECOLI      23    783             
DBREF  3D3I B    0   760  UNP    P42592   YGJK_ECOLI      23    783        

DBREF  3C2J A    1     8  PDB    3C2J     3C2J             1      8             
DBREF  3C2J B  101   108  PDB    3C2J     3C2J           101    108             

DBREF  1FFK 0    2  2923  GB     3377779  AF034620      2597   5518             
DBREF  1FFK 9    1   122  GB     3377779  AF034620      5658   5779      
DBREF  1UNJ X    6    11  NORINE NOR00228 NOR00228         6     11 
*)


let column_and_width_and_symbol_list () =
  let frm_smb_rcp = Dbref_recordpdb_symbol_formula_v.make () in
  List.map 
    Dbref_fieldpdb_data_v.column_and_width_and_symbol_of_dbref_fieldpdb_symbol
  frm_smb_rcp
;;
 
let data str_rcp =
  let col_len_smb_l = 
    column_and_width_and_symbol_list () in
  List.map 
    (fun (c, w, smb) -> 
      Dbref_fieldpdb_data_v.data_of_string_of_dbref_fieldpdb_symbol 
	(String.sub str_rcp 
	   (Ordinal_p.int_decrement_of_ordinal c) w) 
	smb
    )
    col_len_smb_l
;;

let dbref_chain_idpdb_off_recordpdb_string str_rcp =
 let (col, wid) = 
    Dbref_fieldpdb_data_v.column_and_width_of_dbref_fieldpdb_symbol 
      Dbref_fieldpdb_symbol_t.Dbref_chain_id in
 let str_cid =  
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in 
 
  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    Dbref_fieldpdb_data_v.print_fatal_error nam_cod "chain_idpdb_off_dbref_recordpdb_string" str_cid col wid;
;;


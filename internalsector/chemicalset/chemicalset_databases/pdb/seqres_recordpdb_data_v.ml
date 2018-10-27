(** {3 The functionalities for a Value for a SEQRES Record of the Pdb file.} *)

let nam_cod = "Seqres_recordpdb_data_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#SEQRES}
        http://www.wwpdb.org/documentation/format32/sect2.html#SEQRES}
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SEQRES   1 A   21  GLY ILE VAL GLU GLN CYS CYS THR SER ILE CYS SER LEU          
SEQRES   2 A   21  TYR GLN LEU GLU ASN TYR CYS ASN                              
SEQRES   1 B   30  PHE VAL ASN GLN HIS LEU CYS GLY SER HIS LEU VAL GLU          
SEQRES   2 B   30  ALA LEU TYR LEU VAL CYS GLY GLU ARG GLY PHE PHE TYR          
SEQRES   3 B   30  THR PRO LYS ALA                                              
*)


let column_and_width_and_symbol_list () =
  let frm_smb_rcp = Seqres_recordpdb_symbol_formula_v.make () in
  List.map 
    Seqres_fieldpdb_data_v.column_and_width_and_symbol_of_seqres_fieldpdb_symbol
  frm_smb_rcp
;;
 
let data str_rcp =
  let col_len_smb_l = 
    column_and_width_and_symbol_list () in
  List.map 
    (fun (c, w, sym_sfp) -> 
      Seqres_fieldpdb_data_v.data_of_string_of_seqres_fieldpdb_symbol 
	(String.sub str_rcp 
	   (Ordinal_p.int_decrement_of_ordinal c) w) 
	smb_sfp
    )
    col_len_smb_l
;;

let seqres_chain_idpdb_off_recordpdb_string str_rcp =
 let (col, wid) = 
    Seqres_fieldpdb_data_v.column_and_width_of_seqres_fieldpdb_symbol 
      Seqres_fieldpdb_symbol_t.Seqres_chain_id in
 let str_cid =  
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in 

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    Seqres_fieldpdb_data_v.print_fatal_error nam_cod "chain_idpdb_off_seqres_recordpdb_string" str_cid Ordinal_p.print col wid;
;;


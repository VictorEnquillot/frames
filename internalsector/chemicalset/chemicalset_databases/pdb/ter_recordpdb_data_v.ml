(** {3 The functionalities for a Value for a SEQRES Record of the Pdb file.} *)

let nam_cod = "Ter_recordpdb_data_v";;


let column_and_width_and_symbol_list () =
  let frm_smb_rcp = Ter_recordpdb_symbol_formula_v.make () in
  List.map 
    Ter_fieldpdb_data_v.column_and_width_and_symbol_of_ter_fieldpdb_symbol
  frm_smb_rcp
;;
 
let data str_rcp =
  let col_len_smb_l = 
    column_and_width_and_symbol_list () in
  List.map 
    (fun (c, w, smb) -> 
      Ter_fieldpdb_data_v.data_of_string_of_ter_fieldpdb_symbol 
	(String.sub str_rcp 
	   (Ordinal_p.int_decrement_of_ordinal c) w) 
	smb
    )
    col_len_smb_l
;;

let ter_chain_idpdb_off_recordpdb_string str_rcp =
 let (col, wid) = 
    Ter_fieldpdb_data_v.column_and_width_of_ter_fieldpdb_symbol 
      Ter_fieldpdb_symbol_t.Ter_chain_id in
 let str_cid =  
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in 
 
  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    Ter_fieldpdb_data_v.print_fatal_error nam_cod "chain_idpdb_off_ter_recordpdb_string" str_cid col wid;
;;


(** {3 The functionalities for Data for a SEQRES Pdb Pack.} *)

let nam_cod = "Seqres_packpdb_data_v";;

(*
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890

SEQRES   2 B  146  LEU TRP GLY LYS VAL ASN VAL ASP GLU VAL GLY GLY GLU      
*)


(** {6 Making.} *)

let make kyp_pkp =
  let sym_pkp = Packpdb_keypdb_v.packpdb_symbol_off_packpdb_keypdb kyp_pkp in
  if sym_pkp <> Packpdb_symbol_v.seqres 
  then failwith "Not_SEQRES:Sqpd_v.make"
  else 
    let dat_pkp = Packpdb_data_v.retrieve kyp_pkp in
    Packpdb_data_v.string_list_off_packpdb_data dat_pkp
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun col wid str_rcp =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.
     @.     expecting Thirteen_names field from column %i to column %i.\
     @.     found an input string truncated at coluumn %i \      
     in SEQRES record :\
     @.    >%s<.\
     @.    >         1         2         3         4         5         6         7         8\
     @.    >12345678901234567890123456789012345678901234567890123456789012345678901234567890
     @.    cure : padd with blanks this SEQRES record in Pdb file.
     @]@."
     nam_cod nam_fun (Ordinal_p.int_of_ordinal col) ((Ordinal_p.int_of_ordinal col) +wid) (String.length str_rcp) str_rcp; 
    assert false
;;

let seqres_thirteen_names_of_string_of_ordinal_of_int str_rcp col wid =
  try String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid 
  with (Invalid_argument _) -> 
    print_fatal_error "seqres_thirteen_names_of_string_of_ordinal_of_int" col wid str_rcp 

;;

let residuepdb_symbol_list_off_seqres_recorpdb_string str_rcp col wid =
  let str_thn =  
    seqres_thirteen_names_of_string_of_ordinal_of_int str_rcp col wid in
  let nam_ama_l = String_v.word_list_off_string str_thn in
  List.map
    Residuepdb_symbol_v.residuepdb_symbol_of_string nam_ama_l
;;

let residuepdb_symbol_list_off_seqres_packpdb_data dat_pkp_sqr =
  let (col, wid) = 
    Seqres_fieldpdb_data_v.column_and_width_of_seqres_fieldpdb_symbol 
      Seqres_fieldpdb_symbol_v.seqres_thirteen_names in
  
  let sym_ama_ll =
    List.map
      (fun s -> 
	residuepdb_symbol_list_off_seqres_recorpdb_string s col wid)
     dat_pkp_sqr  in
  List.flatten sym_ama_ll
;;

let print_fatal_error nam_fun kyp_pkp =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
     @.     expecting SEQRES Symbol.\      
     found >%s< Symbol in keypdb:@.>%s<.\      
     cure : check making of keypdb.@]@."
     nam_cod nam_fun
    (Packpdb_symbol_v.name (Packpdb_keypdb_v.packpdb_symbol_off_packpdb_keypdb kyp_pkp))
    (Packpdb_keypdb_v.name kyp_pkp); assert false
;;

let residuepdb_symbol_list_off_packpdb_keypdb kyp_pkp =
  let dat_pkp_sqr = 
    try make kyp_pkp 
    with Failure "Not_SEQRES:Sqpd_v.make" -> 
      print_fatal_error "residuepdb_symbol_list_off_packpdb_keypdb" kyp_pkp  
  in
  residuepdb_symbol_list_off_seqres_packpdb_data dat_pkp_sqr
;;

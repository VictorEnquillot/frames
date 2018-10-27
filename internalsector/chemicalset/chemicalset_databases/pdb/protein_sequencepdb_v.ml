(** {3 The functionalities for a Sequence for a Protein from SEQRES Pdb records.} *)

let nam_cod = "protein_sequencepdb_v";;

(*
SEQRES   1     58  ARG PRO ASP PHE CYS LEU GLU PRO PRO TYR THR GLY PRO  
SEQRES   2 B  146  LEU TRP GLY LYS VAL ASN VAL ASP GLU VAL GLY GLY GLU      
*)


(** {6 Making.} *)

let chain_idpdb_and_residuepdb_symbol_list_of_entrypdb_symbol_of_chain_idpdb sym_enp cpi =
  let kyp_clp = Clusterpdb_keypdb_v.make Packpdb_symbol_v.seqres sym_enp in
  let mrp_pkp = Packpdb_markerpdb_v.make Packpdb_symbol_v.seqres [cpi] in 
  let kyp_pkp = Packpdb_keypdb_v.make mrp_pkp kyp_clp in
  let sym_res_l = 
    Seqres_packpdb_data_v.residuepdb_symbol_list_off_packpdb_keypdb 
      kyp_pkp in
  Doublet_v.make cpi sym_res_l
;;

let make sym_enp =
  let cpi_l = Seqres_clusterpdb_data_v.chain_idpdb_list_of_entrypdb_symbol sym_enp in
  List.map 
    (chain_idpdb_and_residuepdb_symbol_list_of_entrypdb_symbol_of_chain_idpdb sym_enp) 
    cpi_l
;;

(** {6 Converting.} *)

let name psq =
  List_v.name_with_separator Chain_sequencepdb_v.name "\n" psq
;;

let print ppf psq =
  List_v.print_with_separator Chain_sequencepdb_v.print "\n" ppf psq
;;

(** {6 Querying.} *)

let has_of_chain_idpdb_of_chain_sequencepdb cpi csq =
  let id = Doublet_v.left_off_doublet csq in 
  (cpi = Char.uppercase id)
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun c n csq_l =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.\
     @.     expecting only one chain with Chain_idpdb >%c<.\      
     @.     found %i such Chain_idpdb in Pdb protein sequence:\
     @.    >%a<.\      
     @.     cure : check Polypeptide définition or chain_idpdb list.@]@."
     nam_cod nam_fun c n print csq_l;
     assert false
;;

let chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb sym_enp cpi =
  let csq_l = make sym_enp in
  let l = List.filter 
      (has_of_chain_idpdb_of_chain_sequencepdb cpi) csq_l in
  if List.length l = 1
  then List.hd l 
  else print_fatal_error "chain_sequencepdb_of_entrypdb_symbol_of_chain_idpdb" cpi (List.length l) csq_l
;;

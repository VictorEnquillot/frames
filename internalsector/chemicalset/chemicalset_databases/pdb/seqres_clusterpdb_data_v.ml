(** {3 The functionalities for a Cluster of SEQRES Pdb records.} *)

let nam_cod = "Seqres_clusterpdb_data_v"

(*
SEQRES   1 A   58  ARG PRO ASP PHE CYS LEU GLU PRO PRO TYR THR GLY PRO  
SEQRES   2 B  146  LEU TRP GLY LYS VAL ASN VAL ASP GLU VAL GLY GLY GLU      
*)


(** {6 Making.} *)

let make kyp_clp =
  let sym_clp = Clusterpdb_keypdb_v.clusterpdb_symbol_off_clusterpdb_keypdb kyp_clp in
  if sym_clp <> Clusterpdb_symbol_v.seqres 
  then failwith "Not_SEQRES:Sqpd_v.make"
  else Clusterpdb_data_v.string_list_off_clusterpdb_keypdb kyp_clp
;;

(** {6 Extracting.} *)

let print_fatal_error nam_cod nam fld c=
      Format.fprintf
	Format.err_formatter
	"@.@[<hov>%s.%s: --- Fatal Error ---\
        @.    expecting field >%s< at column %i be a Character.\
        found End_of_file.\
        cure : check field@]@."
	nam_cod nam fld (Ordinal_p.int_of_ordinal c);
        assert false;
;;

let seqres_chain_idpdb_of_string_of_ordinal_of_int str_rcp col wid =
  let str_cid = 
    String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in
  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_seqres_recordpdb_string" str_cid col
;;

let chain_idpdb_list_of_seqres_clusterpdb_data dat_cpl_sqr =
  let (col, wid) = 
    Seqres_fieldpdb_data_v.column_and_width_of_seqres_fieldpdb_symbol 
      Seqres_fieldpdb_symbol_v.seqres_chain_id in
  
  let cid_l = List.map
      (fun s -> 
	seqres_chain_idpdb_of_string_of_ordinal_of_int s col wid)
      dat_cpl_sqr in
  List_v.keep_first_once_list_off_list cid_l
;;
(* For each record string of dat_cpl :
   - get chain_id fieldpdb *)

let chain_idpdb_list_of_entrypdb_symbol sym_enp =
  let kyp_clp = Clusterpdb_keypdb_v.make Clusterpdb_symbol_v.seqres sym_enp in
  let dat_cpl_sqr = make kyp_clp in
  chain_idpdb_list_of_seqres_clusterpdb_data dat_cpl_sqr
;;


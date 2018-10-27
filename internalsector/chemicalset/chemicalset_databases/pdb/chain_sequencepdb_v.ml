(** {3 The functionalities for a Chain Sequence for a Protein from SEQRES Pdb records.} *)

let nam_cod = "Chain_sequencepdb_v";;

(*
SEQRES   1     58  ARG PRO ASP PHE CYS LEU GLU PRO PRO TYR THR GLY PRO  
*)


(** {6 Making.} *)

let make cid sym_res_l =
  Doublet_v.make cid sym_res_l
;;

let chain_sequencepdb_of_packpdb_keypdb kyp_pkp =
  let cid = Packpdb_keypdb_v.chain_idpdb_off_packpdb_keypdb kyp_pkp in
  let sym_res_l = Seqres_packpdb_data_v.residuepdb_symbol_list_off_packpdb_keypdb kyp_pkp in
  make cid sym_res_l
;;

(** {6 Extracting.} *)

let chain_idpdb_off_chain_sequencepdb csq =
  Doublet_v.left_off_doublet csq 
;;

let residuepdb_symbol_list_off_chain_sequencepdb csq =
  Doublet_v.right_off_doublet csq 
;;

(** {6 Converting.} *)

let name csq =
  let nam_cid c = Format.sprintf "%c" c in
  let nam_l l = List_v.name_with_separator Residuepdb_symbol_v.name " " l in
  Doublet_v.name nam_cid nam_l csq 
;;

let print ppf csq =
  let prt_cid ppf c = Format.fprintf ppf "%c" c in
  let prt_l ppf l = List_v.print_with_separator Residuepdb_symbol_v.print " " ppf l in
  Doublet_v.print prt_cid prt_l ppf csq
;;

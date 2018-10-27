(** {3 The Key functionnalities for a Pack of a Pdb Entry} *)

let nam_cod = "Packpdb_keypdb_v";;


(** {6 Making.} *)

let make mrp_pkp kyp_clp = 
  Doublet_v.make mrp_pkp kyp_clp
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp = 
  let mrp_pkp = Packpdb_markerpdb_v.packpdb_markerpdb_off_recordpdb_string str_rcp in
  let kyp_clp = 
    Clusterpdb_keypdb_v.clusterpdb_keypdb_of_recordpdb_string_of_entrypdb_symbol 
      str_rcp sym_enp in
  make mrp_pkp kyp_clp 
;;

let packpdb_markerpdb_off_packpdb_keypdb kyp_pkp =
  Doublet_v.left_off_doublet kyp_pkp
;;

let packpdb_symbol_off_packpdb_keypdb kyp_pkp =
  let mrp_pkp = packpdb_markerpdb_off_packpdb_keypdb kyp_pkp in
  Packpdb_markerpdb_v.packpdb_symbol_off_packpdb_markerpdb mrp_pkp
;;

let chain_idpdb_off_packpdb_keypdb kyp_pkp =
  let mrp_pkp = packpdb_markerpdb_off_packpdb_keypdb kyp_pkp in
  let cid_l = Packpdb_markerpdb_v.packpdb_chain_idpdb_list_off_packpdb_markerpdb mrp_pkp in
  List.hd cid_l 
;;

let clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp =
  Doublet_v.right_off_doublet kyp_pkp
;;

let entrypdb_symbol_off_packpdb_keypdb kyp_pkp =
  let kyp_clp = clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp in
  Clusterpdb_keypdb_v.entrypdb_symbol_off_clusterpdb_keypdb kyp_clp
;;

(** {6 Querying.} *)

let has_of_packpdb_keypdb_of_recordpdb_string kyp_pkp str_rcp =
  let sym_enp = entrypdb_symbol_off_packpdb_keypdb kyp_pkp in
  let kyp_pkp_a = 
    packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp in
  kyp_pkp = kyp_pkp_a
;;

let has_same_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp str_rcp_a str_rcp_b =
  let kyp_pkp_a = 
    packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_a in
  let kyp_pkp_b = 
    packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_b in
  kyp_pkp_a = kyp_pkp_b
;;

let compare kyp_pkp_a kyp_pkp_b =
  let mrp_pkp_a = packpdb_markerpdb_off_packpdb_keypdb kyp_pkp_a in
  let mrp_pkp_b = packpdb_markerpdb_off_packpdb_keypdb kyp_pkp_b in
  let kyp_clp_a = clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp_a in
  let kyp_clp_b = clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp_b in
  (Packpdb_markerpdb_v.compare mrp_pkp_a mrp_pkp_b) + 10 * (Clusterpdb_keypdb_v.compare kyp_clp_a kyp_clp_b)
;;

(** {6 Converting.} *)

let name kyp_pkp =
  Doublet_v.name Packpdb_markerpdb_v.name Clusterpdb_keypdb_v.name kyp_pkp
;;

let print ppf kyp_pkp = 
  Doublet_v.print Packpdb_markerpdb_v.print Clusterpdb_keypdb_v.print ppf kyp_pkp
;;



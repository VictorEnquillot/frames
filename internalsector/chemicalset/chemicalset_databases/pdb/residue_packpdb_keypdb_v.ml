(** {3 The Key functionnalities for a Residue_pack of a Pdb Entry} *)

let nam_cod = "Residue_packpdb_keypdb_v";;


(** {6 Making.} *)

let make mrp_rpk kyp_pkp = 
  Doublet_v.make mrp_rpk kyp_pkp
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp = 
  let mrp_rpk = Residue_packpdb_markerpdb_v.residue_packpdb_markerpdb_off_recordpdb_string str_rcp in
  let kyp_pkp = 
    Packpdb_keypdb_v.packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in 
  make mrp_rpk kyp_pkp 
;;

(** {6 Extracting.} *)

let residue_packpdb_markerpdb_off_residue_packpdb_keypdb kyp_rpk =
  Doublet_v.left_off_doublet kyp_rpk
;;

let residue_name_off_residue_packpdb_keypdb kyp_rpk =
  let mrp_rpk = residue_packpdb_markerpdb_off_residue_packpdb_keypdb kyp_rpk in
  Residue_packpdb_markerpdb_v.residue_name_off_residue_packpdb_markerpdb mrp_rpk
;;

let packpdb_keypdb_off_residue_packpdb_keypdb kyp_rpk =
  Doublet_v.right_off_doublet kyp_rpk
;;

let clusterpdb_keypdb_off_residue_packpdb_keypdb kyp_rpk =
  let kyp_pkp = packpdb_keypdb_off_residue_packpdb_keypdb kyp_rpk in
  Packpdb_keypdb_v.clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp 
;;

let entrypdb_symbol_off_residue_packpdb_keypdb kyp_rpk =
  let kyp_clp = clusterpdb_keypdb_off_residue_packpdb_keypdb kyp_rpk in
  Clusterpdb_keypdb_v.entrypdb_symbol_off_clusterpdb_keypdb kyp_clp
;;

(** {6 Querying.} *)

let has_of_residue_packpdb_keypdb_of_recordpdb_string kyp_rpk str_rcp =
  let sym_enp = entrypdb_symbol_off_residue_packpdb_keypdb kyp_rpk in
  let kyp_rpk_a = 
    residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp in
  kyp_rpk = kyp_rpk_a
;;

let has_same_residue_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp str_rcp_a str_rcp_b =
  let kyp_rpk_a = 
    residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_a in
  let kyp_rpk_b = 
    residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_b in
  kyp_rpk_a = kyp_rpk_b
;;

let compare kyp_rpk_a kyp_rpk_b =
  Doublet_v.compare Residue_packpdb_markerpdb_v.compare Packpdb_keypdb_v.compare kyp_rpk_a kyp_rpk_b 
;;

(** {6 Converting.} *)

let name kyp_rpk =
  Doublet_v.name Residue_packpdb_markerpdb_v.name Packpdb_keypdb_v.name kyp_rpk
;;

let print ppf kyp_rpk = 
  Doublet_v.print Residue_packpdb_markerpdb_v.print Packpdb_keypdb_v.print ppf kyp_rpk
;;



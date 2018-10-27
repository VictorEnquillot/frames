(** {3 The Key functionnalities for a Molecule_pack of a Pdb Entry} *)

let nam_cod = "Molecule_packpdb_keypdb_v";;


(** {6 Making.} *)

let make mrp_mpk kyp_pkp = 
  Doublet_v.make mrp_mpk kyp_pkp
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp = 
  let mrp_mpk = Molecule_packpdb_markerpdb_v.molecule_packpdb_markerpdb_off_recordpdb_string str_rcp in
  let kyp_pkp = 
    Packpdb_keypdb_v.packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in 
  make mrp_mpk kyp_pkp 
;;

(** {6 Extracting.} *)

let molecule_packpdb_markerpdb_off_molecule_packpdb_keypdb kyp_mpk =
  Doublet_v.left_off_doublet kyp_mpk
;;

let molecule_name_off_molecule_packpdb_keypdb kyp_mpk =
  let mrp_mpk = molecule_packpdb_markerpdb_off_molecule_packpdb_keypdb kyp_mpk in
  Molecule_packpdb_markerpdb_v.molecule_name_off_molecule_packpdb_markerpdb mrp_mpk
;;

let packpdb_keypdb_off_molecule_packpdb_keypdb kyp_mpk =
  Doublet_v.right_off_doublet kyp_mpk
;;

let clusterpdb_keypdb_off_molecule_packpdb_keypdb kyp_mpk =
  let kyp_pkp = packpdb_keypdb_off_molecule_packpdb_keypdb kyp_mpk in
  Packpdb_keypdb_v.clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp 
;;

let entrypdb_symbol_off_molecule_packpdb_keypdb kyp_mpk =
  let kyp_clp = clusterpdb_keypdb_off_molecule_packpdb_keypdb kyp_mpk in
  Clusterpdb_keypdb_v.entrypdb_symbol_off_clusterpdb_keypdb kyp_clp
;;

(** {6 Querying.} *)

let has_of_molecule_packpdb_keypdb_of_recordpdb_string kyp_mpk str_rcp =
  let sym_enp = entrypdb_symbol_off_molecule_packpdb_keypdb kyp_mpk in
  let kyp_mpk_a = 
    molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp in
  kyp_mpk = kyp_mpk_a
;;

let has_same_molecule_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp str_rcp_a str_rcp_b =
  let kyp_mpk_a = 
    molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_a in
  let kyp_mpk_b = 
    molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_b in
  kyp_mpk_a = kyp_mpk_b
;;

let compare kyp_mpk_a kyp_mpk_b =
  Doublet_v.compare Molecule_packpdb_markerpdb_v.compare Packpdb_keypdb_v.compare kyp_mpk_a kyp_mpk_b 
;;

(** {6 Converting.} *)

let name kyp_mpk =
  Doublet_v.name Molecule_packpdb_markerpdb_v.name Packpdb_keypdb_v.name kyp_mpk
;;

let print ppf kyp_mpk = 
  Doublet_v.print Molecule_packpdb_markerpdb_v.print Packpdb_keypdb_v.print ppf kyp_mpk
;;



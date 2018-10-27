(** {3 The Key functionnalities for a Pdb Hetatm_record} *)

let nam_cod = "Hetatm_recordpdb_keypdb_v";;


(** {6 Making.} *)

let make mrp_ark kyp_rpk = 
  Doublet_v.make mrp_ark kyp_rpk
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp = 
  let mrp_ark = Hetatm_recordpdb_markerpdb_v.hetatm_recordpdb_markerpdb_off_recordpdb_string str_rcp in
  let kyp_rpk = 
    Molecule_packpdb_keypdb_v.molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in 
  make mrp_ark kyp_rpk 
;;

let hetatm_recordpdb_markerpdb_off_hetatm_recordpdb_keypdb kyp_ark =
  Doublet_v.left_off_doublet kyp_ark
;;

let hetatm_name_off_hetatm_recordpdb_keypdb kyp_ark =
  let mrp_ark = hetatm_recordpdb_markerpdb_off_hetatm_recordpdb_keypdb kyp_ark in
  Hetatm_recordpdb_markerpdb_v.hetatm_name_off_hetatm_recordpdb_markerpdb mrp_ark
;;

let molecule_packpdb_keypdb_off_hetatm_recordpdb_keypdb kyp_ark =
  Doublet_v.right_off_doublet kyp_ark
;;

let molecule_name_off_hetatm_recordpdb_keypdb kyp_ark =
  let kyp_rpk = molecule_packpdb_keypdb_off_hetatm_recordpdb_keypdb kyp_ark in
  Molecule_packpdb_keypdb_v.molecule_name_off_molecule_packpdb_keypdb kyp_rpk 
;;

let entrypdb_symbol_off_hetatm_recordpdb_keypdb kyp_ark =
  let kyp_rpk = molecule_packpdb_keypdb_off_hetatm_recordpdb_keypdb kyp_ark in
  Molecule_packpdb_keypdb_v.entrypdb_symbol_off_molecule_packpdb_keypdb kyp_rpk
;;

(** {6 Querying.} *)

let has_of_hetatm_recordpdb_keypdb_of_recordpdb_string kyp_ark str_rcp =
  let sym_enp = entrypdb_symbol_off_hetatm_recordpdb_keypdb kyp_ark in
  let kyp_ark_a = 
    hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp in
  kyp_ark = kyp_ark_a
;;

let has_same_hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp str_rcp_a str_rcp_b =
  let kyp_ark_a = 
    hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_a in
  let kyp_ark_b = 
    hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_b in
  kyp_ark_a = kyp_ark_b
;;

let compare kyp_ark_a kyp_ark_b =
  Doublet_v.compare Hetatm_recordpdb_markerpdb_v.compare Molecule_packpdb_keypdb_v.compare kyp_ark_a kyp_ark_b 
;;

(** {6 Converting.} *)

let name kyp_ark =
  Doublet_v.name Hetatm_recordpdb_markerpdb_v.name Molecule_packpdb_keypdb_v.name kyp_ark
;;

let print ppf kyp_ark = 
  Doublet_v.print Hetatm_recordpdb_markerpdb_v.print Molecule_packpdb_keypdb_v.print ppf kyp_ark
;;



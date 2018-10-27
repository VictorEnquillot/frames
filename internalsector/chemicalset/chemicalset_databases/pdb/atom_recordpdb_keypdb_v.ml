(** {3 The Key functionnalities for a Pdb Atom_record} *)

let nam_cod = "Atom_recordpdb_keypdb_v";;


(** {6 Making.} *)

let make mrp_ark kyp_rpk = 
  Doublet_v.make mrp_ark kyp_rpk
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp = 
  let mrp_ark = Atom_recordpdb_markerpdb_v.atom_recordpdb_markerpdb_off_recordpdb_string str_rcp in
  let kyp_rpk = 
    Residue_packpdb_keypdb_v.residue_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in 
  make mrp_ark kyp_rpk 
;;

let atom_recordpdb_markerpdb_off_atom_recordpdb_keypdb kyp_ark =
  Doublet_v.left_off_doublet kyp_ark
;;

let atom_name_off_atom_recordpdb_keypdb kyp_ark =
  let mrp_ark = atom_recordpdb_markerpdb_off_atom_recordpdb_keypdb kyp_ark in
  Atom_recordpdb_markerpdb_v.atom_name_off_atom_recordpdb_markerpdb mrp_ark
;;

let residue_packpdb_keypdb_off_atom_recordpdb_keypdb kyp_ark =
  Doublet_v.right_off_doublet kyp_ark
;;

let residue_name_off_atom_recordpdb_keypdb kyp_ark =
  let kyp_rpk = residue_packpdb_keypdb_off_atom_recordpdb_keypdb kyp_ark in
  Residue_packpdb_keypdb_v.residue_name_off_residue_packpdb_keypdb kyp_rpk 
;;

let entrypdb_symbol_off_atom_recordpdb_keypdb kyp_ark =
  let kyp_rpk = residue_packpdb_keypdb_off_atom_recordpdb_keypdb kyp_ark in
  Residue_packpdb_keypdb_v.entrypdb_symbol_off_residue_packpdb_keypdb kyp_rpk
;;

(** {6 Querying.} *)

let has_of_atom_recordpdb_keypdb_of_recordpdb_string kyp_ark str_rcp =
  let sym_enp = entrypdb_symbol_off_atom_recordpdb_keypdb kyp_ark in
  let kyp_ark_a = 
    atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp in
  kyp_ark = kyp_ark_a
;;

let has_same_atom_recordpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp str_rcp_a str_rcp_b =
  let kyp_ark_a = 
    atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_a in
  let kyp_ark_b = 
    atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string sym_enp str_rcp_b in
  kyp_ark_a = kyp_ark_b
;;

let compare kyp_ark_a kyp_ark_b =
  Doublet_v.compare Atom_recordpdb_markerpdb_v.compare Residue_packpdb_keypdb_v.compare kyp_ark_a kyp_ark_b 
;;

(** {6 Converting.} *)

let name kyp_ark =
  Doublet_v.name Atom_recordpdb_markerpdb_v.name Residue_packpdb_keypdb_v.name kyp_ark
;;

let print ppf kyp_ark = 
  Doublet_v.print Atom_recordpdb_markerpdb_v.print Residue_packpdb_keypdb_v.print ppf kyp_ark
;;



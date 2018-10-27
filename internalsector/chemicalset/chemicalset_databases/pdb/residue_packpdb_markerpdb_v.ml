(** {3 The Marker functionnalities for a Residue of a Pdb Pack.} *)

let nam_cod = "Residuepdb_markerpdb_v";;


(** {6 Making.} *)

let make s i c = 
  Triplet_v.make s i c
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let residue_packpdb_markerpdb_off_recordpdb_string str_rcp =
  let s = Atom_fieldpdb_data_v.atom_residue_name_off_recordpdb_string str_rcp in
  let i = Atom_fieldpdb_data_v.atom_residue_sequence_number_off_recordpdb_string str_rcp in 
  let c = Atom_fieldpdb_data_v.atom_insertion_code_off_recordpdb_string str_rcp in

  Triplet_v.make s i c 
;;

(** {6 Converting.} *)

let name mkp_res =
  Triplet_v.name (Format.sprintf "%s") (Format.sprintf "%i") (Format.sprintf "%c") mkp_res 
;;

let print ppf mkp_res = 
  let prt_s ppf s = Format.fprintf ppf "%s" s in
  let prt_i ppf i = Format.fprintf ppf "%i" i in
  let prt_c ppf c = Format.fprintf ppf "%c" c in
  Triplet_v.print prt_s prt_i prt_c ppf mkp_res 
;;

let compare mkr_rpk_a mkr_rpk_b =
  Triplet_v.compare String.compare compare compare mkr_rpk_a mkr_rpk_b
;;

(** {6 Extracting.} *)

let residue_name_off_residue_packpdb_markerpdb mrp_pkp =
  Triplet_v.left_off_triplet mrp_pkp
;;

let residue_sequence_number_off_residue_packpdb_markerpdb mrp_pkp =
  Triplet_v.middle_off_triplet mrp_pkp
;;

let residue_insertion_code_off_residue_packpdb_markerpdb mrp_pkp =
  Triplet_v.right_off_triplet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_residue_packpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = residue_packpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_residue_packpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = residue_packpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = residue_packpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;


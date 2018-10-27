(** {3 The Marker functionnalities for a Molecule of a Pdb Pack.} *)

let nam_cod = "Moleculepdb_markerpdb_v";;


(** {6 Making.} *)

let make s i c = 
  Triplet_v.make s i c
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let molecule_packpdb_markerpdb_off_recordpdb_string str_rcp =
  let s = Hetatm_fieldpdb_data_v.hetatm_molecule_name_off_recordpdb_string str_rcp in
  let i = Hetatm_fieldpdb_data_v.hetatm_molecule_number_off_recordpdb_string str_rcp in 
  let c = Hetatm_fieldpdb_data_v.hetatm_insertion_code_off_recordpdb_string str_rcp in

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

let molecule_name_off_molecule_packpdb_markerpdb mrp_pkp =
  Triplet_v.left_off_triplet mrp_pkp
;;

let molecule_sequence_number_off_molecule_packpdb_markerpdb mrp_pkp =
  Triplet_v.middle_off_triplet mrp_pkp
;;

let molecule_insertion_code_off_molecule_packpdb_markerpdb mrp_pkp =
  Triplet_v.right_off_triplet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_molecule_packpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = molecule_packpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_molecule_packpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = molecule_packpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = molecule_packpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;


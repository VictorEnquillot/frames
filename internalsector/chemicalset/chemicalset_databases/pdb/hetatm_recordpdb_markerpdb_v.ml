(** {3 The Marker functionnalities for a Hetatm of a Pdb Record.} *)

let nam_cod = "Hetatmpdb_markerpdb_v";;


(** {6 Making.} *)

let make s c = 
  Doublet_v.make s c
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let hetatm_recordpdb_markerpdb_off_recordpdb_string str_rcp =
  let s = Hetatm_fieldpdb_data_v.hetatm_name_off_recordpdb_string str_rcp in
  let c = Hetatm_fieldpdb_data_v.hetatm_alternate_location_id_off_recordpdb_string str_rcp in

  Doublet_v.make s c 
;;

(** {6 Converting.} *)

let name mkp_res =
  Doublet_v.name (Format.sprintf "%s") (Format.sprintf "%c") mkp_res 
;;

let print ppf mkp_res = 
  let prt_s ppf s = Format.fprintf ppf "%s" s in
  let prt_c ppf c = Format.fprintf ppf "%c" c in
  Doublet_v.print prt_s prt_c ppf mkp_res 
;;

let compare mkr_rpk_a mkr_rpk_b =
  Doublet_v.compare String.compare compare mkr_rpk_a mkr_rpk_b
;;

(** {6 Extracting.} *)

let hetatm_name_off_hetatm_recordpdb_markerpdb mrp_pkp =
  Doublet_v.left_off_doublet mrp_pkp
;;

let hetatm_alternate_location_id_off_hetatm_recordpdb_markerpdb mrp_pkp =
  Doublet_v.right_off_doublet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_hetatm_recordpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = hetatm_recordpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_hetatm_recordpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = hetatm_recordpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = hetatm_recordpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;


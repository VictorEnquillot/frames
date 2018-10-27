(** {3 The Marker functionnalities for a Residue of a Pdb Entry} *)

let nam_cod = "Residuepdb_markerpdb_v";;




(** {6 Making.} *)

let make sym_amt i = 
  Doublet_v.make sym_amt i
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let residue_markerpdb_off_atom_recordpdb_string 
let arn = Atom_fieldpdb_data_v.atom_residue_name_of_atom_fieldpdb_symbol_of_recordpdb_string 
	   Atfs_t.Atom_residue_name str_rcp
;;

let arsn = Atom_fieldpdb_data_v.atom_residue_sequence_number_of_atom_fieldpdb_symbol_of_recordpdb_string 
	   Atfs_t.Atom_residue_sequence_number str_rcp
;;


let packpdb_markerpdb_off_recordpdb_string str_rcp =
  let sym_pkp = Packpdb_symbol_v.packpdb_symbol_off_recordpdb_string str_rcp in
  let chr_l = 
    chain_idpdb_list_of_recordpdb_string_of_recordpdb_symbol 
      str_rcp sym_pkp in
  Doublet_v.make sym_pkp chr_l 
;;

(** {6 Converting.} *)

let name mkp_res =
  Doublet_v.name Aminoacid_tlc_symbol_v.name (Format.sprintf "%i") mkp_res 
;;

let print ppf mkp_res = 
  Doublet_v.print Aminoacid_tlc_symbol_v.print (Format.fprintf ppf "%i") mkp_res 
;;

let compare marker_a marker_b =
  String.compare (name marker_a) (name marker_b)
;;

(** {6 Extracting.} *)

let packpdb_symbol_off_packpdb_markerpdb mrp_pkp =
  Doublet_v.left_off_doublet mrp_pkp
;;

let packpdb_chain_idpdb_list_off_packpdb_markerpdb mrp_pkp =
  Doublet_v.right_off_doublet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_packpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = packpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_packpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = packpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = packpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;


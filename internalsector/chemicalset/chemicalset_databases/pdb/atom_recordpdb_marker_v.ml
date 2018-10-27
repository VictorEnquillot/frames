(** {3 The Marker functionnalities for a Atom of a Pdb Record.} *)

let nam_cod = "Atompdb_markerpdb_v";;


(** {6 Making.} *)

let make sym_atm i c = 
  Triplet_v.make sym_atm i c
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

let atom_recordpdb_markerpdb_off_recordpdb_string str_rcp =
  let sym_amt = Atom_fieldpdb_data_v.aminoacid_tlc_symbol_off_recordpdb_string str_rcp in
  let i = Atom_fieldpdb_data_v.atom_atom_sequence_number_off_recordpdb_string str_rcp in 
  let c = Atom_fieldpdb_data_v.atom_insertion_code_off_recordpdb_string str_rcp in

  Triplet_v.make sym_amt i c 
;;

(** {6 Converting.} *)

let name mkp_res =
  Triplet_v.name Aminoacid_tlc_symbol_v.name (Format.sprintf "%i") (Format.sprintf "%c") mkp_res 
;;

let print ppf mkp_res = 
  let prt_i ppf i = Format.fprintf ppf "%i" i in
  let prt_c ppf c = Format.fprintf ppf "%c" c in
  Triplet_v.print Aminoacid_tlc_symbol_v.print prt_i prt_c ppf mkp_res 
;;

let compare mkr_rpk_a mkr_rpk_b =
  Triplet_v.compare Aminoacid_tlc_symbol_v.compare (fun i j -> i-j) compare mkr_rpk_a mkr_rpk_b
;;

(** {6 Extracting.} *)

let aminoacid_tlc_symbol_off_atom_recordpdb_markerpdb mrp_pkp =
  Triplet_v.left_off_triplet mrp_pkp
;;

let atom_sequence_number_off_atom_recordpdb_markerpdb mrp_pkp =
  Triplet_v.middle_off_triplet mrp_pkp
;;

let atom_insertion_code_off_atom_recordpdb_markerpdb mrp_pkp =
  Triplet_v.right_off_triplet mrp_pkp
;;

(** {6 Querying.} *)

let has_of_atom_recordpdb_markerpdb_of_string mkp_pkp str_rcp =
  let mkp = atom_recordpdb_markerpdb_off_recordpdb_string str_rcp in
  mkp_pkp = mkp
;;

let has_same_atom_recordpdb_markerpdb_of_string_of_string str_rcp_a str_rcp_b =
  let mkp_pkp_a = atom_recordpdb_markerpdb_off_recordpdb_string str_rcp_a in
  let mkp_pkp_b = atom_recordpdb_markerpdb_off_recordpdb_string str_rcp_b in
  mkp_pkp_a = mkp_pkp_b
;;


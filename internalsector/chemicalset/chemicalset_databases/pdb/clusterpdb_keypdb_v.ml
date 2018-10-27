(** {3 The Key functionnalities for a Pack of a Pdb Entry} *)

let nam_cod = "Clusterpdb_keypdb_v";;


(** {6 Making.} *)

let make sym_clp sym_enp =
  Doublet_v.make sym_clp sym_enp
;;

let clusterpdb_symbol_off_recordpdb_string str_rcp =
  Clusterpdb_symbol_v.read (Scanf.Scanning.from_string str_rcp)
;;

let clusterpdb_keypdb_of_recordpdb_string_of_entrypdb_symbol str_rcp sym_enp =
  let sym_cpl = clusterpdb_symbol_off_recordpdb_string str_rcp in
  make sym_cpl sym_enp
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

(** {6 Extracting.} *)

let clusterpdb_symbol_off_clusterpdb_keypdb kyp_clp =
  Doublet_v.left_off_doublet kyp_clp
;;

let entrypdb_symbol_off_clusterpdb_keypdb kyp_clp =
  Doublet_v.right_off_doublet kyp_clp
;;

(** {6 Querying.} *)

let has_of_clusterpdb_keypdb_of_recordpdb_type_string kyp_clp str_rcp =
  let sym_enp = entrypdb_symbol_off_clusterpdb_keypdb kyp_clp in
  let kyp = clusterpdb_keypdb_of_recordpdb_string_of_entrypdb_symbol 
      str_rcp sym_enp in
  kyp = kyp_clp
;;

let compare kyp_a kyp_b =
  let sym_clp_a = clusterpdb_symbol_off_clusterpdb_keypdb kyp_a in
  let sym_clp_b = clusterpdb_symbol_off_clusterpdb_keypdb kyp_b in
  let sym_enp_a = entrypdb_symbol_off_clusterpdb_keypdb kyp_a in
  let sym_enp_b = entrypdb_symbol_off_clusterpdb_keypdb kyp_b in
  (Clusterpdb_symbol_v.compare sym_clp_a sym_clp_b) + 10 * (Entrypdb_symbol_v.compare sym_enp_a sym_enp_b)
;;

(** {6 Converting.} *)

let name kyp_clp =
  Doublet_v.name Clusterpdb_symbol_v.name Entrypdb_symbol_v.name kyp_clp
;;

let print ppf kyp_clp = 
   Doublet_v.print Clusterpdb_symbol_v.print Entrypdb_symbol_v.print ppf kyp_clp
;;




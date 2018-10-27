(** {3 The functionalities for a Data for a Pack of the Pdb} *)

let nam_cod = "clusterpdb_data_v.ml"

(** {6 Making.} *)

let string_list_list_off_entrypdb_symbol sym_enp =
  let str_rcp_l = Entrypdb_data_v.string_list_off_entrypdb_symbol sym_enp in
  List_v.gather 
    Fieldpdb_tools_v.has_same_firstsixcharacters_of_string_of_string
    str_rcp_l
;;

let make sym_enp str_rcp_l = (* only one Cluster *)
  let str_rcp = List.hd str_rcp_l in
  let kyp_clp = 
    Clusterpdb_keypdb_v.clusterpdb_keypdb_of_recordpdb_string_of_entrypdb_symbol str_rcp sym_enp in
  Capped_list_v.make kyp_clp str_rcp_l
;;

let clusterpdb_data_list_off_entrypdb_symbol sym_enp =
  let str_ll = string_list_list_off_entrypdb_symbol sym_enp in
  List.map (make sym_enp) str_ll 
;;

(** {6 Extracting.} *)

let clusterpdb_keypdb_off_clusterpdb_data dat_clp =
  Capped_list_v.cap_part_off_capped_list dat_clp
;;

let clusterpdb_symbol_off_clusterpdb_data dat_clp =
  let kyp_clp = clusterpdb_keypdb_off_clusterpdb_data dat_clp in
  Clusterpdb_keypdb_v.clusterpdb_symbol_off_clusterpdb_keypdb kyp_clp
;;

let entrypdb_symbol_off_clusterpdb_data dat_clp =
  let kyp_clp = clusterpdb_keypdb_off_clusterpdb_data dat_clp in
  Clusterpdb_keypdb_v.entrypdb_symbol_off_clusterpdb_keypdb kyp_clp
;;

let string_list_off_clusterpdb_data dat_clp =
  Capped_list_v.list_part_off_capped_list dat_clp
;;

let has_of_clusterpdb_keypdb_of_clusterpdb_data kyp_clp dat_clp =
  let str_rcp = List.hd (string_list_off_clusterpdb_data dat_clp) in
  Clusterpdb_keypdb_v.has_of_clusterpdb_keypdb_of_recordpdb_type_string kyp_clp str_rcp
;;

(** {6 Retrieving.} *)

let retrieve kyp_clp =
  let sym_enp = Doublet_v.right_off_doublet kyp_clp in
  let dat_clp_l = 
    clusterpdb_data_list_off_entrypdb_symbol sym_enp in
  let dat_clp_l2 =
    List.filter (has_of_clusterpdb_keypdb_of_clusterpdb_data kyp_clp) 
      dat_clp_l in
  List.fold_left Capped_list_v.merge (Capped_list_v.make kyp_clp []) dat_clp_l2
;;

let string_list_off_clusterpdb_keypdb kyp_clp =
  let dat_clp = retrieve kyp_clp in
  string_list_off_clusterpdb_data dat_clp
;;

(** {6 Converting.} *)

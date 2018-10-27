(** {3 The functionalities for a Data for a Pack of the Pdb} *)

let nam_cod = "Packpdb_data_v"

(** {6 Making.} *)

let make sym_enp str_rcp_l = (* only one Pack out of one Cluster*)
  let str_rcp = List.hd str_rcp_l in
  let kyp_pkp = 
    Packpdb_keypdb_v.packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string 
      sym_enp str_rcp in
  Capped_list_v.make kyp_pkp str_rcp_l
;;

let packpdb_data_list_off_clusterpdb_data dat_clp =
  let sym_enp = Clusterpdb_data_v.entrypdb_symbol_off_clusterpdb_data dat_clp in
  let str_rcp_l = Clusterpdb_data_v.string_list_off_clusterpdb_data dat_clp in
  let str_rcp_ll =
    List_v.gather 
      (Packpdb_keypdb_v.has_same_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string sym_enp)
      str_rcp_l in
  List.map (make sym_enp) str_rcp_ll
;;

(** {6 Extracting.} *)

let packpdb_keypdb_off_packpdb_data dat_pkp =
  Capped_list_v.cap_part_off_capped_list dat_pkp
;;

let packpdb_keypdb_list_off_clusterpdb_data dat_clp =
  let dat_pkp_l = packpdb_data_list_off_clusterpdb_data dat_clp in
  List.map packpdb_keypdb_off_packpdb_data dat_pkp_l
;;

let packpdb_symbol_off_packpdb_data dat_pkp =
  let kyp_pkp = packpdb_keypdb_off_packpdb_data dat_pkp in
  Packpdb_keypdb_v.packpdb_symbol_off_packpdb_keypdb kyp_pkp
;;

let entrypdb_symbol_off_packpdb_data dat_pkp =
  let kyp_pkp = packpdb_keypdb_off_packpdb_data dat_pkp in
  Packpdb_keypdb_v.entrypdb_symbol_off_packpdb_keypdb kyp_pkp
;;

let string_list_off_packpdb_data dat_pkp =
  Capped_list_v.list_part_off_capped_list dat_pkp
;;

(** {6 Querying.} *)

let has_of_packpdb_keypdb_of_packpdb_data kyp_pkp dat_pkp =
  let str_rcp = List.hd (string_list_off_packpdb_data dat_pkp) in
  Packpdb_keypdb_v.has_of_packpdb_keypdb_of_recordpdb_string kyp_pkp str_rcp
;;

(** {6 Retrieving.} *)

let retrieve kyp_pkp =
  let kyp_clp = Packpdb_keypdb_v.clusterpdb_keypdb_off_packpdb_keypdb kyp_pkp in
  let dat_clp = Clusterpdb_data_v.retrieve kyp_clp in 
  let dat_pkp_l =
    packpdb_data_list_off_clusterpdb_data dat_clp in
  let dat_clp_l2 =
    List.filter (has_of_packpdb_keypdb_of_packpdb_data kyp_pkp) 
      dat_pkp_l in
  List.fold_left Capped_list_v.merge (Capped_list_v.make kyp_pkp []) dat_clp_l2
;;

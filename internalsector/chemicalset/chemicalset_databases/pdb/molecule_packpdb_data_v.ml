(** {3 The functionalities for a Data for a Residue_pack of the Pdb} *)

let nam_cod = "Residue_packpdb_data_v"


(** {6 Making.} *)

let make sym_enp str_rcp_l = (* only one Molecule_pack out of one Pack*)
  let str_rcp = List.hd str_rcp_l in
  let kyp_rpp = 
    Molecule_packpdb_keypdb_v.molecule_packpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string 
      sym_enp str_rcp in
  Capped_list_v.make kyp_rpp str_rcp_l
;;

(* Gather all Molecule_packpdb_data from Packpdb_data *)

let molecule_packpdb_data_list_off_packpdb_data dat_pkp =
  let sym_enp = Packpdb_data_v.entrypdb_symbol_off_packpdb_data dat_pkp in
  let str_rcp_l = Packpdb_data_v.string_list_off_packpdb_data dat_pkp in
  let str_rcp_ll =
    List_v.gather 
      (Molecule_packpdb_keypdb_v.has_same_molecule_packpdb_keypdb_of_entrypdb_symbol_of_string_of_string 
	 sym_enp)
      str_rcp_l in
  List.map (make sym_enp) str_rcp_ll
;;

let molecule_packpdb_data_list_off_clusterpdb_data dat_clp =
  let dat_pkp_l = Packpdb_data_v.packpdb_data_list_off_clusterpdb_data dat_clp in
  let dat_pkp_ll = 
    List.map molecule_packpdb_data_list_off_packpdb_data dat_pkp_l in
  List.flatten dat_pkp_ll
;;

(** {6 Extracting.} *)

let molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp =
  Capped_list_v.cap_part_off_capped_list dat_rpp
;;

let molecule_packpdb_keypdb_list_off_packpdb_data dat_pkp =
  let dat_rpp_l = molecule_packpdb_data_list_off_packpdb_data dat_pkp in
  List.map molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp_l
;;

let molecule_packpdb_keypdb_list_off_clusterpdb_data dat_clp =
  let dat_rpp_l = 
    molecule_packpdb_data_list_off_clusterpdb_data dat_clp in
  List.map molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp_l
;;

let molecule_name_off_molecule_packpdb_data dat_rpp =
  let kyp_rpp = molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp in
  Molecule_packpdb_keypdb_v.molecule_name_off_molecule_packpdb_keypdb kyp_rpp
;;

let molecule_name_of_moleculepdb_symbol sym_amt =
  Moleculepdb_symbol_v.name sym_amt
;;

let entrypdb_symbol_off_molecule_packpdb_data dat_rpp =
  let kyp_rpp = molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp in
  Molecule_packpdb_keypdb_v.entrypdb_symbol_off_molecule_packpdb_keypdb kyp_rpp
;;

let string_list_off_molecule_packpdb_data dat_rpp =
  Capped_list_v.list_part_off_capped_list dat_rpp
;;

let moleculepdb_symbol_of_molecule_name nam_res =
  Moleculepdb_symbol_v.moleculepdb_symbol_of_string nam_res
;;

let moleculepdb_symbol_off_molecule_packpdb_data dat_rpp =
  let nam_res = molecule_name_off_molecule_packpdb_data dat_rpp in
  moleculepdb_symbol_of_molecule_name nam_res
;;

(** {6 Querying.} *)

let has_of_molecule_packpdb_keypdb_of_molecule_packpdb_data kyp_rpp dat_rpp =
  let str_rcp = List.hd (string_list_off_molecule_packpdb_data dat_rpp) in
  Molecule_packpdb_keypdb_v.has_of_molecule_packpdb_keypdb_of_recordpdb_string kyp_rpp str_rcp
;;

(** {6 Retrieving.} *)

let print_fatal_error nam_fun kyp_rpp =
  let kyp_clp = Molecule_packpdb_keypdb_v.clusterpdb_keypdb_off_molecule_packpdb_keypdb kyp_rpp in
  let dat_clp = Clusterpdb_data_v.retrieve kyp_clp in
  let kyp_rpp_l = molecule_packpdb_keypdb_list_off_clusterpdb_data dat_clp in
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting to find Molecule Keypdb >%s< in Packpdb.\
     @     get empty record list instead.\
     @.    cure : check Keypdb list for this entry:@.%s@]@."
    nam_cod nam_fun (Molecule_packpdb_keypdb_v.name kyp_rpp) (List_v.name_with_separator Molecule_packpdb_keypdb_v.name "\n" kyp_rpp_l);
    assert false;
;;

(** {6 Retrieving.} *)

let retrieve kyp_rpp =
  let kyp_pkp = Molecule_packpdb_keypdb_v.packpdb_keypdb_off_molecule_packpdb_keypdb kyp_rpp in
  let dat_pkp = Packpdb_data_v.retrieve kyp_pkp in 
  let dat_rpp_l =
    molecule_packpdb_data_list_off_packpdb_data dat_pkp in
  let dat_pkp_l2 =
    List.filter (has_of_molecule_packpdb_keypdb_of_molecule_packpdb_data kyp_rpp) 
      dat_rpp_l in
  let cal = List.fold_left Capped_list_v.merge (Capped_list_v.make kyp_rpp []) dat_pkp_l2 in
  if Capped_list_v.list_part_off_capped_list cal <> []
  then cal
  else print_fatal_error "retrieve" kyp_rpp  
;;

(** {6 Converting.} *)

let name dat_rpp =
  let kyp_rpp = 
    molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp in
  let str_l = string_list_off_molecule_packpdb_data dat_rpp in
  let nam_s s = Format.sprintf "%s" s in
  Format.sprintf "%s@.%s" 
    (Molecule_packpdb_keypdb_v.name kyp_rpp) 
    (List_v.name_with_separator nam_s "\n" str_l) 
;;

let print ppf dat_rpp =
  let kyp_rpp = 
    molecule_packpdb_keypdb_off_molecule_packpdb_data dat_rpp in
  let str_l = string_list_off_molecule_packpdb_data dat_rpp in
  let prt_s ppf s = Format.fprintf ppf "%s" s in
  Format.fprintf ppf "%a@.%a" 
    Molecule_packpdb_keypdb_v.print kyp_rpp 
    (List_v.print_with_separator prt_s "\n") str_l 
;;

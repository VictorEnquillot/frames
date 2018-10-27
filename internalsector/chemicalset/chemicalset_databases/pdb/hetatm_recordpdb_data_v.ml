(** {3 The functionalities for a Value for a HETATM Record of the Pdb file.} *)

let nam_cod = "Hetatm_recordpdb_data_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#HETATM}
        http://www.wwpdb.org/documentation/format32/sect9.html#HETATM}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HETATM 8237 MG    MG A1001      13.872  -2.555 -29.045  1.00 27.36          MG 
 
HETATM 3835 FE   HEM A   1      17.140   3.115  15.066  1.00 14.14          FE
HETATM 8238  S   SO4 A2001      10.885 -15.746 -14.404  1.00 47.84           S  
HETATM 8239  O1  SO4 A2001      11.191 -14.833 -15.531  1.00 50.12           O  
HETATM 8240  O2  SO4 A2001       9.576 -16.338 -14.706  1.00 48.55           O  
HETATM 8241  O3  SO4 A2001      11.995 -16.703 -14.431  1.00 49.88           O  
HETATM 8242  O4  SO4 A2001      10.932 -15.073 -13.100  1.00 49.91           O  

*)


(** {6 Making.} *)

let make sym_enp str_rcp =
  let kyp_hrp =
    Hetatm_recordpdb_keypdb_v.hetatm_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in
  Doublet_v.make kyp_hrp str_rcp
;;

let hetatm_recordpdb_data_list_off_molecule_packpdb_data dat_rpp =
  let sym_enp = 
    Molecule_packpdb_data_v.entrypdb_symbol_off_molecule_packpdb_data dat_rpp in
  let str_rcp_l = 
    Molecule_packpdb_data_v.string_list_off_molecule_packpdb_data dat_rpp in
  List.map (make sym_enp) str_rcp_l
;;

(** {6 Extracting.} *)

let hetatm_recordpdb_keypdb_off_hetatm_recordpdb_data dat_hrp =
  Doublet_v.left_off_doublet dat_hrp
;;

let recordpdb_string_off_hetatm_recordpdb_data dat_hrp =
  Doublet_v.right_off_doublet dat_hrp
;;

let hetatm_name_off_hetatm_recordpdb_data dat_hrp =
  let kyp_hrp = hetatm_recordpdb_keypdb_off_hetatm_recordpdb_data dat_hrp in
  Hetatm_recordpdb_keypdb_v.hetatm_name_off_hetatm_recordpdb_keypdb kyp_hrp
;;

let hetatm_name_of_hetatmpdb_symbol sym_amt =
  Hetatmpdb_symbol_v.name sym_amt
;;

let entrypdb_symbol_off_hetatm_recordpdb_data dat_hrp =
  let kyp_hrp = hetatm_recordpdb_keypdb_off_hetatm_recordpdb_data dat_hrp in
  Hetatm_recordpdb_keypdb_v.entrypdb_symbol_off_hetatm_recordpdb_keypdb kyp_hrp
;;

let hetatmpdb_symbol_of_hetatm_name nam_atm =
  Hetatmpdb_symbol_v.hetatmpdb_symbol_of_string nam_atm
;;

let hetatmpdb_symbol_off_hetatm_recordpdb_data dat_hrp =
  let nam_atm = hetatm_name_off_hetatm_recordpdb_data dat_hrp in
  hetatmpdb_symbol_of_hetatm_name nam_atm
;;

(** {6 Querying.} *)

let has_of_hetatm_recordpdb_keypdb_of_hetatm_recordpdb_data kyp_hrp dat_hrp =
  let str_rcp = recordpdb_string_off_hetatm_recordpdb_data dat_hrp in
  Hetatm_recordpdb_keypdb_v.has_of_hetatm_recordpdb_keypdb_of_recordpdb_string kyp_hrp str_rcp
;;

(** {6 Retrieving.} *)

let print_fatal_error nam_fun nam_kyp i nam_rpp =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\ 
     @.    expecting only one Hetatm Record with keypdb >%s< .\
     found >%i< records instead.\
     cure : check Molecule Pack:@.%s@]@."
     nam_cod nam_fun nam_kyp i nam_rpp;
     assert false;
;;

let retrieve kyp_hrp =
  let kyp_rpp = 
    Hetatm_recordpdb_keypdb_v.molecule_packpdb_keypdb_off_hetatm_recordpdb_keypdb kyp_hrp in
  let dat_rpp = Molecule_packpdb_data_v.retrieve kyp_rpp in 
  let dat_hrp_l =
    hetatm_recordpdb_data_list_off_molecule_packpdb_data dat_rpp in
  let l = List.filter 
      (has_of_hetatm_recordpdb_keypdb_of_hetatm_recordpdb_data kyp_hrp) 
      dat_hrp_l in
  if (List.length l = 1)
  then List.hd l
  else print_fatal_error 
      "retrieve" (Hetatm_recordpdb_keypdb_v.name kyp_hrp) (List.length l) (Molecule_packpdb_data_v.name dat_rpp)
;;

(** {6 Converting.} *)

let name dat_hrp =
  let nam_s s = Format.sprintf "%s" s in
  Doublet_v.name Hetatm_recordpdb_keypdb_v.name nam_s dat_hrp
;;

let print ppf dat_hrp =
  let prt_s ppf s = Format.fprintf ppf "%s" s in
  Doublet_v.print Hetatm_recordpdb_keypdb_v.print prt_s ppf dat_hrp
;;


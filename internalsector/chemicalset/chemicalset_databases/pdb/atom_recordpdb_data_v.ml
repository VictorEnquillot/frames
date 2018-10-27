(** {3 The functionalities for a Value for a SEQRES Record of the Pdb file.} *)

let nam_cod = "Atom_recordpdb_data_v";;

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#ATOM}
        http://www.wwpdb.org/documentation/format32/sect9.html#ATOM}

The ATOM records are compared to the corresponding sequence database. 
Sequence discrepancies appear in the SEQADV record. 
Missing atoms are annotated in the remarks. 
HETATM records are formatted in the same way as ATOM records. 
The sequence implied by ATOM records must be identical to that given in SEQRES, 
with the exception that residues that have no coordinates, 
e.g., due to disorder, must appear in SEQRES.

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
ATOM     32  N  AARG A  -3      11.281  86.699  94.383  0.50 35.88           N  
ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
ATOM     34  CA AARG A  -3      12.353  85.696  94.456  0.50 36.67           C
ATOM     35  CA BARG A  -3      12.333  85.862  95.041  0.50 36.42           C
*)


(** {6 Making.} *)

let make sym_enp str_rcp =
  let kyp_arp =
    Atom_recordpdb_keypdb_v.atom_recordpdb_keypdb_of_entrypdb_symbol_of_recordpdb_string
      sym_enp str_rcp in
  Doublet_v.make kyp_arp str_rcp
;;

let atom_recordpdb_data_list_off_residue_packpdb_data dat_rpp =
  let sym_enp = 
    Residue_packpdb_data_v.entrypdb_symbol_off_residue_packpdb_data dat_rpp in
  let str_rcp_l = 
    Residue_packpdb_data_v.string_list_off_residue_packpdb_data dat_rpp in
  List.map (make sym_enp) str_rcp_l
;;

(** {6 Extracting.} *)

let atom_recordpdb_keypdb_off_atom_recordpdb_data dat_arp =
  Doublet_v.left_off_doublet dat_arp
;;

let recordpdb_string_off_atom_recordpdb_data dat_arp =
  Doublet_v.right_off_doublet dat_arp
;;

let atom_name_off_atom_recordpdb_data dat_arp =
  let kyp_arp = atom_recordpdb_keypdb_off_atom_recordpdb_data dat_arp in
  Atom_recordpdb_keypdb_v.atom_name_off_atom_recordpdb_keypdb kyp_arp
;;

let atom_name_of_atompdb_symbol sym_amt =
  Atompdb_symbol_v.name sym_amt
;;

let entrypdb_symbol_off_atom_recordpdb_data dat_arp =
  let kyp_arp = atom_recordpdb_keypdb_off_atom_recordpdb_data dat_arp in
  Atom_recordpdb_keypdb_v.entrypdb_symbol_off_atom_recordpdb_keypdb kyp_arp
;;

let atompdb_symbol_of_atom_name nam_atm =
  Atompdb_symbol_v.atompdb_symbol_of_string nam_atm
;;

let atompdb_symbol_off_atom_recordpdb_data dat_arp =
  let nam_atm = atom_name_off_atom_recordpdb_data dat_arp in
  atompdb_symbol_of_atom_name nam_atm
;;

(** {6 Querying.} *)

let has_of_atom_recordpdb_keypdb_of_atom_recordpdb_data kyp_arp dat_arp =
  let str_rcp = recordpdb_string_off_atom_recordpdb_data dat_arp in
  Atom_recordpdb_keypdb_v.has_of_atom_recordpdb_keypdb_of_recordpdb_string kyp_arp str_rcp
;;

(** {6 Retrieving.} *)

let print_fatal_error nam_fun nam_kyp i nam_rpp =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\ 
     @.    expecting only one Atom Record with keypdb >%s< .\
     found >%i< records instead.\
     cure : check Residue Pack:@.%s@]@."
     nam_cod nam_fun nam_kyp i nam_rpp;
     assert false;
;;

let retrieve kyp_arp =
  let kyp_rpp = 
    Atom_recordpdb_keypdb_v.residue_packpdb_keypdb_off_atom_recordpdb_keypdb kyp_arp in
  let dat_rpp = Residue_packpdb_data_v.retrieve kyp_rpp in 
  let dat_arp_l =
    atom_recordpdb_data_list_off_residue_packpdb_data dat_rpp in
  let l = List.filter 
      (has_of_atom_recordpdb_keypdb_of_atom_recordpdb_data kyp_arp) 
      dat_arp_l in
  if (List.length l = 1)
  then List.hd l
  else print_fatal_error 
      "retrieve" (Atom_recordpdb_keypdb_v.name kyp_arp) (List.length l) (Residue_packpdb_data_v.name dat_rpp)
;;

(** {6 Converting.} *)

let name dat_arp =
  let nam_s s = Format.sprintf "%s" s in
  Doublet_v.name Atom_recordpdb_keypdb_v.name nam_s dat_arp
;;

let print ppf dat_arp =
  let prt_s ppf s = Format.fprintf ppf "%s" s in
  Doublet_v.print Atom_recordpdb_keypdb_v.print prt_s ppf dat_arp
;;


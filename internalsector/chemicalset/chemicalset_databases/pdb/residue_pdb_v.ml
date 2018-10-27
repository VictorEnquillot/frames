(* $Id: residue_pdbs.ml,v 1.8 2007-08-22 17:43:05 colonna Exp $ *)
let nam_cod = "Residue_pdb_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

(** {3 The Functions to handle Residue_pdb.} *)

(** {9 Residue_pdb_t Readings.} *)
(**
{[
    Example : ((Ile, Altloc_A, Chain_B), (7, Insertion_C), 10, 5XYZ) 
    for "AILE_B___7C" if it is the 10th residue of the chain A of Protein 5XYZ. 
 ]} *)


let make_residue_mention_pdb  
    alt_idx  pdb_rss  chn_lbl  can_num  ins_idx  alt_wgt = 
{
  Residue_pdb_t.alternate_location_index_pdb = alt_idx;
  Residue_pdb_t.residue_symbol_pdb = pdb_rss;
  Residue_pdb_t.polypeptide_label_pdb = chn_lbl;
  Residue_pdb_t.residue_canonical_index_pdb = can_num;
  Residue_pdb_t.insertion_index_pdb = ins_idx;
  Residue_pdb_t.alternate_location_weight_pdb = alt_wgt;
}
;;

let make_residue_name_pdb  sym_ams_pdb  chn_lbl =  
  (smb_ams_pdb, chn_lbl)
;;

let make_alternate_location_pdb  alt_idx  alt_wgt =
  (alt_idx, alt_wgt)
;;

let make_residue_code_pdb  can_num ins_idx =
  (can_num, ins_idx)
;;

let make  pdb_rsm  ich_num  id_pdb = {
   Residue_pdb_t.residue_mention_pdb = pdb_rsm;
   Residue_pdb_t.insequence_number = ich_num;
   Residue_pdb_t.id_pdb = id_pdb;
 }
;;

(** Readings. *)

let rec read  ib =
(* 23 + n characters : 
   "AILE_B___7C_0.21_10_4PTI" 
   "AILE_B___7C_0.21"          residue_mention_pdb
                    "10"       insequence_number
                        "4PTI" id_pdb
 *)
  Scanf.bscanf ib "%r_%r_%r" 
    read_residue_mention_pdb  
    read_insequence_number
    read_id_pdb

and read_residue_mention_pdb  ib =
(* 16 characters : 
   "AILE_B___7C_0.21" 
    A                 alternate_location_index_pdb
     ILE              residue_symbol_pdb  -| --- residue_name_pdb  -----|
         B            polypeptide_label_pdb        -|                            |-- label
          ___7        residue_canonical_index_pdb  -| --- residue_code_pdb---|
              C       insertion_index_pdb           -|
                0.21  alternate_location_weight_pdb. *)

  Scanf.bscanf ib "%r%r_%r_%r%r_%r" 
    read_alternate_location_index_pdb
    read_residue_symbol_pdb
    read_polypeptide_label_pdb 
    read_residue_canonical_index_pdb
    read_insertion_index_pdb 
    read_alternate_location_weight_pdb

    (fun alt_idx pdb_rss chn_lbl can_num ins_idx alt_wgt -> 
      make_residue_mention_pdb 
	alt_idx pdb_rss  chn_lbl  can_num  ins_idx  alt_wgt)

and read_alternate_location_index_pdb ib =
  Index_pdb_v.read_alternate_location_index ib

and read_residue_symbol_pdb ib =
  Aminoacid_symbol_pdb_v.read_anycase_aminoacid_symbol_pdb ib

and read_polypeptide_label_pdb ib =
  Index_pdb_v.read_chain_index_pdb ib

and read_residue_canonical_index_pdb ib =
  Tokenpdb_v.read_integer_4 ib

and read_insertion_index_pdb ib =
  Index_pdb_v.read_insertion_index_pdb ib

and read_alternate_location_weight_pdb ib =
  Tokenpdb_v.read_float_4 ib

and read_insequence_number ib =
  Scanf.bscanf ib "%i" (function i -> i)

and read_id_pdb ib = 
  Header_pdb_v.read_id_pdb ib
;;

let read_residue_name_pdb ib =
(* 4 characters : "ILE_B" 
                   ILE         residue_symbol_pdb
                       B       polypeptide_label_pdb. *)

  Scanf.bscanf ib "%r_%r" 
    read_residue_symbol_pdb 
    read_polypeptide_label_pdb 

    (fun sym_ams_pdb chn_lbl -> make_residue_name_pdb sym_ams_pdb  chn_lbl)
;;   

(** {9 Residue_pdb_t_of_....} *)

let residue_canonical_index_pdb_of_string str =   
  let ib = Scanf.Scanning.from_string str in
  read_residue_canonical_index_pdb ib
;;

let residue_mention_pdb_of_string str =
  if not (String.length str = 11) then  
    raise (Failure "Residue_pdb_v.of_string: not an 11 characters string")
  else read_residue_mention_pdb (Scanf.Scanning.from_string str)
;;

let residue_mention_pdb_of_anycase str =  
  residue_mention_pdb_of_string (Tools_v.capitalize_force  str) 
;;

let residue_name_pdb_of_string str =
  if not (String.length str = 5) then  
    raise (Failure "Residue_pdb_v.of_string: not an 5 characters string")
  else read_residue_name_pdb (Scanf.Scanning.from_string str)
;;

let residue_name_pdb_of_anycase str =  
  residue_name_pdb_of_string (Tools_v.capitalize_force  str) 
;;

let residue_name_pdb_of_char  c  chn_lbl =
  let sym_ams_pdb = Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_char c in
  make_residue_name_pdb  sym_ams_pdb  chn_lbl
;;

let residue_name_pdb_of_one_letter_code_pdb  olc chn_lbl = 
  let sym_ams_pdb = 
    Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_one_letter_code_pdb  olc in
  make_residue_name_pdb sym_ams_pdb chn_lbl 
;;

let residue_name_pdb_of_aminoacid_symbol sym_ams_pdb chn_lbl =
  make_residue_name_pdb sym_ams_pdb chn_lbl 
;;

(* residue_pdb_of_.... *)

let residue_pdb_of_string str =
(* str is "AILE_B___7C_0.21_10" *)
  Utils_v.not_yet_implemented "residue_pdb_of_string"
(*  
read (Scanf.Scanning.from_string str)
*)
;;

let residue_pdb_of_anycase str =
  Utils_v.not_yet_implemented "residue_pdb_of_anycase"
(*  (residue_mention_pdb_of_anycase str, ich_num)*)
;;

let residue_pdb_of_aminoacid_symbol ams =
  Utils_v.not_yet_implemented "residue_pdb_of_aminoacid_symbol"
;;

let insequence_number_of_string str =
  read_insequence_number (Scanf.Scanning.from_string str)
;; 

(** {9 Residue_pdb_t Printings.} *)

let print_insequence_number  ppf  ich_num =
  Format.fprintf ppf "%i" 
  ich_num
;;

let print_polypeptide_label_pdb ppf  chn_lbl =
   Polypeptide_identifier_v.print_chain_index ppf chn_lbl
;;

let print_residue_canonical_index_pdb ppf can_num =
     Tokenpdb_v.print_integer_4 ppf can_num
 
let print_insertion_index_pdb ppf ins_idx =
   Index_pdb_v.print_insertion_index_pdb ppf ins_idx
;;

let print_residue_symbol_pdb ppf pdb_rss =
  Aminoacid_symbol_pdb_v.print ppf pdb_rss
;;

let print_alternate_location_index_pdb  ppf alt_idx =
  Format.fprintf ppf "%a" 
  Index_pdb_v.print_alternate_location_index_pdb alt_idx
;;
  
let print_alternate_location_weight_pdb  ppf alt_wgt =
  Format.fprintf ppf "%a" 
  Tokenpdb_v.print_float_4 alt_wgt
;;

let print_residue_mention_pdb  ppf  pdb_rsm =
  Format.fprintf ppf "%a%a_%a%a%a%a" 
    print_alternate_location_index_pdb pdb_rsm.Residue_pdb_t.alternate_location_index_pdb
    print_residue_symbol_pdb pdb_rsm.Residue_pdb_t.residue_symbol_pdb
    print_polypeptide_label_pdb pdb_rsm.Residue_pdb_t.polypeptide_label_pdb
    print_residue_canonical_index_pdb pdb_rsm.Residue_pdb_t.residue_canonical_index_pdb
    print_insertion_index_pdb pdb_rsm.Residue_pdb_t.insertion_index_pdb 
    print_alternate_location_weight_pdb pdb_rsm.Residue_pdb_t.alternate_location_weight_pdb
;;

let print  ppf  pdb_res =
 Format.fprintf ppf "%a_%i_%a" 
 print_residue_mention_pdb  pdb_res.Residue_pdb_t.residue_mention_pdb 
 pdb_res.Residue_pdb_t.insequence_number
 Header_pdb_v.print_id_pdb  pdb_res.Residue_pdb_t.id_pdb
;;

let print_residue_name_pdb  ppf  res_nam =
 let (pdb_rss, chn_lbl) = res_nam in
  Format.fprintf ppf "%a%a" 
   print_residue_symbol_pdb pdb_rss
   print_polypeptide_label_pdb  chn_lbl
;;

let string_of_residue_pdb  pdb_res  =
   Utils_v.not_yet_implemented "to_string"
(*
  print Format.str_formatter pdb_res ;
  Format.flush_str_formatter () 
*)
;;

let uppercase_of_residue_pdb pdb_res =
  String.uppercase (string_of_residue_pdb  pdb_res)
;; 

(** {9 residue_mention_pdb.} *)

let residue_mention_pdb_of_residue_pdb  pdb_res =
  pdb_res.Residue_pdb_t.residue_mention_pdb 
;;


(** {9 residue_name_pdb.} *)
let residue_name_pdb_of_residue_pdb  pdb_res =
  let pdb_rsm = pdb_res.Residue_pdb_t.residue_mention_pdb in
  let pdb_rss = pdb_rsm.Residue_pdb_t.residue_symbol_pdb in
  let chn_lbl = pdb_rsm.Residue_pdb_t.polypeptide_label_pdb in

   (pdb_rss, chn_lbl)
;;

let aminoacid_symbol_pdb_of_residue_name_pdb pdb_rsn =
  let (pdb_rss, chn_lbl) = pdb_rsn in
  pdb_rss
;;
 
 let aminoacid_symbol_of_residue_name_pdb pdb_rsn =
   let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_name_pdb pdb_rsn in
   Aminoacid_symbol_pdb_v.aminoacid_symbol_of_aminoacid_symbol_pdb sym_ams_pdb
;;
 
 let polypeptide_label_pdb_of_residue_pdb  pdb_res =
   let pdb_rsm = pdb_res.Residue_pdb_t.residue_mention_pdb in
   pdb_rsm.Residue_pdb_t.polypeptide_label_pdb
;;

(** {9 aminoacid_symbol_pdb.} *)
let aminoacid_symbol_pdb_of_residue_pdb  pdb_res =
  let pdb_rsm = pdb_res.Residue_pdb_t.residue_mention_pdb in
  pdb_rsm.Residue_pdb_t.residue_symbol_pdb
;;

(* TAKEN_OUT
(* aminoacid_pdb *)
let aminoacid_pdb_of_residue_pdb  pdb_res =
  let res_lbl = residue_pdb_label_of_residue_pdb  pdb_res in
  let ich_num = insequence_number_of_residue_pdb_label  res_lbl in  
  let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_pdb  pdb_res in  
  Aminoacid_symbol_pdb_v.aminoacid_pdb_of_aminoacid_symbol_pdb  ich_num  sym_ams_pdb
;;

(* amino_acid *)
let amino_acid_of_residue_pdb  pdb_res =
  let pdb_aa = aminoacid_pdb_of_residue_pdb pdb_res in
  Aminoacid_symbol_pdb_v.to_amino_acid pdb_aa
;;
*)

(* aminoacid_symbol *)

let aminoacid_symbol_of_residue_pdb  pdb_res =
  let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_pdb  pdb_res in
  Aminoacid_symbol_pdb_v.aminoacid_symbol_of_aminoacid_symbol_pdb sym_ams_pdb
;;

(* chemical_name *)

let chemical_name_of_residue_pdb  pdb_res =
  let sym_ams_pdb = aminoacid_symbol_pdb_of_residue_pdb  pdb_res in
  Aminoacid_symbol_pdb_v.name_of_aminoacid_symbol_pdb sym_ams_pdb
;;

(* of ATOM record. *)
let residue_mention_pdb_of_atom_record  atm_rcd = 
(*
ATOM    470 1HD1ALEU B  25C      0.243  16.147  -1.682  0.57  5.46           H  
                <--------->                             <-->
                1         2                             5  6
123456789012345678901234567890123456789012345678901234567890                
*)

  let alt_idx = Index_pdb_v.alternate_location_index_of_string 
     atm_rcd.Recordpdb_atom_t.alternate_location_index_pdb in
  let sym_ams_pdb = Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_string 
     atm_rcd.Recordpdb_atom_t.residue_symbol in
  let chn_lbl = Index_pdb_v.chain_index_pdb_of_string 
     atm_rcd.Recordpdb_atom_t.chain_index_pdb  in

  let can_num = 
    atm_rcd.Recordpdb_atom_t.canonical_residue_number in
  let ins_idx = Index_pdb_v.insertion_index_pdb_of_string 
    atm_rcd.Recordpdb_atom_t.insertion_index_pdb in
  let alt_wgt = 
     atm_rcd.Recordpdb_atom_t.alternate_location_weight in

    make_residue_mention_pdb  
    alt_idx sym_ams_pdb  chn_lbl  can_num  ins_idx  alt_wgt 
;;


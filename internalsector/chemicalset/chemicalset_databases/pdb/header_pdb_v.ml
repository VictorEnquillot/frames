(* $Id: header_pdb.ml,v 1.5 2007-09-19 19:20:17 colonna Exp $ *)

open Header_pdb_t;;

let make  rcd_nam  prn_nam  id_pdb  dat_9 =
{
  record_label = rcd_nam;
  protein_name = prn_nam; 
  id_pdb = id_pdb ;
  date_9 = dat_9;
}
;;

let make_id_pdb  int_1  str_3 =
(Tokenpdb_v.integer_1_of_int int_1, 
 Tokenpdb_v.string_3_of_string str_3)
;;

let rec print  ppf  fhd =
  Format.fprintf  ppf  
    "@[<h 1>record %a@ protein %s@ id_pdb %a@ date %a@]"
    Recordpdb_symbol_v.print  fhd.record_label 
    fhd.protein_name
    print_id_pdb  fhd.id_pdb
    Tokenpdb_v.print_date_9 fhd.date_9

and print_id_pdb  ppf  id_pdb =
let (int_1, str_3) =  id_pdb in
  Format.fprintf  ppf  "%a%a"
    Tokenpdb_v.print_integer_1 int_1
    Tokenpdb_v.print_string_3 str_3
;;

let word_list = [
  "PROTEINASE";
  "INHIBITOR";
  "OXIDOREDUCTASE"; 
  "NAD(A)";
  "CHOH(D)";
  ]
;;

let word_of_chemical_species = function
  | PROTEINASE -> "PROTEINASE"
  | INHIBITOR -> "INHIBITOR"
  | OXIDOREDUCTASE -> "OXIDOREDUCTASE"
  | NAD_A -> "NAD(A)"
  | CHOH_D -> "CHOH(D)"
;;

let chemical_species_of_word  string_a =
   let trimed_string_l = Tools_v.trim_of_string  string_a  in
    match trimed_string_l with
      | "PROTEINASE" -> PROTEINASE
      | "INHIBITOR" -> INHIBITOR
      | "OXIDOREDUCTASE" -> OXIDOREDUCTASE
      | "NAD(A)" -> NAD_A
      | "CHOH(D)" -> CHOH_D
      | _ -> failwith ("header_pdb: unknown word for chemical species") 

let name_of_chemical_species = function
  | PROTEINASE -> "Proteinase"
  | INHIBITOR -> "Inhibitor"
  | OXIDOREDUCTASE -> "Oxidoreductase"
  | NAD_A -> "Nad(A)"
  | CHOH_D -> "Choh(D)"
;;

let rec read ib =
  Scanf.bscanf ib "%r %r %r %r"
  Recordpdb_symbol_v.read 
  Tokenpdb_v.read_string_44
  Tokenpdb_v.read_date_9 
  read_id_pdb
    (fun  rcd_nam prn_nam dat pid -> 
      {
       record_label = rcd_nam;
       protein_name = prn_nam;
       date_9 = dat;
       id_pdb = pid;
     }
    )

and read_id_pdb  ib = 
  Scanf.bscanf ib "%r%r"
  Tokenpdb_v.read_integer_1
  Tokenpdb_v.read_string_3 
  (fun int_1  str_3 -> make_id_pdb  int_1  str_3)
;;

let header_pdb_of_header_record_list  rcd_l = 
(*
HEADER    PLANT PROTEIN                           02-MAR-00   1EJG
HEADER    PROTEINASE INHIBITOR (TRYPSIN)          27-SEP-82   4PTI      4PTI   3
HEADER    OXIDOREDUCTASE (NAD(A)-CHOH(D))         16-JAN-84   6ADH      6ADH   3
HEADER    OXIDOREDUCTASE (NAD(A)-CHOH(D))         16-JAN-84   7ADH      7ADH   3
HEADER    OXIDOREDUCTASE (NAD(A)-CHOH(D))         20-APR-89   8ADH      8ADH   3
0    5    0    5    0    5    0    5    0    5    0    5    0    5    0    5    0
          1         2         3         4         5         6         7         8 *)
  match rcd_l with
    | [] -> failwith ("should be non empty record list")
    | head::[] ->
	(match head with
	  | Recordpdb_t.HEADER (line_80) ->   
	      let ib = Scanf.Scanning.from_string  line_80 in
	      read ib
	  | _ -> failwith ("should be a HEADER record")
	)
    | head::tail -> failwith ("should be only one HEADER record")
;;

(*
let id_pdb_of_protein_designator prn_dsg =
  let {Protein_symbol_t.pd_int = pd_int; 
       Protein_symbol_t.pd_str = pd_str} = prn_dsg in
   make_id_pdb  pd_int  pd_str
;;
*)

let id_pdb_of_protein_symbol sym_prn =
  Utils_v.not_yet_implemented "id_pdb_of_protein_symbol"
(*  let (nam_prn, sym_plp) = sym_prn in *)
;;

let id_pdb_of_string str =
  let ib = Scanf.Scanning.from_string str in
  read_id_pdb ib
;;

let string_of_id_pdb  id_pdb =
  print_id_pdb  Format.str_formatter  id_pdb;
  Format.flush_str_formatter () 
;;

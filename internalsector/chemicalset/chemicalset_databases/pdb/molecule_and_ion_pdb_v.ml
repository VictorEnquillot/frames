(* $Id: molecule_and_ion_pdb.ml,v 1.1 2007-05-06 17:51:16 colonna Exp $ *)

type t =
  | Molecule of molecule
  | Ion of ion 
and molecule =
  | HOH
  | DMS
  | NAD
  | NADH
  | NADP
and ion =
  | CA
  | HG
  | PB
  | ZN
;;

let symbol_ion_list = [
    "CA";
    "ZN";
  ]
and symbol_molecule_list = [
    "HOH"; 
    "DMS"; 
    "NAD";
  ]
;;

let symbol = function  
  | Molecule (HOH) -> "HOH"
  | Molecule (DMS) -> "DMS"
  | Molecule (NAD)
  | Molecule (NADH)
  | Molecule (NADP) -> "NAD"
  | Ion (CA) -> "CA"
  | Ion (HG) -> "HG"
  | Ion (PB) -> "PB"
  | Ion (ZN) -> "ZN"
;;

let t_of_symbol  string_a =
  let trimed_string_l = Tools_v.trim_of_string  string_a  in
    match trimed_string_l with
      | "DMS" -> Molecule (DMS) 
      | "HOH" -> Molecule (HOH)
      | "NAD" -> Molecule (NAD)
      | "CA" -> Ion (CA)
      | "HG" -> Ion (HG)
      | "ZN" -> Ion (ZN)
      | _ -> failwith ("Pdb_molecule_and_ion: unknown symbol")
;;

let name = function
  | Molecule (HOH) -> "Water"
  | Molecule (DMS) -> "Dmso"
  | Molecule (NAD) -> "Nad"
  | Molecule (NADH) -> "NadH"
  | Molecule (NADP) -> "Nad+"
  | Ion (CA) -> "Calcium"
  | Ion (HG) -> "Mercury"
  | Ion (PB) -> "Lead"
  | Ion (ZN) -> "Zinc"
;;


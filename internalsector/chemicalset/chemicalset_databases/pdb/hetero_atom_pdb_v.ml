(* $Id: hetero_atom_pdbs.ml,v 1.5 2007-09-19 19:20:17 colonna Exp $ *)

let atom_of_atom_pdb =  function 
  | Hetero_atom_pdb_t.O -> Atom_v.o
  | Hetero_atom_pdb_t.CA -> Atom_v.ca
  | Hetero_atom_pdb_t.CU -> Atom_v.cu
  | Hetero_atom_pdb_t.HG -> Atom_v.hg
  | Hetero_atom_pdb_t.FE -> Atom_v.fe
  | Hetero_atom_pdb_t.ZN -> Atom_v.zn
;;

let symbol_pdb_of_h_index_and_symbol h_i_s =
  let (h_idx, symb) = h_i_s in
  symb
;;


let string_list = [
  "O ";
  "CA";
  "CU";
  "HG";
  "FE";
  "ZN";
  ]
;;

let string_of_atom_symbol_pdb = function
  | Hetero_atom_pdb_t.O -> "O"
  | Hetero_atom_pdb_t.CA -> "CA"
  | Hetero_atom_pdb_t.CU -> "CU"
  | Hetero_atom_pdb_t.HG -> "HG"
  | Hetero_atom_pdb_t.FE -> "FE"
  | Hetero_atom_pdb_t.ZN -> "ZN"
;;

let symbol_pdb_of_h_index_and_string_2 h_idx str_2 =
  match (h_idx, str_2) with
    | (Index_pdb_t.H_blank, "O") -> Hetero_atom_pdb_t.O
    | _ -> 
	Format.fprintf Format.err_formatter 
    "@.@.@[Hetero_atom_pdb_v.symbol_pdb_of_h_index_and_string_2:@ \
    Fatal Error: doublet h_index_pdb >%a< and string_2 >%s<. is not defined@]@."
    Index_pdb_v.print_h_index_pdb h_idx  
    str_2;
    assert false;
;;
let chemical_name = function
  | Hetero_atom_pdb_t.O -> "Oxygen"
  | Hetero_atom_pdb_t.CA -> "Calcium"
  | Hetero_atom_pdb_t.CU -> "Copper"
  | Hetero_atom_pdb_t.HG -> "Mercury"
  | Hetero_atom_pdb_t.FE -> "Ion"
  | Hetero_atom_pdb_t.ZN -> "Zinc"
;;

let of_symbol  string_a =
   let trimed_string_l = Tools_v.trim_of_string  string_a  in
  match trimed_string_l with
    | "O " -> Hetero_atom_pdb_t.O
    | "CA" -> Hetero_atom_pdb_t.CA
    | "CU" -> Hetero_atom_pdb_t.CU
    | "HG" -> Hetero_atom_pdb_t.HG
    | "FE" -> Hetero_atom_pdb_t.FE
    | "ZN" -> Hetero_atom_pdb_t.ZN
    | _ ->  failwith ("Hetero_atom_pdb_t: unknown atomic symbol")
;;

let line_of_record_atom  record_atom_a =
  match record_atom_a with 
    | Recordpdb_t.HETATM (line_80) -> line_80
    | _ -> failwith ("Atom_pdb: should be a HETATM record")
;;


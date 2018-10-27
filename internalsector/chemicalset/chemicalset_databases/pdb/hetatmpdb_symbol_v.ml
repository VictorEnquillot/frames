(** {3 The Symbol functionalities for a Hetatmpdb.} *)

let nam_cod = "Hetatmpdb_symbol_v";;


(* 
   egrep -h '^HETATM ' $PDB/*.pdb | cut -b 13-16 | sed 's/ //' | sort -u | sed "s/'/p/" > HETATMPDB_SYMBOLS

 cat HETATMPDB_SYMBOLS | tr A-Z a-z > hetatmpdb_symbols

 awk '{print "  | Hetatmpdb_symbol_t."$1" -> Format.sprintf \"%s\" \""$1"\""}' HETATMPDB_SYMBOLS > q
 awk '{print "   Hetatmpdb_symbol_t."$1";"}' HETATMPDB_SYMBOLS > q
 awk '{print "  | \""$1"\" -> Hetatmpdb_symbol_t."$1}' HETATMPDB_SYMBOLS > q
 paste HETATMPDB_SYMBOLS hetatmpdb_symbols | awk '{print "let "$2" = Hetatmpdb_symbol_t."$1";;"}'  > q

 *)

(** {6 Converting.} *)

let name = function
  | Hetatmpdb_symbol_t.BR -> Format.sprintf "%s" "BR"
  | Hetatmpdb_symbol_t.C -> Format.sprintf "%s" "C"
  | Hetatmpdb_symbol_t.C1 -> Format.sprintf "%s" "C1"
  | Hetatmpdb_symbol_t.C1p -> Format.sprintf "%s" "C1p"
  | Hetatmpdb_symbol_t.C11 -> Format.sprintf "%s" "C11"
  | Hetatmpdb_symbol_t.C12 -> Format.sprintf "%s" "C12"
  | Hetatmpdb_symbol_t.C15 -> Format.sprintf "%s" "C15"
  | Hetatmpdb_symbol_t.C16 -> Format.sprintf "%s" "C16"
  | Hetatmpdb_symbol_t.C18 -> Format.sprintf "%s" "C18"
  | Hetatmpdb_symbol_t.C19 -> Format.sprintf "%s" "C19"
  | Hetatmpdb_symbol_t.C1A -> Format.sprintf "%s" "C1A"
  | Hetatmpdb_symbol_t.C1B -> Format.sprintf "%s" "C1B"
  | Hetatmpdb_symbol_t.C1C -> Format.sprintf "%s" "C1C"
  | Hetatmpdb_symbol_t.C1D -> Format.sprintf "%s" "C1D"
  | Hetatmpdb_symbol_t.C2 -> Format.sprintf "%s" "C2"
  | Hetatmpdb_symbol_t.C2p -> Format.sprintf "%s" "C2p"
  | Hetatmpdb_symbol_t.C20 -> Format.sprintf "%s" "C20"
  | Hetatmpdb_symbol_t.C21 -> Format.sprintf "%s" "C21"
  | Hetatmpdb_symbol_t.C22 -> Format.sprintf "%s" "C22"
  | Hetatmpdb_symbol_t.C23 -> Format.sprintf "%s" "C23"
  | Hetatmpdb_symbol_t.C24 -> Format.sprintf "%s" "C24"
  | Hetatmpdb_symbol_t.C25 -> Format.sprintf "%s" "C25"
  | Hetatmpdb_symbol_t.C26 -> Format.sprintf "%s" "C26"
  | Hetatmpdb_symbol_t.C27 -> Format.sprintf "%s" "C27"
  | Hetatmpdb_symbol_t.C29 -> Format.sprintf "%s" "C29"
  | Hetatmpdb_symbol_t.C2A -> Format.sprintf "%s" "C2A"
  | Hetatmpdb_symbol_t.C2B -> Format.sprintf "%s" "C2B"
  | Hetatmpdb_symbol_t.C2C -> Format.sprintf "%s" "C2C"
  | Hetatmpdb_symbol_t.C2D -> Format.sprintf "%s" "C2D"
  | Hetatmpdb_symbol_t.C2N -> Format.sprintf "%s" "C2N"
  | Hetatmpdb_symbol_t.C3 -> Format.sprintf "%s" "C3"
  | Hetatmpdb_symbol_t.C3p -> Format.sprintf "%s" "C3p"
  | Hetatmpdb_symbol_t.C31 -> Format.sprintf "%s" "C31"
  | Hetatmpdb_symbol_t.C33 -> Format.sprintf "%s" "C33"
  | Hetatmpdb_symbol_t.C34 -> Format.sprintf "%s" "C34"
  | Hetatmpdb_symbol_t.C35 -> Format.sprintf "%s" "C35"
  | Hetatmpdb_symbol_t.C36 -> Format.sprintf "%s" "C36"
  | Hetatmpdb_symbol_t.C3A -> Format.sprintf "%s" "C3A"
  | Hetatmpdb_symbol_t.C3B -> Format.sprintf "%s" "C3B"
  | Hetatmpdb_symbol_t.C3C -> Format.sprintf "%s" "C3C"
  | Hetatmpdb_symbol_t.C3D -> Format.sprintf "%s" "C3D"
  | Hetatmpdb_symbol_t.C3N -> Format.sprintf "%s" "C3N"
  | Hetatmpdb_symbol_t.C4 -> Format.sprintf "%s" "C4"
  | Hetatmpdb_symbol_t.C4p -> Format.sprintf "%s" "C4p"
  | Hetatmpdb_symbol_t.C4A -> Format.sprintf "%s" "C4A"
  | Hetatmpdb_symbol_t.C4B -> Format.sprintf "%s" "C4B"
  | Hetatmpdb_symbol_t.C4C -> Format.sprintf "%s" "C4C"
  | Hetatmpdb_symbol_t.C4D -> Format.sprintf "%s" "C4D"
  | Hetatmpdb_symbol_t.C4N -> Format.sprintf "%s" "C4N"
  | Hetatmpdb_symbol_t.C5 -> Format.sprintf "%s" "C5"
  | Hetatmpdb_symbol_t.C5p -> Format.sprintf "%s" "C5p"
  | Hetatmpdb_symbol_t.C5A -> Format.sprintf "%s" "C5A"
  | Hetatmpdb_symbol_t.C5B -> Format.sprintf "%s" "C5B"
  | Hetatmpdb_symbol_t.C5D -> Format.sprintf "%s" "C5D"
  | Hetatmpdb_symbol_t.C5N -> Format.sprintf "%s" "C5N"
  | Hetatmpdb_symbol_t.C6 -> Format.sprintf "%s" "C6"
  | Hetatmpdb_symbol_t.C6A -> Format.sprintf "%s" "C6A"
  | Hetatmpdb_symbol_t.C6N -> Format.sprintf "%s" "C6N"
  | Hetatmpdb_symbol_t.C7N -> Format.sprintf "%s" "C7N"
  | Hetatmpdb_symbol_t.C8 -> Format.sprintf "%s" "C8"
  | Hetatmpdb_symbol_t.C8A -> Format.sprintf "%s" "C8A"
  | Hetatmpdb_symbol_t.C9 -> Format.sprintf "%s" "C9"
  | Hetatmpdb_symbol_t.CAA -> Format.sprintf "%s" "CAA"
  | Hetatmpdb_symbol_t.CAB -> Format.sprintf "%s" "CAB"
  | Hetatmpdb_symbol_t.CAC -> Format.sprintf "%s" "CAC"
  | Hetatmpdb_symbol_t.CAD -> Format.sprintf "%s" "CAD"
  | Hetatmpdb_symbol_t.CBA -> Format.sprintf "%s" "CBA"
  | Hetatmpdb_symbol_t.CBB -> Format.sprintf "%s" "CBB"
  | Hetatmpdb_symbol_t.CBC -> Format.sprintf "%s" "CBC"
  | Hetatmpdb_symbol_t.CBD -> Format.sprintf "%s" "CBD"
  | Hetatmpdb_symbol_t.CD -> Format.sprintf "%s" "CD"
  | Hetatmpdb_symbol_t.CGA -> Format.sprintf "%s" "CGA"
  | Hetatmpdb_symbol_t.CGD -> Format.sprintf "%s" "CGD"
  | Hetatmpdb_symbol_t.CH3 -> Format.sprintf "%s" "CH3"
  | Hetatmpdb_symbol_t.CHA -> Format.sprintf "%s" "CHA"
  | Hetatmpdb_symbol_t.CHB -> Format.sprintf "%s" "CHB"
  | Hetatmpdb_symbol_t.CHC -> Format.sprintf "%s" "CHC"
  | Hetatmpdb_symbol_t.CHD -> Format.sprintf "%s" "CHD"
  | Hetatmpdb_symbol_t.CI1 -> Format.sprintf "%s" "CI1"
  | Hetatmpdb_symbol_t.CI2 -> Format.sprintf "%s" "CI2"
  | Hetatmpdb_symbol_t.CI3 -> Format.sprintf "%s" "CI3"
  | Hetatmpdb_symbol_t.CI4 -> Format.sprintf "%s" "CI4"
  | Hetatmpdb_symbol_t.CI5 -> Format.sprintf "%s" "CI5"
  | Hetatmpdb_symbol_t.CI6 -> Format.sprintf "%s" "CI6"
  | Hetatmpdb_symbol_t.CMA -> Format.sprintf "%s" "CMA"
  | Hetatmpdb_symbol_t.CMB -> Format.sprintf "%s" "CMB"
  | Hetatmpdb_symbol_t.CMC -> Format.sprintf "%s" "CMC"
  | Hetatmpdb_symbol_t.CMD -> Format.sprintf "%s" "CMD"
  | Hetatmpdb_symbol_t.D1 -> Format.sprintf "%s" "D1"
  | Hetatmpdb_symbol_t.D2 -> Format.sprintf "%s" "D2"
  | Hetatmpdb_symbol_t.FE -> Format.sprintf "%s" "FE"
  | Hetatmpdb_symbol_t.FE1 -> Format.sprintf "%s" "FE1"
  | Hetatmpdb_symbol_t.FE2 -> Format.sprintf "%s" "FE2"
  | Hetatmpdb_symbol_t.FE3 -> Format.sprintf "%s" "FE3"
  | Hetatmpdb_symbol_t.FE4 -> Format.sprintf "%s" "FE4"
  | Hetatmpdb_symbol_t.H -> Format.sprintf "%s" "H"
  | Hetatmpdb_symbol_t.HN1 -> Format.sprintf "%s" "HN1"
  | Hetatmpdb_symbol_t.HN2 -> Format.sprintf "%s" "HN2"
  | Hetatmpdb_symbol_t.MG -> Format.sprintf "%s" "MG"
  | Hetatmpdb_symbol_t.N -> Format.sprintf "%s" "N"
  | Hetatmpdb_symbol_t.N1 -> Format.sprintf "%s" "N1"
  | Hetatmpdb_symbol_t.N13 -> Format.sprintf "%s" "N13"
  | Hetatmpdb_symbol_t.N1A -> Format.sprintf "%s" "N1A"
  | Hetatmpdb_symbol_t.N1N -> Format.sprintf "%s" "N1N"
  | Hetatmpdb_symbol_t.N2 -> Format.sprintf "%s" "N2"
  | Hetatmpdb_symbol_t.N3 -> Format.sprintf "%s" "N3"
  | Hetatmpdb_symbol_t.N3A -> Format.sprintf "%s" "N3A"
  | Hetatmpdb_symbol_t.N6 -> Format.sprintf "%s" "N6"
  | Hetatmpdb_symbol_t.N6A -> Format.sprintf "%s" "N6A"
  | Hetatmpdb_symbol_t.N7 -> Format.sprintf "%s" "N7"
  | Hetatmpdb_symbol_t.N7A -> Format.sprintf "%s" "N7A"
  | Hetatmpdb_symbol_t.N7N -> Format.sprintf "%s" "N7N"
  | Hetatmpdb_symbol_t.N9 -> Format.sprintf "%s" "N9"
  | Hetatmpdb_symbol_t.N9A -> Format.sprintf "%s" "N9A"
  | Hetatmpdb_symbol_t.NA -> Format.sprintf "%s" "NA"
  | Hetatmpdb_symbol_t.NB -> Format.sprintf "%s" "NB"
  | Hetatmpdb_symbol_t.NC -> Format.sprintf "%s" "NC"
  | Hetatmpdb_symbol_t.ND -> Format.sprintf "%s" "ND"
  | Hetatmpdb_symbol_t.NI1 -> Format.sprintf "%s" "NI1"
  | Hetatmpdb_symbol_t.NI2 -> Format.sprintf "%s" "NI2"
  | Hetatmpdb_symbol_t.O -> Format.sprintf "%s" "O"
  | Hetatmpdb_symbol_t.O1 -> Format.sprintf "%s" "O1"
  | Hetatmpdb_symbol_t.O10 -> Format.sprintf "%s" "O10"
  | Hetatmpdb_symbol_t.O14 -> Format.sprintf "%s" "O14"
  | Hetatmpdb_symbol_t.O17 -> Format.sprintf "%s" "O17"
  | Hetatmpdb_symbol_t.O1A -> Format.sprintf "%s" "O1A"
  | Hetatmpdb_symbol_t.O1B -> Format.sprintf "%s" "O1B"
  | Hetatmpdb_symbol_t.O1D -> Format.sprintf "%s" "O1D"
  | Hetatmpdb_symbol_t.O1G -> Format.sprintf "%s" "O1G"
  | Hetatmpdb_symbol_t.O1N -> Format.sprintf "%s" "O1N"
  | Hetatmpdb_symbol_t.O1P -> Format.sprintf "%s" "O1P"
  | Hetatmpdb_symbol_t.O2 -> Format.sprintf "%s" "O2"
  | Hetatmpdb_symbol_t.O2p -> Format.sprintf "%s" "O2p"
  | Hetatmpdb_symbol_t.O28 -> Format.sprintf "%s" "O28"
  | Hetatmpdb_symbol_t.O2A -> Format.sprintf "%s" "O2A"
  | Hetatmpdb_symbol_t.O2B -> Format.sprintf "%s" "O2B"
  | Hetatmpdb_symbol_t.O2D -> Format.sprintf "%s" "O2D"
  | Hetatmpdb_symbol_t.O2G -> Format.sprintf "%s" "O2G"
  | Hetatmpdb_symbol_t.O2N -> Format.sprintf "%s" "O2N"
  | Hetatmpdb_symbol_t.O2P -> Format.sprintf "%s" "O2P"
  | Hetatmpdb_symbol_t.O3 -> Format.sprintf "%s" "O3"
  | Hetatmpdb_symbol_t.O3p -> Format.sprintf "%s" "O3p"
  | Hetatmpdb_symbol_t.O30 -> Format.sprintf "%s" "O30"
  | Hetatmpdb_symbol_t.O32 -> Format.sprintf "%s" "O32"
  | Hetatmpdb_symbol_t.O3A -> Format.sprintf "%s" "O3A"
  | Hetatmpdb_symbol_t.O3B -> Format.sprintf "%s" "O3B"
  | Hetatmpdb_symbol_t.O3D -> Format.sprintf "%s" "O3D"
  | Hetatmpdb_symbol_t.O3G -> Format.sprintf "%s" "O3G"
  | Hetatmpdb_symbol_t.O3P -> Format.sprintf "%s" "O3P"
  | Hetatmpdb_symbol_t.O4 -> Format.sprintf "%s" "O4"
  | Hetatmpdb_symbol_t.O4p -> Format.sprintf "%s" "O4p"
  | Hetatmpdb_symbol_t.O4B -> Format.sprintf "%s" "O4B"
  | Hetatmpdb_symbol_t.O4D -> Format.sprintf "%s" "O4D"
  | Hetatmpdb_symbol_t.O4P -> Format.sprintf "%s" "O4P"
  | Hetatmpdb_symbol_t.O5 -> Format.sprintf "%s" "O5"
  | Hetatmpdb_symbol_t.O5p -> Format.sprintf "%s" "O5p"
  | Hetatmpdb_symbol_t.O5B -> Format.sprintf "%s" "O5B"
  | Hetatmpdb_symbol_t.O5D -> Format.sprintf "%s" "O5D"
  | Hetatmpdb_symbol_t.O6 -> Format.sprintf "%s" "O6"
  | Hetatmpdb_symbol_t.O7N -> Format.sprintf "%s" "O7N"
  | Hetatmpdb_symbol_t.OP1 -> Format.sprintf "%s" "OP1"
  | Hetatmpdb_symbol_t.OP2 -> Format.sprintf "%s" "OP2"
  | Hetatmpdb_symbol_t.P -> Format.sprintf "%s" "P"
  | Hetatmpdb_symbol_t.PA -> Format.sprintf "%s" "PA"
  | Hetatmpdb_symbol_t.PB -> Format.sprintf "%s" "PB"
  | Hetatmpdb_symbol_t.PG -> Format.sprintf "%s" "PG"
  | Hetatmpdb_symbol_t.PN -> Format.sprintf "%s" "PN"
  | Hetatmpdb_symbol_t.S -> Format.sprintf "%s" "S"
  | Hetatmpdb_symbol_t.S1 -> Format.sprintf "%s" "S1"
  | Hetatmpdb_symbol_t.S2 -> Format.sprintf "%s" "S2"
  | Hetatmpdb_symbol_t.S3 -> Format.sprintf "%s" "S3"
  | Hetatmpdb_symbol_t.S4 -> Format.sprintf "%s" "S4"
  | Hetatmpdb_symbol_t.S7 -> Format.sprintf "%s" "S7"
  | Hetatmpdb_symbol_t.UNK -> Format.sprintf "%s" "UNK"
  | Hetatmpdb_symbol_t.ZN -> Format.sprintf "%s" "ZN"

;;

let print ppf sym_rsp =
  Format.fprintf ppf "%s" (name sym_rsp) 
;;

let compare sym_rsp_a sym_rsp_b =
  String.compare (name sym_rsp_a) (name sym_rsp_b)
;;

(** {6 Making.} *)

let hetatmpdb_symbol_list () =
  [
   Hetatmpdb_symbol_t.BR;
   Hetatmpdb_symbol_t.C;
   Hetatmpdb_symbol_t.C1;
   Hetatmpdb_symbol_t.C1p;
   Hetatmpdb_symbol_t.C11;
   Hetatmpdb_symbol_t.C12;
   Hetatmpdb_symbol_t.C15;
   Hetatmpdb_symbol_t.C16;
   Hetatmpdb_symbol_t.C18;
   Hetatmpdb_symbol_t.C19;
   Hetatmpdb_symbol_t.C1A;
   Hetatmpdb_symbol_t.C1B;
   Hetatmpdb_symbol_t.C1C;
   Hetatmpdb_symbol_t.C1D;
   Hetatmpdb_symbol_t.C2;
   Hetatmpdb_symbol_t.C2p;
   Hetatmpdb_symbol_t.C20;
   Hetatmpdb_symbol_t.C21;
   Hetatmpdb_symbol_t.C22;
   Hetatmpdb_symbol_t.C23;
   Hetatmpdb_symbol_t.C24;
   Hetatmpdb_symbol_t.C25;
   Hetatmpdb_symbol_t.C26;
   Hetatmpdb_symbol_t.C27;
   Hetatmpdb_symbol_t.C29;
   Hetatmpdb_symbol_t.C2A;
   Hetatmpdb_symbol_t.C2B;
   Hetatmpdb_symbol_t.C2C;
   Hetatmpdb_symbol_t.C2D;
   Hetatmpdb_symbol_t.C2N;
   Hetatmpdb_symbol_t.C3;
   Hetatmpdb_symbol_t.C3p;
   Hetatmpdb_symbol_t.C31;
   Hetatmpdb_symbol_t.C33;
   Hetatmpdb_symbol_t.C34;
   Hetatmpdb_symbol_t.C35;
   Hetatmpdb_symbol_t.C36;
   Hetatmpdb_symbol_t.C3A;
   Hetatmpdb_symbol_t.C3B;
   Hetatmpdb_symbol_t.C3C;
   Hetatmpdb_symbol_t.C3D;
   Hetatmpdb_symbol_t.C3N;
   Hetatmpdb_symbol_t.C4;
   Hetatmpdb_symbol_t.C4p;
   Hetatmpdb_symbol_t.C4A;
   Hetatmpdb_symbol_t.C4B;
   Hetatmpdb_symbol_t.C4C;
   Hetatmpdb_symbol_t.C4D;
   Hetatmpdb_symbol_t.C4N;
   Hetatmpdb_symbol_t.C5;
   Hetatmpdb_symbol_t.C5p;
   Hetatmpdb_symbol_t.C5A;
   Hetatmpdb_symbol_t.C5B;
   Hetatmpdb_symbol_t.C5D;
   Hetatmpdb_symbol_t.C5N;
   Hetatmpdb_symbol_t.C6;
   Hetatmpdb_symbol_t.C6A;
   Hetatmpdb_symbol_t.C6N;
   Hetatmpdb_symbol_t.C7N;
   Hetatmpdb_symbol_t.C8;
   Hetatmpdb_symbol_t.C8A;
   Hetatmpdb_symbol_t.C9;
   Hetatmpdb_symbol_t.CAA;
   Hetatmpdb_symbol_t.CAB;
   Hetatmpdb_symbol_t.CAC;
   Hetatmpdb_symbol_t.CAD;
   Hetatmpdb_symbol_t.CBA;
   Hetatmpdb_symbol_t.CBB;
   Hetatmpdb_symbol_t.CBC;
   Hetatmpdb_symbol_t.CBD;
   Hetatmpdb_symbol_t.CD;
   Hetatmpdb_symbol_t.CGA;
   Hetatmpdb_symbol_t.CGD;
   Hetatmpdb_symbol_t.CH3;
   Hetatmpdb_symbol_t.CHA;
   Hetatmpdb_symbol_t.CHB;
   Hetatmpdb_symbol_t.CHC;
   Hetatmpdb_symbol_t.CHD;
   Hetatmpdb_symbol_t.CI1;
   Hetatmpdb_symbol_t.CI2;
   Hetatmpdb_symbol_t.CI3;
   Hetatmpdb_symbol_t.CI4;
   Hetatmpdb_symbol_t.CI5;
   Hetatmpdb_symbol_t.CI6;
   Hetatmpdb_symbol_t.CMA;
   Hetatmpdb_symbol_t.CMB;
   Hetatmpdb_symbol_t.CMC;
   Hetatmpdb_symbol_t.CMD;
   Hetatmpdb_symbol_t.D1;
   Hetatmpdb_symbol_t.D2;
   Hetatmpdb_symbol_t.FE;
   Hetatmpdb_symbol_t.FE1;
   Hetatmpdb_symbol_t.FE2;
   Hetatmpdb_symbol_t.FE3;
   Hetatmpdb_symbol_t.FE4;
   Hetatmpdb_symbol_t.H;
   Hetatmpdb_symbol_t.HN1;
   Hetatmpdb_symbol_t.HN2;
   Hetatmpdb_symbol_t.MG;
   Hetatmpdb_symbol_t.N;
   Hetatmpdb_symbol_t.N1;
   Hetatmpdb_symbol_t.N13;
   Hetatmpdb_symbol_t.N1A;
   Hetatmpdb_symbol_t.N1N;
   Hetatmpdb_symbol_t.N2;
   Hetatmpdb_symbol_t.N3;
   Hetatmpdb_symbol_t.N3A;
   Hetatmpdb_symbol_t.N6;
   Hetatmpdb_symbol_t.N6A;
   Hetatmpdb_symbol_t.N7;
   Hetatmpdb_symbol_t.N7A;
   Hetatmpdb_symbol_t.N7N;
   Hetatmpdb_symbol_t.N9;
   Hetatmpdb_symbol_t.N9A;
   Hetatmpdb_symbol_t.NA;
   Hetatmpdb_symbol_t.NB;
   Hetatmpdb_symbol_t.NC;
   Hetatmpdb_symbol_t.ND;
   Hetatmpdb_symbol_t.NI1;
   Hetatmpdb_symbol_t.NI2;
   Hetatmpdb_symbol_t.O;
   Hetatmpdb_symbol_t.O1;
   Hetatmpdb_symbol_t.O10;
   Hetatmpdb_symbol_t.O14;
   Hetatmpdb_symbol_t.O17;
   Hetatmpdb_symbol_t.O1A;
   Hetatmpdb_symbol_t.O1B;
   Hetatmpdb_symbol_t.O1D;
   Hetatmpdb_symbol_t.O1G;
   Hetatmpdb_symbol_t.O1N;
   Hetatmpdb_symbol_t.O1P;
   Hetatmpdb_symbol_t.O2;
   Hetatmpdb_symbol_t.O2p;
   Hetatmpdb_symbol_t.O28;
   Hetatmpdb_symbol_t.O2A;
   Hetatmpdb_symbol_t.O2B;
   Hetatmpdb_symbol_t.O2D;
   Hetatmpdb_symbol_t.O2G;
   Hetatmpdb_symbol_t.O2N;
   Hetatmpdb_symbol_t.O2P;
   Hetatmpdb_symbol_t.O3;
   Hetatmpdb_symbol_t.O3p;
   Hetatmpdb_symbol_t.O30;
   Hetatmpdb_symbol_t.O32;
   Hetatmpdb_symbol_t.O3A;
   Hetatmpdb_symbol_t.O3B;
   Hetatmpdb_symbol_t.O3D;
   Hetatmpdb_symbol_t.O3G;
   Hetatmpdb_symbol_t.O3P;
   Hetatmpdb_symbol_t.O4;
   Hetatmpdb_symbol_t.O4p;
   Hetatmpdb_symbol_t.O4B;
   Hetatmpdb_symbol_t.O4D;
   Hetatmpdb_symbol_t.O4P;
   Hetatmpdb_symbol_t.O5;
   Hetatmpdb_symbol_t.O5p;
   Hetatmpdb_symbol_t.O5B;
   Hetatmpdb_symbol_t.O5D;
   Hetatmpdb_symbol_t.O6;
   Hetatmpdb_symbol_t.O7N;
   Hetatmpdb_symbol_t.OP1;
   Hetatmpdb_symbol_t.OP2;
   Hetatmpdb_symbol_t.P;
   Hetatmpdb_symbol_t.PA;
   Hetatmpdb_symbol_t.PB;
   Hetatmpdb_symbol_t.PG;
   Hetatmpdb_symbol_t.PN;
   Hetatmpdb_symbol_t.S;
   Hetatmpdb_symbol_t.S1;
   Hetatmpdb_symbol_t.S2;
   Hetatmpdb_symbol_t.S3;
   Hetatmpdb_symbol_t.S4;
   Hetatmpdb_symbol_t.S7;
   Hetatmpdb_symbol_t.UNK;
   Hetatmpdb_symbol_t.ZN;
 ]
;;

let print_fatal_error nam_fun str =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.     expecting known Hetatmpdb Symbol.\      
     found >%s< Symbol>%s<.\      
     cure : add it to current list:@.%s.@]@."
     nam_cod nam_fun str str str
(*(List_v.name name (hetatmpdb_symbol_list ())) ;*);
  assert false 
;;

let hetatmpdb_symbol_of_string str =
  let stu = String.uppercase str in
  match stu with
  | "BR" -> Hetatmpdb_symbol_t.BR
  | "C" -> Hetatmpdb_symbol_t.C
  | "C1" -> Hetatmpdb_symbol_t.C1
  | "C1p" -> Hetatmpdb_symbol_t.C1p
  | "C11" -> Hetatmpdb_symbol_t.C11
  | "C12" -> Hetatmpdb_symbol_t.C12
  | "C15" -> Hetatmpdb_symbol_t.C15
  | "C16" -> Hetatmpdb_symbol_t.C16
  | "C18" -> Hetatmpdb_symbol_t.C18
  | "C19" -> Hetatmpdb_symbol_t.C19
  | "C1A" -> Hetatmpdb_symbol_t.C1A
  | "C1B" -> Hetatmpdb_symbol_t.C1B
  | "C1C" -> Hetatmpdb_symbol_t.C1C
  | "C1D" -> Hetatmpdb_symbol_t.C1D
  | "C2" -> Hetatmpdb_symbol_t.C2
  | "C2p" -> Hetatmpdb_symbol_t.C2p
  | "C20" -> Hetatmpdb_symbol_t.C20
  | "C21" -> Hetatmpdb_symbol_t.C21
  | "C22" -> Hetatmpdb_symbol_t.C22
  | "C23" -> Hetatmpdb_symbol_t.C23
  | "C24" -> Hetatmpdb_symbol_t.C24
  | "C25" -> Hetatmpdb_symbol_t.C25
  | "C26" -> Hetatmpdb_symbol_t.C26
  | "C27" -> Hetatmpdb_symbol_t.C27
  | "C29" -> Hetatmpdb_symbol_t.C29
  | "C2A" -> Hetatmpdb_symbol_t.C2A
  | "C2B" -> Hetatmpdb_symbol_t.C2B
  | "C2C" -> Hetatmpdb_symbol_t.C2C
  | "C2D" -> Hetatmpdb_symbol_t.C2D
  | "C2N" -> Hetatmpdb_symbol_t.C2N
  | "C3" -> Hetatmpdb_symbol_t.C3
  | "C3p" -> Hetatmpdb_symbol_t.C3p
  | "C31" -> Hetatmpdb_symbol_t.C31
  | "C33" -> Hetatmpdb_symbol_t.C33
  | "C34" -> Hetatmpdb_symbol_t.C34
  | "C35" -> Hetatmpdb_symbol_t.C35
  | "C36" -> Hetatmpdb_symbol_t.C36
  | "C3A" -> Hetatmpdb_symbol_t.C3A
  | "C3B" -> Hetatmpdb_symbol_t.C3B
  | "C3C" -> Hetatmpdb_symbol_t.C3C
  | "C3D" -> Hetatmpdb_symbol_t.C3D
  | "C3N" -> Hetatmpdb_symbol_t.C3N
  | "C4" -> Hetatmpdb_symbol_t.C4
  | "C4p" -> Hetatmpdb_symbol_t.C4p
  | "C4A" -> Hetatmpdb_symbol_t.C4A
  | "C4B" -> Hetatmpdb_symbol_t.C4B
  | "C4C" -> Hetatmpdb_symbol_t.C4C
  | "C4D" -> Hetatmpdb_symbol_t.C4D
  | "C4N" -> Hetatmpdb_symbol_t.C4N
  | "C5" -> Hetatmpdb_symbol_t.C5
  | "C5p" -> Hetatmpdb_symbol_t.C5p
  | "C5A" -> Hetatmpdb_symbol_t.C5A
  | "C5B" -> Hetatmpdb_symbol_t.C5B
  | "C5D" -> Hetatmpdb_symbol_t.C5D
  | "C5N" -> Hetatmpdb_symbol_t.C5N
  | "C6" -> Hetatmpdb_symbol_t.C6
  | "C6A" -> Hetatmpdb_symbol_t.C6A
  | "C6N" -> Hetatmpdb_symbol_t.C6N
  | "C7N" -> Hetatmpdb_symbol_t.C7N
  | "C8" -> Hetatmpdb_symbol_t.C8
  | "C8A" -> Hetatmpdb_symbol_t.C8A
  | "C9" -> Hetatmpdb_symbol_t.C9
  | "CAA" -> Hetatmpdb_symbol_t.CAA
  | "CAB" -> Hetatmpdb_symbol_t.CAB
  | "CAC" -> Hetatmpdb_symbol_t.CAC
  | "CAD" -> Hetatmpdb_symbol_t.CAD
  | "CBA" -> Hetatmpdb_symbol_t.CBA
  | "CBB" -> Hetatmpdb_symbol_t.CBB
  | "CBC" -> Hetatmpdb_symbol_t.CBC
  | "CBD" -> Hetatmpdb_symbol_t.CBD
  | "CD" -> Hetatmpdb_symbol_t.CD
  | "CGA" -> Hetatmpdb_symbol_t.CGA
  | "CGD" -> Hetatmpdb_symbol_t.CGD
  | "CH3" -> Hetatmpdb_symbol_t.CH3
  | "CHA" -> Hetatmpdb_symbol_t.CHA
  | "CHB" -> Hetatmpdb_symbol_t.CHB
  | "CHC" -> Hetatmpdb_symbol_t.CHC
  | "CHD" -> Hetatmpdb_symbol_t.CHD
  | "CI1" -> Hetatmpdb_symbol_t.CI1
  | "CI2" -> Hetatmpdb_symbol_t.CI2
  | "CI3" -> Hetatmpdb_symbol_t.CI3
  | "CI4" -> Hetatmpdb_symbol_t.CI4
  | "CI5" -> Hetatmpdb_symbol_t.CI5
  | "CI6" -> Hetatmpdb_symbol_t.CI6
  | "CMA" -> Hetatmpdb_symbol_t.CMA
  | "CMB" -> Hetatmpdb_symbol_t.CMB
  | "CMC" -> Hetatmpdb_symbol_t.CMC
  | "CMD" -> Hetatmpdb_symbol_t.CMD
  | "D1" -> Hetatmpdb_symbol_t.D1
  | "D2" -> Hetatmpdb_symbol_t.D2
  | "FE" -> Hetatmpdb_symbol_t.FE
  | "FE1" -> Hetatmpdb_symbol_t.FE1
  | "FE2" -> Hetatmpdb_symbol_t.FE2
  | "FE3" -> Hetatmpdb_symbol_t.FE3
  | "FE4" -> Hetatmpdb_symbol_t.FE4
  | "H" -> Hetatmpdb_symbol_t.H
  | "HN1" -> Hetatmpdb_symbol_t.HN1
  | "HN2" -> Hetatmpdb_symbol_t.HN2
  | "MG" -> Hetatmpdb_symbol_t.MG
  | "N" -> Hetatmpdb_symbol_t.N
  | "N1" -> Hetatmpdb_symbol_t.N1
  | "N13" -> Hetatmpdb_symbol_t.N13
  | "N1A" -> Hetatmpdb_symbol_t.N1A
  | "N1N" -> Hetatmpdb_symbol_t.N1N
  | "N2" -> Hetatmpdb_symbol_t.N2
  | "N3" -> Hetatmpdb_symbol_t.N3
  | "N3A" -> Hetatmpdb_symbol_t.N3A
  | "N6" -> Hetatmpdb_symbol_t.N6
  | "N6A" -> Hetatmpdb_symbol_t.N6A
  | "N7" -> Hetatmpdb_symbol_t.N7
  | "N7A" -> Hetatmpdb_symbol_t.N7A
  | "N7N" -> Hetatmpdb_symbol_t.N7N
  | "N9" -> Hetatmpdb_symbol_t.N9
  | "N9A" -> Hetatmpdb_symbol_t.N9A
  | "NA" -> Hetatmpdb_symbol_t.NA
  | "NB" -> Hetatmpdb_symbol_t.NB
  | "NC" -> Hetatmpdb_symbol_t.NC
  | "ND" -> Hetatmpdb_symbol_t.ND
  | "NI1" -> Hetatmpdb_symbol_t.NI1
  | "NI2" -> Hetatmpdb_symbol_t.NI2
  | "O" -> Hetatmpdb_symbol_t.O
  | "O1" -> Hetatmpdb_symbol_t.O1
  | "O10" -> Hetatmpdb_symbol_t.O10
  | "O14" -> Hetatmpdb_symbol_t.O14
  | "O17" -> Hetatmpdb_symbol_t.O17
  | "O1A" -> Hetatmpdb_symbol_t.O1A
  | "O1B" -> Hetatmpdb_symbol_t.O1B
  | "O1D" -> Hetatmpdb_symbol_t.O1D
  | "O1G" -> Hetatmpdb_symbol_t.O1G
  | "O1N" -> Hetatmpdb_symbol_t.O1N
  | "O1P" -> Hetatmpdb_symbol_t.O1P
  | "O2" -> Hetatmpdb_symbol_t.O2
  | "O2p" -> Hetatmpdb_symbol_t.O2p
  | "O28" -> Hetatmpdb_symbol_t.O28
  | "O2A" -> Hetatmpdb_symbol_t.O2A
  | "O2B" -> Hetatmpdb_symbol_t.O2B
  | "O2D" -> Hetatmpdb_symbol_t.O2D
  | "O2G" -> Hetatmpdb_symbol_t.O2G
  | "O2N" -> Hetatmpdb_symbol_t.O2N
  | "O2P" -> Hetatmpdb_symbol_t.O2P
  | "O3" -> Hetatmpdb_symbol_t.O3
  | "O3p" -> Hetatmpdb_symbol_t.O3p
  | "O30" -> Hetatmpdb_symbol_t.O30
  | "O32" -> Hetatmpdb_symbol_t.O32
  | "O3A" -> Hetatmpdb_symbol_t.O3A
  | "O3B" -> Hetatmpdb_symbol_t.O3B
  | "O3D" -> Hetatmpdb_symbol_t.O3D
  | "O3G" -> Hetatmpdb_symbol_t.O3G
  | "O3P" -> Hetatmpdb_symbol_t.O3P
  | "O4" -> Hetatmpdb_symbol_t.O4
  | "O4p" -> Hetatmpdb_symbol_t.O4p
  | "O4B" -> Hetatmpdb_symbol_t.O4B
  | "O4D" -> Hetatmpdb_symbol_t.O4D
  | "O4P" -> Hetatmpdb_symbol_t.O4P
  | "O5" -> Hetatmpdb_symbol_t.O5
  | "O5p" -> Hetatmpdb_symbol_t.O5p
  | "O5B" -> Hetatmpdb_symbol_t.O5B
  | "O5D" -> Hetatmpdb_symbol_t.O5D
  | "O6" -> Hetatmpdb_symbol_t.O6
  | "O7N" -> Hetatmpdb_symbol_t.O7N
  | "OP1" -> Hetatmpdb_symbol_t.OP1
  | "OP2" -> Hetatmpdb_symbol_t.OP2
  | "P" -> Hetatmpdb_symbol_t.P
  | "PA" -> Hetatmpdb_symbol_t.PA
  | "PB" -> Hetatmpdb_symbol_t.PB
  | "PG" -> Hetatmpdb_symbol_t.PG
  | "PN" -> Hetatmpdb_symbol_t.PN
  | "S" -> Hetatmpdb_symbol_t.S
  | "S1" -> Hetatmpdb_symbol_t.S1
  | "S2" -> Hetatmpdb_symbol_t.S2
  | "S3" -> Hetatmpdb_symbol_t.S3
  | "S4" -> Hetatmpdb_symbol_t.S4
  | "S7" -> Hetatmpdb_symbol_t.S7
  | "UNK" -> Hetatmpdb_symbol_t.UNK
  | "ZN" -> Hetatmpdb_symbol_t.ZN

  | s -> print_fatal_error "hetatmpdb_symbol_of_string" str 
;;

let make str = hetatmpdb_symbol_of_string str;;

let read ib =
  Scanf.bscanf ib "%3s" hetatmpdb_symbol_of_string
;;

(** {6 Abbreviating.} *)

let br = Hetatmpdb_symbol_t.BR;;
let c = Hetatmpdb_symbol_t.C;;
let c1 = Hetatmpdb_symbol_t.C1;;
let c1p = Hetatmpdb_symbol_t.C1p;;
let c11 = Hetatmpdb_symbol_t.C11;;
let c12 = Hetatmpdb_symbol_t.C12;;
let c15 = Hetatmpdb_symbol_t.C15;;
let c16 = Hetatmpdb_symbol_t.C16;;
let c18 = Hetatmpdb_symbol_t.C18;;
let c19 = Hetatmpdb_symbol_t.C19;;
let c1a = Hetatmpdb_symbol_t.C1A;;
let c1b = Hetatmpdb_symbol_t.C1B;;
let c1c = Hetatmpdb_symbol_t.C1C;;
let c1d = Hetatmpdb_symbol_t.C1D;;
let c2 = Hetatmpdb_symbol_t.C2;;
let c2p = Hetatmpdb_symbol_t.C2p;;
let c20 = Hetatmpdb_symbol_t.C20;;
let c21 = Hetatmpdb_symbol_t.C21;;
let c22 = Hetatmpdb_symbol_t.C22;;
let c23 = Hetatmpdb_symbol_t.C23;;
let c24 = Hetatmpdb_symbol_t.C24;;
let c25 = Hetatmpdb_symbol_t.C25;;
let c26 = Hetatmpdb_symbol_t.C26;;
let c27 = Hetatmpdb_symbol_t.C27;;
let c29 = Hetatmpdb_symbol_t.C29;;
let c2a = Hetatmpdb_symbol_t.C2A;;
let c2b = Hetatmpdb_symbol_t.C2B;;
let c2c = Hetatmpdb_symbol_t.C2C;;
let c2d = Hetatmpdb_symbol_t.C2D;;
let c2n = Hetatmpdb_symbol_t.C2N;;
let c3 = Hetatmpdb_symbol_t.C3;;
let c3p = Hetatmpdb_symbol_t.C3p;;
let c31 = Hetatmpdb_symbol_t.C31;;
let c33 = Hetatmpdb_symbol_t.C33;;
let c34 = Hetatmpdb_symbol_t.C34;;
let c35 = Hetatmpdb_symbol_t.C35;;
let c36 = Hetatmpdb_symbol_t.C36;;
let c3a = Hetatmpdb_symbol_t.C3A;;
let c3b = Hetatmpdb_symbol_t.C3B;;
let c3c = Hetatmpdb_symbol_t.C3C;;
let c3d = Hetatmpdb_symbol_t.C3D;;
let c3n = Hetatmpdb_symbol_t.C3N;;
let c4 = Hetatmpdb_symbol_t.C4;;
let c4p = Hetatmpdb_symbol_t.C4p;;
let c4a = Hetatmpdb_symbol_t.C4A;;
let c4b = Hetatmpdb_symbol_t.C4B;;
let c4c = Hetatmpdb_symbol_t.C4C;;
let c4d = Hetatmpdb_symbol_t.C4D;;
let c4n = Hetatmpdb_symbol_t.C4N;;
let c5 = Hetatmpdb_symbol_t.C5;;
let c5p = Hetatmpdb_symbol_t.C5p;;
let c5a = Hetatmpdb_symbol_t.C5A;;
let c5b = Hetatmpdb_symbol_t.C5B;;
let c5d = Hetatmpdb_symbol_t.C5D;;
let c5n = Hetatmpdb_symbol_t.C5N;;
let c6 = Hetatmpdb_symbol_t.C6;;
let c6a = Hetatmpdb_symbol_t.C6A;;
let c6n = Hetatmpdb_symbol_t.C6N;;
let c7n = Hetatmpdb_symbol_t.C7N;;
let c8 = Hetatmpdb_symbol_t.C8;;
let c8a = Hetatmpdb_symbol_t.C8A;;
let c9 = Hetatmpdb_symbol_t.C9;;
let caa = Hetatmpdb_symbol_t.CAA;;
let cab = Hetatmpdb_symbol_t.CAB;;
let cac = Hetatmpdb_symbol_t.CAC;;
let cad = Hetatmpdb_symbol_t.CAD;;
let cba = Hetatmpdb_symbol_t.CBA;;
let cbb = Hetatmpdb_symbol_t.CBB;;
let cbc = Hetatmpdb_symbol_t.CBC;;
let cbd = Hetatmpdb_symbol_t.CBD;;
let cd = Hetatmpdb_symbol_t.CD;;
let cga = Hetatmpdb_symbol_t.CGA;;
let cgd = Hetatmpdb_symbol_t.CGD;;
let ch3 = Hetatmpdb_symbol_t.CH3;;
let cha = Hetatmpdb_symbol_t.CHA;;
let chb = Hetatmpdb_symbol_t.CHB;;
let chc = Hetatmpdb_symbol_t.CHC;;
let chd = Hetatmpdb_symbol_t.CHD;;
let ci1 = Hetatmpdb_symbol_t.CI1;;
let ci2 = Hetatmpdb_symbol_t.CI2;;
let ci3 = Hetatmpdb_symbol_t.CI3;;
let ci4 = Hetatmpdb_symbol_t.CI4;;
let ci5 = Hetatmpdb_symbol_t.CI5;;
let ci6 = Hetatmpdb_symbol_t.CI6;;
let cma = Hetatmpdb_symbol_t.CMA;;
let cmb = Hetatmpdb_symbol_t.CMB;;
let cmc = Hetatmpdb_symbol_t.CMC;;
let cmd = Hetatmpdb_symbol_t.CMD;;
let d1 = Hetatmpdb_symbol_t.D1;;
let d2 = Hetatmpdb_symbol_t.D2;;
let fe = Hetatmpdb_symbol_t.FE;;
let fe1 = Hetatmpdb_symbol_t.FE1;;
let fe2 = Hetatmpdb_symbol_t.FE2;;
let fe3 = Hetatmpdb_symbol_t.FE3;;
let fe4 = Hetatmpdb_symbol_t.FE4;;
let h = Hetatmpdb_symbol_t.H;;
let hn1 = Hetatmpdb_symbol_t.HN1;;
let hn2 = Hetatmpdb_symbol_t.HN2;;
let mg = Hetatmpdb_symbol_t.MG;;
let n = Hetatmpdb_symbol_t.N;;
let n1 = Hetatmpdb_symbol_t.N1;;
let n13 = Hetatmpdb_symbol_t.N13;;
let n1a = Hetatmpdb_symbol_t.N1A;;
let n1n = Hetatmpdb_symbol_t.N1N;;
let n2 = Hetatmpdb_symbol_t.N2;;
let n3 = Hetatmpdb_symbol_t.N3;;
let n3a = Hetatmpdb_symbol_t.N3A;;
let n6 = Hetatmpdb_symbol_t.N6;;
let n6a = Hetatmpdb_symbol_t.N6A;;
let n7 = Hetatmpdb_symbol_t.N7;;
let n7a = Hetatmpdb_symbol_t.N7A;;
let n7n = Hetatmpdb_symbol_t.N7N;;
let n9 = Hetatmpdb_symbol_t.N9;;
let n9a = Hetatmpdb_symbol_t.N9A;;
let na = Hetatmpdb_symbol_t.NA;;
let nb = Hetatmpdb_symbol_t.NB;;
let nc = Hetatmpdb_symbol_t.NC;;
let nd = Hetatmpdb_symbol_t.ND;;
let ni1 = Hetatmpdb_symbol_t.NI1;;
let ni2 = Hetatmpdb_symbol_t.NI2;;
let o = Hetatmpdb_symbol_t.O;;
let o1 = Hetatmpdb_symbol_t.O1;;
let o10 = Hetatmpdb_symbol_t.O10;;
let o14 = Hetatmpdb_symbol_t.O14;;
let o17 = Hetatmpdb_symbol_t.O17;;
let o1a = Hetatmpdb_symbol_t.O1A;;
let o1b = Hetatmpdb_symbol_t.O1B;;
let o1d = Hetatmpdb_symbol_t.O1D;;
let o1g = Hetatmpdb_symbol_t.O1G;;
let o1n = Hetatmpdb_symbol_t.O1N;;
let o1p = Hetatmpdb_symbol_t.O1P;;
let o2 = Hetatmpdb_symbol_t.O2;;
let o2p = Hetatmpdb_symbol_t.O2p;;
let o28 = Hetatmpdb_symbol_t.O28;;
let o2a = Hetatmpdb_symbol_t.O2A;;
let o2b = Hetatmpdb_symbol_t.O2B;;
let o2d = Hetatmpdb_symbol_t.O2D;;
let o2g = Hetatmpdb_symbol_t.O2G;;
let o2n = Hetatmpdb_symbol_t.O2N;;
let o2p = Hetatmpdb_symbol_t.O2P;;
let o3 = Hetatmpdb_symbol_t.O3;;
let o3p = Hetatmpdb_symbol_t.O3p;;
let o30 = Hetatmpdb_symbol_t.O30;;
let o32 = Hetatmpdb_symbol_t.O32;;
let o3a = Hetatmpdb_symbol_t.O3A;;
let o3b = Hetatmpdb_symbol_t.O3B;;
let o3d = Hetatmpdb_symbol_t.O3D;;
let o3g = Hetatmpdb_symbol_t.O3G;;
let o3p = Hetatmpdb_symbol_t.O3P;;
let o4 = Hetatmpdb_symbol_t.O4;;
let o4p = Hetatmpdb_symbol_t.O4p;;
let o4b = Hetatmpdb_symbol_t.O4B;;
let o4d = Hetatmpdb_symbol_t.O4D;;
let o4p = Hetatmpdb_symbol_t.O4P;;
let o5 = Hetatmpdb_symbol_t.O5;;
let o5p = Hetatmpdb_symbol_t.O5p;;
let o5b = Hetatmpdb_symbol_t.O5B;;
let o5d = Hetatmpdb_symbol_t.O5D;;
let o6 = Hetatmpdb_symbol_t.O6;;
let o7n = Hetatmpdb_symbol_t.O7N;;
let op1 = Hetatmpdb_symbol_t.OP1;;
let op2 = Hetatmpdb_symbol_t.OP2;;
let p = Hetatmpdb_symbol_t.P;;
let pa = Hetatmpdb_symbol_t.PA;;
let pb = Hetatmpdb_symbol_t.PB;;
let pg = Hetatmpdb_symbol_t.PG;;
let pn = Hetatmpdb_symbol_t.PN;;
let s = Hetatmpdb_symbol_t.S;;
let s1 = Hetatmpdb_symbol_t.S1;;
let s2 = Hetatmpdb_symbol_t.S2;;
let s3 = Hetatmpdb_symbol_t.S3;;
let s4 = Hetatmpdb_symbol_t.S4;;
let s7 = Hetatmpdb_symbol_t.S7;;
let unk = Hetatmpdb_symbol_t.UNK;;
let zn = Hetatmpdb_symbol_t.ZN;;

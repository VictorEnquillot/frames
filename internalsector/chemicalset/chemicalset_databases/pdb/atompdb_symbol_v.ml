(** {3 The Symbol functionalities for a Atompdb.} *)

let nam_cod = "Atompdb_symbol_v";;


(** {6 Converting.} *)

let name = function
  | Atompdb_symbol_t.C -> Format.sprintf "%s" "C"
  | Atompdb_symbol_t.C1p -> Format.sprintf "%s" "C1'"
  | Atompdb_symbol_t.C2 -> Format.sprintf "%s" "C2"
  | Atompdb_symbol_t.C2p -> Format.sprintf "%s" "C2'"
  | Atompdb_symbol_t.C3p -> Format.sprintf "%s" "C3'"
  | Atompdb_symbol_t.C4 -> Format.sprintf "%s" "C4"
  | Atompdb_symbol_t.C4p -> Format.sprintf "%s" "C4'"
  | Atompdb_symbol_t.C5 -> Format.sprintf "%s" "C5"
  | Atompdb_symbol_t.C5p -> Format.sprintf "%s" "C5'"
  | Atompdb_symbol_t.C6 -> Format.sprintf "%s" "C6"
  | Atompdb_symbol_t.C7 -> Format.sprintf "%s" "C7"
  | Atompdb_symbol_t.C8 -> Format.sprintf "%s" "C8"
  | Atompdb_symbol_t.CA -> Format.sprintf "%s" "CA"
  | Atompdb_symbol_t.CB -> Format.sprintf "%s" "CB"
  | Atompdb_symbol_t.CD -> Format.sprintf "%s" "CD"
  | Atompdb_symbol_t.CD1 -> Format.sprintf "%s" "CD1"
  | Atompdb_symbol_t.CD2 -> Format.sprintf "%s" "CD2"
  | Atompdb_symbol_t.CE -> Format.sprintf "%s" "CE"
  | Atompdb_symbol_t.CE1 -> Format.sprintf "%s" "CE1"
  | Atompdb_symbol_t.CE2 -> Format.sprintf "%s" "CE2"
  | Atompdb_symbol_t.CE3 -> Format.sprintf "%s" "CE3"
  | Atompdb_symbol_t.CG -> Format.sprintf "%s" "CG"
  | Atompdb_symbol_t.CG1 -> Format.sprintf "%s" "CG1"
  | Atompdb_symbol_t.CG2 -> Format.sprintf "%s" "CG2"
  | Atompdb_symbol_t.CH2 -> Format.sprintf "%s" "CH2"
  | Atompdb_symbol_t.CZ -> Format.sprintf "%s" "CZ"
  | Atompdb_symbol_t.CZ2 -> Format.sprintf "%s" "CZ2"
  | Atompdb_symbol_t.CZ3 -> Format.sprintf "%s" "CZ3"
  | Atompdb_symbol_t.H -> Format.sprintf "%s" "H"
  | Atompdb_symbol_t.H1 -> Format.sprintf "%s" "H1"
  | Atompdb_symbol_t.H2 -> Format.sprintf "%s" "H2"
  | Atompdb_symbol_t.H3 -> Format.sprintf "%s" "H3"
  | Atompdb_symbol_t.HA -> Format.sprintf "%s" "HA"
  | Atompdb_symbol_t.HA2 -> Format.sprintf "%s" "HA2"
  | Atompdb_symbol_t.HA3 -> Format.sprintf "%s" "HA3"
  | Atompdb_symbol_t.HB -> Format.sprintf "%s" "HB"
  | Atompdb_symbol_t.HB1 -> Format.sprintf "%s" "HB1"
  | Atompdb_symbol_t.HB2 -> Format.sprintf "%s" "HB2"
  | Atompdb_symbol_t.HB3 -> Format.sprintf "%s" "HB3"
  | Atompdb_symbol_t.HD1 -> Format.sprintf "%s" "HD1"
  | Atompdb_symbol_t.HD11 -> Format.sprintf "%s" "HD11"
  | Atompdb_symbol_t.HD12 -> Format.sprintf "%s" "HD12"
  | Atompdb_symbol_t.HD13 -> Format.sprintf "%s" "HD13"
  | Atompdb_symbol_t.HD2 -> Format.sprintf "%s" "HD2"
  | Atompdb_symbol_t.HD21 -> Format.sprintf "%s" "HD21"
  | Atompdb_symbol_t.HD22 -> Format.sprintf "%s" "HD22"
  | Atompdb_symbol_t.HD23 -> Format.sprintf "%s" "HD23"
  | Atompdb_symbol_t.HD3 -> Format.sprintf "%s" "HD3"
  | Atompdb_symbol_t.HE -> Format.sprintf "%s" "HE"
  | Atompdb_symbol_t.HE1 -> Format.sprintf "%s" "HE1"
  | Atompdb_symbol_t.HE2 -> Format.sprintf "%s" "HE2"
  | Atompdb_symbol_t.HE21 -> Format.sprintf "%s" "HE21"
  | Atompdb_symbol_t.HE22 -> Format.sprintf "%s" "HE22"
  | Atompdb_symbol_t.HE3 -> Format.sprintf "%s" "HE3"
  | Atompdb_symbol_t.HG -> Format.sprintf "%s" "HG"
  | Atompdb_symbol_t.HG1 -> Format.sprintf "%s" "HG1"
  | Atompdb_symbol_t.HG11 -> Format.sprintf "%s" "HG11"
  | Atompdb_symbol_t.HG12 -> Format.sprintf "%s" "HG12"
  | Atompdb_symbol_t.HG13 -> Format.sprintf "%s" "HG13"
  | Atompdb_symbol_t.HG2 -> Format.sprintf "%s" "HG2"
  | Atompdb_symbol_t.HG21 -> Format.sprintf "%s" "HG21"
  | Atompdb_symbol_t.HG22 -> Format.sprintf "%s" "HG22"
  | Atompdb_symbol_t.HG23 -> Format.sprintf "%s" "HG23"
  | Atompdb_symbol_t.HG3 -> Format.sprintf "%s" "HG3"
  | Atompdb_symbol_t.HH -> Format.sprintf "%s" "HH"
  | Atompdb_symbol_t.HH11 -> Format.sprintf "%s" "HH11"
  | Atompdb_symbol_t.HH12 -> Format.sprintf "%s" "HH12"
  | Atompdb_symbol_t.HH21 -> Format.sprintf "%s" "HH21"
  | Atompdb_symbol_t.HH22 -> Format.sprintf "%s" "HH22"
  | Atompdb_symbol_t.HZ -> Format.sprintf "%s" "HZ"
  | Atompdb_symbol_t.HZ1 -> Format.sprintf "%s" "HZ1"
  | Atompdb_symbol_t.HZ2 -> Format.sprintf "%s" "HZ2"
  | Atompdb_symbol_t.HZ3 -> Format.sprintf "%s" "HZ3"
  | Atompdb_symbol_t.N -> Format.sprintf "%s" "N"
  | Atompdb_symbol_t.N1 -> Format.sprintf "%s" "N1"
  | Atompdb_symbol_t.N2 -> Format.sprintf "%s" "N2"
  | Atompdb_symbol_t.N3 -> Format.sprintf "%s" "N3"
  | Atompdb_symbol_t.N4 -> Format.sprintf "%s" "N4"
  | Atompdb_symbol_t.N6 -> Format.sprintf "%s" "N6"
  | Atompdb_symbol_t.N7 -> Format.sprintf "%s" "N7"
  | Atompdb_symbol_t.N9 -> Format.sprintf "%s" "N9"
  | Atompdb_symbol_t.ND1 -> Format.sprintf "%s" "ND1"
  | Atompdb_symbol_t.ND2 -> Format.sprintf "%s" "ND2"
  | Atompdb_symbol_t.NE -> Format.sprintf "%s" "NE"
  | Atompdb_symbol_t.NE1 -> Format.sprintf "%s" "NE1"
  | Atompdb_symbol_t.NE2 -> Format.sprintf "%s" "NE2"
  | Atompdb_symbol_t.NH1 -> Format.sprintf "%s" "NH1"
  | Atompdb_symbol_t.NH2 -> Format.sprintf "%s" "NH2"
  | Atompdb_symbol_t.NZ -> Format.sprintf "%s" "NZ"
  | Atompdb_symbol_t.O -> Format.sprintf "%s" "O"
  | Atompdb_symbol_t.O2 -> Format.sprintf "%s" "O2"
  | Atompdb_symbol_t.O2p -> Format.sprintf "%s" "O2'"
  | Atompdb_symbol_t.O3p -> Format.sprintf "%s" "O3'"
  | Atompdb_symbol_t.O4 -> Format.sprintf "%s" "O4"
  | Atompdb_symbol_t.O4p -> Format.sprintf "%s" "O4'"
  | Atompdb_symbol_t.O5p -> Format.sprintf "%s" "O5'"
  | Atompdb_symbol_t.O6 -> Format.sprintf "%s" "O6"
  | Atompdb_symbol_t.OD1 -> Format.sprintf "%s" "OD1"
  | Atompdb_symbol_t.OD2 -> Format.sprintf "%s" "OD2"
  | Atompdb_symbol_t.OE1 -> Format.sprintf "%s" "OE1"
  | Atompdb_symbol_t.OE2 -> Format.sprintf "%s" "OE2"
  | Atompdb_symbol_t.OG -> Format.sprintf "%s" "OG"
  | Atompdb_symbol_t.OG1 -> Format.sprintf "%s" "OG1"
  | Atompdb_symbol_t.OH -> Format.sprintf "%s" "OH"
  | Atompdb_symbol_t.OP1 -> Format.sprintf "%s" "OP1"
  | Atompdb_symbol_t.OP2 -> Format.sprintf "%s" "OP2"
  | Atompdb_symbol_t.OXT -> Format.sprintf "%s" "OXT"
  | Atompdb_symbol_t.P -> Format.sprintf "%s" "P"
  | Atompdb_symbol_t.SD -> Format.sprintf "%s" "SD"
  | Atompdb_symbol_t.SG -> Format.sprintf "%s" "SG"
;;

let print ppf sym_rsp =
  Format.fprintf ppf "%s" (name sym_rsp) 
;;

let compare sym_rsp_a sym_rsp_b =
  String.compare (name sym_rsp_a) (name sym_rsp_b)
;;

(** {6 Making.} *)

let atompdb_symbol_list () =
  [
  Atompdb_symbol_t.C;
  Atompdb_symbol_t.C1p;
  Atompdb_symbol_t.C2;
  Atompdb_symbol_t.C2p;
  Atompdb_symbol_t.C3p;
  Atompdb_symbol_t.C4;
  Atompdb_symbol_t.C4p;
  Atompdb_symbol_t.C5;
  Atompdb_symbol_t.C5p;
  Atompdb_symbol_t.C6;
  Atompdb_symbol_t.C7;
  Atompdb_symbol_t.C8;
  Atompdb_symbol_t.CA;
  Atompdb_symbol_t.CB;
  Atompdb_symbol_t.CD;
  Atompdb_symbol_t.CD1;
  Atompdb_symbol_t.CD2;
  Atompdb_symbol_t.CE;
  Atompdb_symbol_t.CE1;
  Atompdb_symbol_t.CE2;
  Atompdb_symbol_t.CE3;
  Atompdb_symbol_t.CG;
  Atompdb_symbol_t.CG1;
  Atompdb_symbol_t.CG2;
  Atompdb_symbol_t.CH2;
  Atompdb_symbol_t.CZ;
  Atompdb_symbol_t.CZ2;
  Atompdb_symbol_t.CZ3;
  Atompdb_symbol_t.H;
  Atompdb_symbol_t.H1;
  Atompdb_symbol_t.H2;
  Atompdb_symbol_t.H3;
  Atompdb_symbol_t.HA;
  Atompdb_symbol_t.HA2;
  Atompdb_symbol_t.HA3;
  Atompdb_symbol_t.HB;
  Atompdb_symbol_t.HB1;
  Atompdb_symbol_t.HB2;
  Atompdb_symbol_t.HB3;
  Atompdb_symbol_t.HD1;
  Atompdb_symbol_t.HD11;
  Atompdb_symbol_t.HD12;
  Atompdb_symbol_t.HD13;
  Atompdb_symbol_t.HD2;
  Atompdb_symbol_t.HD21;
  Atompdb_symbol_t.HD22;
  Atompdb_symbol_t.HD23;
  Atompdb_symbol_t.HD3;
  Atompdb_symbol_t.HE;
  Atompdb_symbol_t.HE1;
  Atompdb_symbol_t.HE2;
  Atompdb_symbol_t.HE21;
  Atompdb_symbol_t.HE22;
  Atompdb_symbol_t.HE3;
  Atompdb_symbol_t.HG;
  Atompdb_symbol_t.HG1;
  Atompdb_symbol_t.HG11;
  Atompdb_symbol_t.HG12;
  Atompdb_symbol_t.HG13;
  Atompdb_symbol_t.HG2;
  Atompdb_symbol_t.HG21;
  Atompdb_symbol_t.HG22;
  Atompdb_symbol_t.HG23;
  Atompdb_symbol_t.HG3;
  Atompdb_symbol_t.HH;
  Atompdb_symbol_t.HH11;
  Atompdb_symbol_t.HH12;
  Atompdb_symbol_t.HH21;
  Atompdb_symbol_t.HH22;
  Atompdb_symbol_t.HZ;
  Atompdb_symbol_t.HZ1;
  Atompdb_symbol_t.HZ2;
  Atompdb_symbol_t.HZ3;
  Atompdb_symbol_t.N;
  Atompdb_symbol_t.N1;
  Atompdb_symbol_t.N2;
  Atompdb_symbol_t.N3;
  Atompdb_symbol_t.N4;
  Atompdb_symbol_t.N6;
  Atompdb_symbol_t.N7;
  Atompdb_symbol_t.N9;
  Atompdb_symbol_t.ND1;
  Atompdb_symbol_t.ND2;
  Atompdb_symbol_t.NE;
  Atompdb_symbol_t.NE1;
  Atompdb_symbol_t.NE2;
  Atompdb_symbol_t.NH1;
  Atompdb_symbol_t.NH2;
  Atompdb_symbol_t.NZ;
  Atompdb_symbol_t.O;
  Atompdb_symbol_t.O2;
  Atompdb_symbol_t.O2p;
  Atompdb_symbol_t.O3p;
  Atompdb_symbol_t.O4;
  Atompdb_symbol_t.O4p;
  Atompdb_symbol_t.O5p;
  Atompdb_symbol_t.O6;
  Atompdb_symbol_t.OD1;
  Atompdb_symbol_t.OD2;
  Atompdb_symbol_t.OE1;
  Atompdb_symbol_t.OE2;
  Atompdb_symbol_t.OG;
  Atompdb_symbol_t.OG1;
  Atompdb_symbol_t.OH;
  Atompdb_symbol_t.OP1;
  Atompdb_symbol_t.OP2;
  Atompdb_symbol_t.OXT;
  Atompdb_symbol_t.P;
  Atompdb_symbol_t.SD;
  Atompdb_symbol_t.SG;
 ]
;;

let print_fatal_error nam_fun str =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.     expecting known Atompdb Symbol.\      
     found >%s< Symbol>%s<.\      
     cure : add it to current list:@.%s.@]@."
     nam_cod nam_fun str str str
(*(List_v.name name (atompdb_symbol_list ())) ;*);
  assert false 
;;

let atompdb_symbol_of_string str =
  let stu = String.uppercase str in
  match stu with
  | "C" -> Atompdb_symbol_t.C
  | "C1p" -> Atompdb_symbol_t.C1p
  | "C2" -> Atompdb_symbol_t.C2
  | "C2p" -> Atompdb_symbol_t.C2p
  | "C3p" -> Atompdb_symbol_t.C3p
  | "C4" -> Atompdb_symbol_t.C4
  | "C4p" -> Atompdb_symbol_t.C4p
  | "C5" -> Atompdb_symbol_t.C5
  | "C5p" -> Atompdb_symbol_t.C5p
  | "C6" -> Atompdb_symbol_t.C6
  | "C7" -> Atompdb_symbol_t.C7
  | "C8" -> Atompdb_symbol_t.C8
  | "CA" -> Atompdb_symbol_t.CA
  | "CB" -> Atompdb_symbol_t.CB
  | "CD" -> Atompdb_symbol_t.CD
  | "CD1" -> Atompdb_symbol_t.CD1
  | "CD2" -> Atompdb_symbol_t.CD2
  | "CE" -> Atompdb_symbol_t.CE
  | "CE1" -> Atompdb_symbol_t.CE1
  | "CE2" -> Atompdb_symbol_t.CE2
  | "CE3" -> Atompdb_symbol_t.CE3
  | "CG" -> Atompdb_symbol_t.CG
  | "CG1" -> Atompdb_symbol_t.CG1
  | "CG2" -> Atompdb_symbol_t.CG2
  | "CH2" -> Atompdb_symbol_t.CH2
  | "CZ" -> Atompdb_symbol_t.CZ
  | "CZ2" -> Atompdb_symbol_t.CZ2
  | "CZ3" -> Atompdb_symbol_t.CZ3
  | "H" -> Atompdb_symbol_t.H
  | "H1" -> Atompdb_symbol_t.H1
  | "H2" -> Atompdb_symbol_t.H2
  | "H3" -> Atompdb_symbol_t.H3
  | "HA" -> Atompdb_symbol_t.HA
  | "HA2" -> Atompdb_symbol_t.HA2
  | "HA3" -> Atompdb_symbol_t.HA3
  | "HB" -> Atompdb_symbol_t.HB
  | "HB1" -> Atompdb_symbol_t.HB1
  | "HB2" -> Atompdb_symbol_t.HB2
  | "HB3" -> Atompdb_symbol_t.HB3
  | "HD1" -> Atompdb_symbol_t.HD1
  | "HD11" -> Atompdb_symbol_t.HD11
  | "HD12" -> Atompdb_symbol_t.HD12
  | "HD13" -> Atompdb_symbol_t.HD13
  | "HD2" -> Atompdb_symbol_t.HD2
  | "HD21" -> Atompdb_symbol_t.HD21
  | "HD22" -> Atompdb_symbol_t.HD22
  | "HD23" -> Atompdb_symbol_t.HD23
  | "HD3" -> Atompdb_symbol_t.HD3
  | "HE" -> Atompdb_symbol_t.HE
  | "HE1" -> Atompdb_symbol_t.HE1
  | "HE2" -> Atompdb_symbol_t.HE2
  | "HE21" -> Atompdb_symbol_t.HE21
  | "HE22" -> Atompdb_symbol_t.HE22
  | "HE3" -> Atompdb_symbol_t.HE3
  | "HG" -> Atompdb_symbol_t.HG
  | "HG1" -> Atompdb_symbol_t.HG1
  | "HG11" -> Atompdb_symbol_t.HG11
  | "HG12" -> Atompdb_symbol_t.HG12
  | "HG13" -> Atompdb_symbol_t.HG13
  | "HG2" -> Atompdb_symbol_t.HG2
  | "HG21" -> Atompdb_symbol_t.HG21
  | "HG22" -> Atompdb_symbol_t.HG22
  | "HG23" -> Atompdb_symbol_t.HG23
  | "HG3" -> Atompdb_symbol_t.HG3
  | "HH" -> Atompdb_symbol_t.HH
  | "HH11" -> Atompdb_symbol_t.HH11
  | "HH12" -> Atompdb_symbol_t.HH12
  | "HH21" -> Atompdb_symbol_t.HH21
  | "HH22" -> Atompdb_symbol_t.HH22
  | "HZ" -> Atompdb_symbol_t.HZ
  | "HZ1" -> Atompdb_symbol_t.HZ1
  | "HZ2" -> Atompdb_symbol_t.HZ2
  | "HZ3" -> Atompdb_symbol_t.HZ3
  | "N" -> Atompdb_symbol_t.N
  | "N1" -> Atompdb_symbol_t.N1
  | "N2" -> Atompdb_symbol_t.N2
  | "N3" -> Atompdb_symbol_t.N3
  | "N4" -> Atompdb_symbol_t.N4
  | "N6" -> Atompdb_symbol_t.N6
  | "N7" -> Atompdb_symbol_t.N7
  | "N9" -> Atompdb_symbol_t.N9
  | "ND1" -> Atompdb_symbol_t.ND1
  | "ND2" -> Atompdb_symbol_t.ND2
  | "NE" -> Atompdb_symbol_t.NE
  | "NE1" -> Atompdb_symbol_t.NE1
  | "NE2" -> Atompdb_symbol_t.NE2
  | "NH1" -> Atompdb_symbol_t.NH1
  | "NH2" -> Atompdb_symbol_t.NH2
  | "NZ" -> Atompdb_symbol_t.NZ
  | "O" -> Atompdb_symbol_t.O
  | "O2" -> Atompdb_symbol_t.O2
  | "O2p" -> Atompdb_symbol_t.O2p
  | "O3p" -> Atompdb_symbol_t.O3p
  | "O4" -> Atompdb_symbol_t.O4
  | "O4p" -> Atompdb_symbol_t.O4p
  | "O5p" -> Atompdb_symbol_t.O5p
  | "O6" -> Atompdb_symbol_t.O6
  | "OD1" -> Atompdb_symbol_t.OD1
  | "OD2" -> Atompdb_symbol_t.OD2
  | "OE1" -> Atompdb_symbol_t.OE1
  | "OE2" -> Atompdb_symbol_t.OE2
  | "OG" -> Atompdb_symbol_t.OG
  | "OG1" -> Atompdb_symbol_t.OG1
  | "OH" -> Atompdb_symbol_t.OH
  | "OP1" -> Atompdb_symbol_t.OP1
  | "OP2" -> Atompdb_symbol_t.OP2
  | "OXT" -> Atompdb_symbol_t.OXT
  | "P" -> Atompdb_symbol_t.P
  | "SD" -> Atompdb_symbol_t.SD
  | "SG" -> Atompdb_symbol_t.SG
  | s -> print_fatal_error "atompdb_symbol_of_string" str 
;;

let make str = atompdb_symbol_of_string str;;

let read ib =
  Scanf.bscanf ib "%3s" atompdb_symbol_of_string
;;

(** {6 Abbreviating.} *)

let c = Atompdb_symbol_t.C;;
let c1p = Atompdb_symbol_t.C1p;;
let c2 = Atompdb_symbol_t.C2;;
let c2p = Atompdb_symbol_t.C2p;;
let c3p = Atompdb_symbol_t.C3p;;
let c4 = Atompdb_symbol_t.C4;;
let c4p = Atompdb_symbol_t.C4p;;
let c5 = Atompdb_symbol_t.C5;;
let c5p = Atompdb_symbol_t.C5p;;
let c6 = Atompdb_symbol_t.C6;;
let c7 = Atompdb_symbol_t.C7;;
let c8 = Atompdb_symbol_t.C8;;
let ca = Atompdb_symbol_t.CA;;
let cb = Atompdb_symbol_t.CB;;
let cd = Atompdb_symbol_t.CD;;
let cd1 = Atompdb_symbol_t.CD1;;
let cd2 = Atompdb_symbol_t.CD2;;
let ce = Atompdb_symbol_t.CE;;
let ce1 = Atompdb_symbol_t.CE1;;
let ce2 = Atompdb_symbol_t.CE2;;
let ce3 = Atompdb_symbol_t.CE3;;
let cg = Atompdb_symbol_t.CG;;
let cg1 = Atompdb_symbol_t.CG1;;
let cg2 = Atompdb_symbol_t.CG2;;
let ch2 = Atompdb_symbol_t.CH2;;
let cz = Atompdb_symbol_t.CZ;;
let cz2 = Atompdb_symbol_t.CZ2;;
let cz3 = Atompdb_symbol_t.CZ3;;
let h = Atompdb_symbol_t.H;;
let h1 = Atompdb_symbol_t.H1;;
let h2 = Atompdb_symbol_t.H2;;
let h3 = Atompdb_symbol_t.H3;;
let ha = Atompdb_symbol_t.HA;;
let ha2 = Atompdb_symbol_t.HA2;;
let ha3 = Atompdb_symbol_t.HA3;;
let hb = Atompdb_symbol_t.HB;;
let hb1 = Atompdb_symbol_t.HB1;;
let hb2 = Atompdb_symbol_t.HB2;;
let hb3 = Atompdb_symbol_t.HB3;;
let hd1 = Atompdb_symbol_t.HD1;;
let hd11 = Atompdb_symbol_t.HD11;;
let hd12 = Atompdb_symbol_t.HD12;;
let hd13 = Atompdb_symbol_t.HD13;;
let hd2 = Atompdb_symbol_t.HD2;;
let hd21 = Atompdb_symbol_t.HD21;;
let hd22 = Atompdb_symbol_t.HD22;;
let hd23 = Atompdb_symbol_t.HD23;;
let hd3 = Atompdb_symbol_t.HD3;;
let he = Atompdb_symbol_t.HE;;
let he1 = Atompdb_symbol_t.HE1;;
let he2 = Atompdb_symbol_t.HE2;;
let he21 = Atompdb_symbol_t.HE21;;
let he22 = Atompdb_symbol_t.HE22;;
let he3 = Atompdb_symbol_t.HE3;;
let hg = Atompdb_symbol_t.HG;;
let hg1 = Atompdb_symbol_t.HG1;;
let hg11 = Atompdb_symbol_t.HG11;;
let hg12 = Atompdb_symbol_t.HG12;;
let hg13 = Atompdb_symbol_t.HG13;;
let hg2 = Atompdb_symbol_t.HG2;;
let hg21 = Atompdb_symbol_t.HG21;;
let hg22 = Atompdb_symbol_t.HG22;;
let hg23 = Atompdb_symbol_t.HG23;;
let hg3 = Atompdb_symbol_t.HG3;;
let hh = Atompdb_symbol_t.HH;;
let hh11 = Atompdb_symbol_t.HH11;;
let hh12 = Atompdb_symbol_t.HH12;;
let hh21 = Atompdb_symbol_t.HH21;;
let hh22 = Atompdb_symbol_t.HH22;;
let hz = Atompdb_symbol_t.HZ;;
let hz1 = Atompdb_symbol_t.HZ1;;
let hz2 = Atompdb_symbol_t.HZ2;;
let hz3 = Atompdb_symbol_t.HZ3;;
let n = Atompdb_symbol_t.N;;
let n1 = Atompdb_symbol_t.N1;;
let n2 = Atompdb_symbol_t.N2;;
let n3 = Atompdb_symbol_t.N3;;
let n4 = Atompdb_symbol_t.N4;;
let n6 = Atompdb_symbol_t.N6;;
let n7 = Atompdb_symbol_t.N7;;
let n9 = Atompdb_symbol_t.N9;;
let nd1 = Atompdb_symbol_t.ND1;;
let nd2 = Atompdb_symbol_t.ND2;;
let ne = Atompdb_symbol_t.NE;;
let ne1 = Atompdb_symbol_t.NE1;;
let ne2 = Atompdb_symbol_t.NE2;;
let nh1 = Atompdb_symbol_t.NH1;;
let nh2 = Atompdb_symbol_t.NH2;;
let nz = Atompdb_symbol_t.NZ;;
let o = Atompdb_symbol_t.O;;
let o2 = Atompdb_symbol_t.O2;;
let o2p = Atompdb_symbol_t.O2p;;
let o3p = Atompdb_symbol_t.O3p;;
let o4 = Atompdb_symbol_t.O4;;
let o4p = Atompdb_symbol_t.O4p;;
let o5p = Atompdb_symbol_t.O5p;;
let o6 = Atompdb_symbol_t.O6;;
let od1 = Atompdb_symbol_t.OD1;;
let od2 = Atompdb_symbol_t.OD2;;
let oe1 = Atompdb_symbol_t.OE1;;
let oe2 = Atompdb_symbol_t.OE2;;
let og = Atompdb_symbol_t.OG;;
let og1 = Atompdb_symbol_t.OG1;;
let oh = Atompdb_symbol_t.OH;;
let op1 = Atompdb_symbol_t.OP1;;
let op2 = Atompdb_symbol_t.OP2;;
let oxt = Atompdb_symbol_t.OXT;;
let p = Atompdb_symbol_t.P;;
let sd = Atompdb_symbol_t.SD;;
let sg = Atompdb_symbol_t.SG;;

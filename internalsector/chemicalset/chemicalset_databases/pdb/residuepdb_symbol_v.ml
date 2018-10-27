(** {3 The Symbol functionalities for a Residuepdb.} *)

let nam_cod = "Residuepdb_symbol_v";;


(** {6 Converting.} *)

let name = function
  | Residuepdb_symbol_t.ALA -> Format.sprintf "%s" "ALA"
  | Residuepdb_symbol_t.ARG -> Format.sprintf "%s" "ARG"
  | Residuepdb_symbol_t.ASN -> Format.sprintf "%s" "ASN"
  | Residuepdb_symbol_t.ASP -> Format.sprintf "%s" "ASP"
  | Residuepdb_symbol_t.CYS -> Format.sprintf "%s" "CYS"
  | Residuepdb_symbol_t.GLN -> Format.sprintf "%s" "GLN"
  | Residuepdb_symbol_t.GLU -> Format.sprintf "%s" "GLU"
  | Residuepdb_symbol_t.GLY -> Format.sprintf "%s" "GLY"
  | Residuepdb_symbol_t.HIS -> Format.sprintf "%s" "HIS"
  | Residuepdb_symbol_t.ILE -> Format.sprintf "%s" "ILE"
  | Residuepdb_symbol_t.LEU -> Format.sprintf "%s" "LEU"
  | Residuepdb_symbol_t.LYS -> Format.sprintf "%s" "LYS"
  | Residuepdb_symbol_t.MET -> Format.sprintf "%s" "MET"
  | Residuepdb_symbol_t.PHE -> Format.sprintf "%s" "PHE"
  | Residuepdb_symbol_t.PRO -> Format.sprintf "%s" "PRO"
  | Residuepdb_symbol_t.SER -> Format.sprintf "%s" "SER"
  | Residuepdb_symbol_t.THR -> Format.sprintf "%s" "THR"
  | Residuepdb_symbol_t.TRP -> Format.sprintf "%s" "TRP"
  | Residuepdb_symbol_t.TYR -> Format.sprintf "%s" "TYR"
  | Residuepdb_symbol_t.VAL -> Format.sprintf "%s" "VAL"
;;

let print ppf sym_rsp =
  Format.fprintf ppf "%s" (name sym_rsp) 
;;

let compare sym_rsp_a sym_rsp_b =
  String.compare (name sym_rsp_a) (name sym_rsp_b)
;;

(** {6 Making.} *)

let residuepdb_symbol_list () =
  [
   Residuepdb_symbol_t.ALA;
   Residuepdb_symbol_t.ARG;
   Residuepdb_symbol_t.ASN;
   Residuepdb_symbol_t.ASP;
   Residuepdb_symbol_t.CYS;
   Residuepdb_symbol_t.GLN;
   Residuepdb_symbol_t.GLU;
   Residuepdb_symbol_t.GLY;
   Residuepdb_symbol_t.HIS;
   Residuepdb_symbol_t.ILE;
   Residuepdb_symbol_t.LEU;
   Residuepdb_symbol_t.LYS;
   Residuepdb_symbol_t.MET;
   Residuepdb_symbol_t.PHE;
   Residuepdb_symbol_t.PRO;
   Residuepdb_symbol_t.SER;
   Residuepdb_symbol_t.THR;
   Residuepdb_symbol_t.TRP;
   Residuepdb_symbol_t.TYR;
   Residuepdb_symbol_t.VAL;
 ]
;;

let print_fatal_error nam_fun str =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.     expecting known Residuepdb Symbol.\      
     found >%s< Symbol>%s<.\      
     cure : add it to current list:@.%s.@]@."
     nam_cod nam_fun str str str
(*(List_v.name name (residuepdb_symbol_list ())) ;*);
  assert false 
;;

let residuepdb_symbol_of_string str =
  let stu = String.uppercase str in
  match stu with
  | "ALA" -> Residuepdb_symbol_t.ALA
  | "ARG" -> Residuepdb_symbol_t.ARG
  | "ASN" -> Residuepdb_symbol_t.ASN
  | "ASP" -> Residuepdb_symbol_t.ASP
  | "CYS" -> Residuepdb_symbol_t.CYS
  | "GLN" -> Residuepdb_symbol_t.GLN
  | "GLU" -> Residuepdb_symbol_t.GLU
  | "GLY" -> Residuepdb_symbol_t.GLY
  | "HIS" -> Residuepdb_symbol_t.HIS
  | "ILE" -> Residuepdb_symbol_t.ILE
  | "LEU" -> Residuepdb_symbol_t.LEU
  | "LYS" -> Residuepdb_symbol_t.LYS
  | "MET" -> Residuepdb_symbol_t.MET
  | "PHE" -> Residuepdb_symbol_t.PHE
  | "PRO" -> Residuepdb_symbol_t.PRO
  | "SER" -> Residuepdb_symbol_t.SER
  | "THR" -> Residuepdb_symbol_t.THR
  | "TRP" -> Residuepdb_symbol_t.TRP
  | "TYR" -> Residuepdb_symbol_t.TYR
  | "VAL" -> Residuepdb_symbol_t.VAL
  | s -> print_fatal_error "residuepdb_symbol_of_string" str 
;;

let make str = residuepdb_symbol_of_string str;;

let read ib =
  Scanf.bscanf ib "%3s" residuepdb_symbol_of_string
;;

(** {6 Abbreviating.} *)

let ala = Residuepdb_symbol_t.ALA;;
let arg = Residuepdb_symbol_t.ARG;;
let asn = Residuepdb_symbol_t.ASN;;
let asp = Residuepdb_symbol_t.ASP;;
let cys = Residuepdb_symbol_t.CYS;;
let gln = Residuepdb_symbol_t.GLN;;
let glu = Residuepdb_symbol_t.GLU;;
let gly = Residuepdb_symbol_t.GLY;;
let his = Residuepdb_symbol_t.HIS;;
let ile = Residuepdb_symbol_t.ILE;;
let leu = Residuepdb_symbol_t.LEU;;
let lys = Residuepdb_symbol_t.LYS;;
let met = Residuepdb_symbol_t.MET;;
let phe = Residuepdb_symbol_t.PHE;;
let pro = Residuepdb_symbol_t.PRO;;
let ser = Residuepdb_symbol_t.SER;;
let thr = Residuepdb_symbol_t.THR;;
let trp = Residuepdb_symbol_t.TRP;;
let tyr = Residuepdb_symbol_t.TYR;;
let v_l = Residuepdb_symbol_t.VAL;;


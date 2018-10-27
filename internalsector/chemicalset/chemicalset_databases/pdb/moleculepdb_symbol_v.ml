(** {3 The Symbol functionalities for a Moleculepdb.} *)

let nam_cod = "Moleculepdb_symbol_v";;


(* 
   egrep -h '^HETATM ' $PDB/*.pdb | cut -b 18-20 | sed 's/ //' | sort -u | sed "s/'/p/" > MOLECULEPDB_SYMBOLS

 cat MOLECULEPDB_SYMBOLS | tr A-Z a-z > moleculepdb_symbols

 awk '{print "  | Moleculepdb_symbol_t."$1" -> Format.sprintf \"%s\" \""$1"\""}' MOLECULEPDB_SYMBOLS > q
 awk '{print "   Moleculepdb_symbol_t."$1";"}' MOLECULEPDB_SYMBOLS > q
 awk '{print "  | \""$1"\" -> Moleculepdb_symbol_t."$1}' MOLECULEPDB_SYMBOLS > q
 paste MOLECULEPDB_SYMBOLS moleculepdb_symbols | awk '{print "let "$2" = Moleculepdb_symbol_t."$1";;"}'  > q

 *)

(** {6 Converting.} *)

let name = function
  | Moleculepdb_symbol_t.MPS_3PG -> Format.sprintf "%s" "3PG"
  | Moleculepdb_symbol_t.MPS_5PH -> Format.sprintf "%s" "5PH"
  | Moleculepdb_symbol_t.ACE -> Format.sprintf "%s" "ACE"
  | Moleculepdb_symbol_t.ATP -> Format.sprintf "%s" "ATP"
  | Moleculepdb_symbol_t.BR -> Format.sprintf "%s" "BR"
  | Moleculepdb_symbol_t.BRU -> Format.sprintf "%s" "BRU"
  | Moleculepdb_symbol_t.CD -> Format.sprintf "%s" "CD"
  | Moleculepdb_symbol_t.DMS -> Format.sprintf "%s" "DMS"
  | Moleculepdb_symbol_t.DOD -> Format.sprintf "%s" "DOD"
  | Moleculepdb_symbol_t.GOL -> Format.sprintf "%s" "GOL"
  | Moleculepdb_symbol_t.HEM -> Format.sprintf "%s" "HEM"
  | Moleculepdb_symbol_t.HOH -> Format.sprintf "%s" "HOH"
  | Moleculepdb_symbol_t.IPA -> Format.sprintf "%s" "IPA"
  | Moleculepdb_symbol_t.ISP -> Format.sprintf "%s" "ISP"
  | Moleculepdb_symbol_t.MG -> Format.sprintf "%s" "MG"
  | Moleculepdb_symbol_t.NAD -> Format.sprintf "%s" "NAD"
  | Moleculepdb_symbol_t.NH2 -> Format.sprintf "%s" "NH2"
  | Moleculepdb_symbol_t.NTN -> Format.sprintf "%s" "NTN"
  | Moleculepdb_symbol_t.OXY -> Format.sprintf "%s" "OXY"
  | Moleculepdb_symbol_t.PED -> Format.sprintf "%s" "PED"
  | Moleculepdb_symbol_t.PO4 -> Format.sprintf "%s" "PO4"
  | Moleculepdb_symbol_t.SF4 -> Format.sprintf "%s" "SF4"
  | Moleculepdb_symbol_t.SO4 -> Format.sprintf "%s" "SO4"
  | Moleculepdb_symbol_t.UNK -> Format.sprintf "%s" "UNK"
  | Moleculepdb_symbol_t.UNX -> Format.sprintf "%s" "UNX"
  | Moleculepdb_symbol_t.ZN -> Format.sprintf "%s" "ZN"
;;

let print ppf sym_rsp =
  Format.fprintf ppf "%s" (name sym_rsp) 
;;

let compare sym_rsp_a sym_rsp_b =
  String.compare (name sym_rsp_a) (name sym_rsp_b)
;;

(** {6 Making.} *)

let moleculepdb_symbol_list () =
  [
   Moleculepdb_symbol_t.MPS_3PG;
   Moleculepdb_symbol_t.MPS_5PH;
   Moleculepdb_symbol_t.ACE;
   Moleculepdb_symbol_t.ATP;
   Moleculepdb_symbol_t.BRU;
   Moleculepdb_symbol_t.CD;
   Moleculepdb_symbol_t.DMS;
   Moleculepdb_symbol_t.DOD;
   Moleculepdb_symbol_t.GOL;
   Moleculepdb_symbol_t.HEM;
   Moleculepdb_symbol_t.HOH;
   Moleculepdb_symbol_t.IPA;
   Moleculepdb_symbol_t.ISP;
   Moleculepdb_symbol_t.MG;
   Moleculepdb_symbol_t.NAD;
   Moleculepdb_symbol_t.NH2;
   Moleculepdb_symbol_t.NTN;
   Moleculepdb_symbol_t.OXY;
   Moleculepdb_symbol_t.PED;
   Moleculepdb_symbol_t.PO4;
   Moleculepdb_symbol_t.SF4;
   Moleculepdb_symbol_t.SO4;
   Moleculepdb_symbol_t.UNK;
   Moleculepdb_symbol_t.UNX;
   Moleculepdb_symbol_t.ZN;
 ]
;;

let print_fatal_error nam_fun str =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.     expecting known Moleculepdb Symbol.\      
     found >%s< Symbol>%s<.\      
     cure : add it to current list:@.%s.@]@."
     nam_cod nam_fun str str str
(*(List_v.name name (moleculepdb_symbol_list ())) ;*);
  assert false 
;;

let moleculepdb_symbol_of_string str =
  let stu = String.uppercase str in
  match stu with
  | "3PG" -> Moleculepdb_symbol_t.MPS_3PG
  | "5PH" -> Moleculepdb_symbol_t.MPS_5PH
  | "ACE" -> Moleculepdb_symbol_t.ACE
  | "ATP" -> Moleculepdb_symbol_t.ATP
  | "BRU" -> Moleculepdb_symbol_t.BRU
  | "CD" -> Moleculepdb_symbol_t.CD
  | "DMS" -> Moleculepdb_symbol_t.DMS
  | "DOD" -> Moleculepdb_symbol_t.DOD
  | "GOL" -> Moleculepdb_symbol_t.GOL
  | "HEM" -> Moleculepdb_symbol_t.HEM
  | "HOH" -> Moleculepdb_symbol_t.HOH
  | "IPA" -> Moleculepdb_symbol_t.IPA
  | "ISP" -> Moleculepdb_symbol_t.ISP
  | "MG" -> Moleculepdb_symbol_t.MG
  | "NAD" -> Moleculepdb_symbol_t.NAD
  | "NH2" -> Moleculepdb_symbol_t.NH2
  | "NTN" -> Moleculepdb_symbol_t.NTN
  | "OXY" -> Moleculepdb_symbol_t.OXY
  | "PED" -> Moleculepdb_symbol_t.PED
  | "PO4" -> Moleculepdb_symbol_t.PO4
  | "SF4" -> Moleculepdb_symbol_t.SF4
  | "SO4" -> Moleculepdb_symbol_t.SO4
  | "UNK" -> Moleculepdb_symbol_t.UNK
  | "UNX" -> Moleculepdb_symbol_t.UNX
  | "ZN" -> Moleculepdb_symbol_t.ZN
  | s -> print_fatal_error "moleculepdb_symbol_of_string" str 
;;

let make str = moleculepdb_symbol_of_string str;;

let read ib =
  Scanf.bscanf ib "%3s" moleculepdb_symbol_of_string
;;

(** {6 Abbreviating.} *)

let mps_3pg = Moleculepdb_symbol_t.MPS_3PG;;
let mps_5ph = Moleculepdb_symbol_t.MPS_5PH;;
let ace = Moleculepdb_symbol_t.ACE;;
let atp = Moleculepdb_symbol_t.ATP;;
let bru = Moleculepdb_symbol_t.BRU;;
let cd = Moleculepdb_symbol_t.CD;;
let dms = Moleculepdb_symbol_t.DMS;;
let dod = Moleculepdb_symbol_t.DOD;;
let gol = Moleculepdb_symbol_t.GOL;;
let hem = Moleculepdb_symbol_t.HEM;;
let hoh = Moleculepdb_symbol_t.HOH;;
let ipa = Moleculepdb_symbol_t.IPA;;
let isp = Moleculepdb_symbol_t.ISP;;
let mg = Moleculepdb_symbol_t.MG;;
let nad = Moleculepdb_symbol_t.NAD;;
let nh2 = Moleculepdb_symbol_t.NH2;;
let ntn = Moleculepdb_symbol_t.NTN;;
let oxy = Moleculepdb_symbol_t.OXY;;
let ped = Moleculepdb_symbol_t.PED;;
let po4 = Moleculepdb_symbol_t.PO4;;
let sf4 = Moleculepdb_symbol_t.SF4;;
let so4 = Moleculepdb_symbol_t.SO4;;
let unk = Moleculepdb_symbol_t.UNK;;
let unx = Moleculepdb_symbol_t.UNX;;
let zn = Moleculepdb_symbol_t.ZN;;

(** {3 The Symbol functionnalities for a Record of a Pdb Entry} *)

let nam_cod = "Recordpdb_symbol_v";;


(** {6 Making.} *)

let make = function
  | "ANISOU" -> Recordpdb_symbol_t.ANISOU
  | "ATOM" -> Recordpdb_symbol_t.ATOM
  | "AUTHOR" -> Recordpdb_symbol_t.AUTHOR
  | "CAVEAT" -> Recordpdb_symbol_t.CAVEAT
  | "CISPEP" -> Recordpdb_symbol_t.CISPEP
  | "COMPND" -> Recordpdb_symbol_t.COMPND
  | "CONECT" -> Recordpdb_symbol_t.CONECT
  | "CRYST1" -> Recordpdb_symbol_t.CRYST1
  | "DBREF" -> Recordpdb_symbol_t.DBREF
  | "DBREF1" -> Recordpdb_symbol_t.DBREF1
  | "DBREF2" -> Recordpdb_symbol_t.DBREF2
  | "END" -> Recordpdb_symbol_t.END
  | "ENDMDL" -> Recordpdb_symbol_t.ENDMDL
  | "EXPDTA" -> Recordpdb_symbol_t.EXPDTA
  | "FORMUL" -> Recordpdb_symbol_t.FORMUL
  | "HEADER" -> Recordpdb_symbol_t.HEADER
  | "HELIX" -> Recordpdb_symbol_t.HELIX
  | "HET" -> Recordpdb_symbol_t.HET
  | "HETATM" -> Recordpdb_symbol_t.HETATM
  | "HETNAM" -> Recordpdb_symbol_t.HETNAM
  | "HETSYN" -> Recordpdb_symbol_t.HETSYN
  | "JRNL" -> Recordpdb_symbol_t.JRNL
  | "KEYWDS" -> Recordpdb_symbol_t.KEYWDS
  | "LINK" -> Recordpdb_symbol_t.LINK
  | "MASTER" -> Recordpdb_symbol_t.MASTER
  | "MODEL" -> Recordpdb_symbol_t.MODEL
  | "MODRES" -> Recordpdb_symbol_t.MODRES
  | "MTRIX1" -> Recordpdb_symbol_t.MTRIX1
  | "MTRIX2" -> Recordpdb_symbol_t.MTRIX2
  | "MTRIX3" -> Recordpdb_symbol_t.MTRIX3
  | "OBSLTE" -> Recordpdb_symbol_t.OBSLTE
  | "ORIGX1" -> Recordpdb_symbol_t.ORIGX1
  | "ORIGX2" -> Recordpdb_symbol_t.ORIGX2
  | "ORIGX3" -> Recordpdb_symbol_t.ORIGX3
  | "REMARK" -> Recordpdb_symbol_t.REMARK
  | "REVDAT" -> Recordpdb_symbol_t.REVDAT
  | "SCALE1" -> Recordpdb_symbol_t.SCALE1
  | "SCALE2" -> Recordpdb_symbol_t.SCALE2
  | "SCALE3" -> Recordpdb_symbol_t.SCALE3
  | "SEQADV" -> Recordpdb_symbol_t.SEQADV
  | "SEQRES" -> Recordpdb_symbol_t.SEQRES
  | "SHEET" -> Recordpdb_symbol_t.SHEET
  | "SITE" -> Recordpdb_symbol_t.SITE
  | "SOURCE" -> Recordpdb_symbol_t.SOURCE
  | "SPLIT" -> Recordpdb_symbol_t.SPLIT
  | "SPRSDE" -> Recordpdb_symbol_t.SPRSDE
  | "SSBOND" -> Recordpdb_symbol_t.SSBOND
  | "TER" -> Recordpdb_symbol_t.TER
  | "TITLE" -> Recordpdb_symbol_t.TITLE
  | s -> 
      if String.length s > 6 
      then failwith (Format.sprintf "String >%s< greater than 6 characters : Rps_v.make" s) 
      else failwith (Format.sprintf "Unknown string >%s< : Rps_v.make" s) 
;;

let read ib =
  let str_6 = Scanf.bscanf ib "%6s" (fun s -> s) in
  make str_6
;;

(** {6 Converting.} *)

let name = function
  | Recordpdb_symbol_t.MASTER -> Format.sprintf "MASTER"
  | Recordpdb_symbol_t.END -> Format.sprintf "END"
  | Recordpdb_symbol_t.CONECT -> Format.sprintf "CONECT"
  | Recordpdb_symbol_t.SSBOND -> Format.sprintf "SSBOND"
  | Recordpdb_symbol_t.LINK -> Format.sprintf "LINK"
  | Recordpdb_symbol_t.CISPEP -> Format.sprintf "CISPEP"
  | Recordpdb_symbol_t.MODEL -> Format.sprintf "MODEL"
  | Recordpdb_symbol_t.ATOM -> Format.sprintf "ATOM"
  | Recordpdb_symbol_t.ANISOU -> Format.sprintf "ANISOU"
  | Recordpdb_symbol_t.TER -> Format.sprintf "TER"
  | Recordpdb_symbol_t.HETATM -> Format.sprintf "HETATM"
  | Recordpdb_symbol_t.ENDMDL -> Format.sprintf "ENDMDL"
  | Recordpdb_symbol_t.ORIGX1 -> Format.sprintf "ORIGX1"
  | Recordpdb_symbol_t.ORIGX2 -> Format.sprintf "ORIGX2"
  | Recordpdb_symbol_t.ORIGX3 -> Format.sprintf "ORIGX3"
  | Recordpdb_symbol_t.SCALE1 -> Format.sprintf "SCALE1"
  | Recordpdb_symbol_t.SCALE2 -> Format.sprintf "SCALE2"
  | Recordpdb_symbol_t.SCALE3 -> Format.sprintf "SCALE3"
  | Recordpdb_symbol_t.MTRIX1 -> Format.sprintf "MTRIX1"
  | Recordpdb_symbol_t.MTRIX2 -> Format.sprintf "MTRIX2"
  | Recordpdb_symbol_t.MTRIX3 -> Format.sprintf "MTRIX3"
  | Recordpdb_symbol_t.CRYST1 -> Format.sprintf "CRYST1"
  | Recordpdb_symbol_t.HET -> Format.sprintf "HET"
  | Recordpdb_symbol_t.HETNAM -> Format.sprintf "HETNAM"
  | Recordpdb_symbol_t.HETSYN -> Format.sprintf "HETSYN"
  | Recordpdb_symbol_t.FORMUL -> Format.sprintf "FORMUL"
  | Recordpdb_symbol_t.SITE -> Format.sprintf "SITE"
  | Recordpdb_symbol_t.DBREF -> Format.sprintf "DBREF"
  | Recordpdb_symbol_t.DBREF1 -> Format.sprintf "DBREF1"
  | Recordpdb_symbol_t.DBREF2 -> Format.sprintf "DBREF2"
  | Recordpdb_symbol_t.SEQADV -> Format.sprintf "SEQADV"
  | Recordpdb_symbol_t.SEQRES -> Format.sprintf "SEQRES"
  | Recordpdb_symbol_t.MODRES -> Format.sprintf "MODRES"
  | Recordpdb_symbol_t.HELIX -> Format.sprintf "HELIX"
  | Recordpdb_symbol_t.SHEET -> Format.sprintf "SHEET"
  | Recordpdb_symbol_t.HEADER -> Format.sprintf "HEADER"
  | Recordpdb_symbol_t.OBSLTE -> Format.sprintf "OBSLTE"
  | Recordpdb_symbol_t.TITLE -> Format.sprintf "TITLE"
  | Recordpdb_symbol_t.SPLIT -> Format.sprintf "SPLIT"
  | Recordpdb_symbol_t.CAVEAT -> Format.sprintf "CAVEAT"
  | Recordpdb_symbol_t.COMPND -> Format.sprintf "COMPND"
  | Recordpdb_symbol_t.SOURCE -> Format.sprintf "SOURCE"
  | Recordpdb_symbol_t.KEYWDS -> Format.sprintf "KEYWDS"
  | Recordpdb_symbol_t.EXPDTA -> Format.sprintf "EXPDTA"
  | Recordpdb_symbol_t.AUTHOR -> Format.sprintf "AUTHOR"
  | Recordpdb_symbol_t.REVDAT -> Format.sprintf "REVDAT"
  | Recordpdb_symbol_t.SPRSDE -> Format.sprintf "SPRSDE"
  | Recordpdb_symbol_t.JRNL -> Format.sprintf "JRNL"
  | Recordpdb_symbol_t.REMARK -> Format.sprintf "REMARK"
;;

let chain_idpdb_column_list_of_recordpdb_symbol = function 
    | Recordpdb_symbol_t.ANISOU -> [Ordinal_p.make 22]
    | Recordpdb_symbol_t.ATOM -> [Ordinal_p.make 22]
    | Recordpdb_symbol_t.DBREF1 -> [Ordinal_p.make 13]
    | Recordpdb_symbol_t.DBREF2 -> [Ordinal_p.make 13]
    | Recordpdb_symbol_t.DBREF -> [Ordinal_p.make 13]
    | Recordpdb_symbol_t.HELIX -> [Ordinal_p.make 20; Ordinal_p.make 32]
    | Recordpdb_symbol_t.HETATM -> [Ordinal_p.make 22]
    | Recordpdb_symbol_t.HET -> [Ordinal_p.make 13]
    | Recordpdb_symbol_t.MODRES -> [Ordinal_p.make 17]
    | Recordpdb_symbol_t.SEQADV -> [Ordinal_p.make 17]
    | Recordpdb_symbol_t.SEQRES -> [Ordinal_p.make 12]
    | Recordpdb_symbol_t.TER -> [Ordinal_p.make 22]
    | Recordpdb_symbol_t.SHEET -> [Ordinal_p.make 22;Ordinal_p.make 33; Ordinal_p.make 50]
    | Recordpdb_symbol_t.CISPEP -> [Ordinal_p.make 16; Ordinal_p.make 30]
    | Recordpdb_symbol_t.LINK  -> [Ordinal_p.make 22; Ordinal_p.make 52]
    | Recordpdb_symbol_t.SSBOND -> [Ordinal_p.make 16; Ordinal_p.make 30]
    | Recordpdb_symbol_t.SITE -> [Ordinal_p.make 23; Ordinal_p.make 34; Ordinal_p.make 45; Ordinal_p.make 56]
    | _ -> []
;;

let compare sym_rcp_a sym_rcp_b =
  String.compare (name sym_rcp_a) (name sym_rcp_b)
;;

(** {6 Abbreviating.} *)

let master = Recordpdb_symbol_t.MASTER;;
let end_ = Recordpdb_symbol_t.END;;
let conect = Recordpdb_symbol_t.CONECT;;
let ssbond = Recordpdb_symbol_t.SSBOND;;
let link = Recordpdb_symbol_t.LINK;;
let cispep = Recordpdb_symbol_t.CISPEP;;
let model = Recordpdb_symbol_t.MODEL;;
let atom = Recordpdb_symbol_t.ATOM;;
let anisou = Recordpdb_symbol_t.ANISOU;;
let ter = Recordpdb_symbol_t.TER;;
let hetatm = Recordpdb_symbol_t.HETATM;;
let endmdl = Recordpdb_symbol_t.ENDMDL;;
let origx1 = Recordpdb_symbol_t.ORIGX1;;
let origx2 = Recordpdb_symbol_t.ORIGX2;;
let origx3 = Recordpdb_symbol_t.ORIGX3;;
let scale1 = Recordpdb_symbol_t.SCALE1;;
let scale2 = Recordpdb_symbol_t.SCALE2;;
let scale3 = Recordpdb_symbol_t.SCALE3;;
let mtrix1 = Recordpdb_symbol_t.MTRIX1;;
let mtrix2 = Recordpdb_symbol_t.MTRIX2;;
let mtrix3 = Recordpdb_symbol_t.MTRIX3;;
let cryst1 = Recordpdb_symbol_t.CRYST1;;
let het = Recordpdb_symbol_t.HET;;
let hetnam = Recordpdb_symbol_t.HETNAM;;
let hetsyn = Recordpdb_symbol_t.HETSYN;;
let formul = Recordpdb_symbol_t.FORMUL;;
let site = Recordpdb_symbol_t.SITE;;
let dbref = Recordpdb_symbol_t.DBREF;;
let dbref1 = Recordpdb_symbol_t.DBREF1;;
let dbref2 = Recordpdb_symbol_t.DBREF2;;
let seqadv = Recordpdb_symbol_t.SEQADV;;
let seqres = Recordpdb_symbol_t.SEQRES;;
let modres = Recordpdb_symbol_t.MODRES;;
let helix = Recordpdb_symbol_t.HELIX;;
let sheet = Recordpdb_symbol_t.SHEET;;
let header = Recordpdb_symbol_t.HEADER;;
let obslte = Recordpdb_symbol_t.OBSLTE;;
let title = Recordpdb_symbol_t.TITLE;;
let split = Recordpdb_symbol_t.SPLIT;;
let caveat = Recordpdb_symbol_t.CAVEAT;;
let compnd = Recordpdb_symbol_t.COMPND;;
let source = Recordpdb_symbol_t.SOURCE;;
let keywds = Recordpdb_symbol_t.KEYWDS;;
let expdta = Recordpdb_symbol_t.EXPDTA;;
let author = Recordpdb_symbol_t.AUTHOR;;
let revdat = Recordpdb_symbol_t.REVDAT;;
let sprsde = Recordpdb_symbol_t.SPRSDE;;
let jrnl = Recordpdb_symbol_t.JRNL;;
let remark = Recordpdb_symbol_t.REMARK;;

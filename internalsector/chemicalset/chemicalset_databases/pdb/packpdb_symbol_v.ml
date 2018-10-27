(** {3 The Symbol functionnalities for a Pack of a Pdb Entry} *)

let nam_cod = "Packpdb_symbol_v";;


(** {6 Making.} *)

let make str =
  let str_6 = Scanf.sscanf str "%6s" (fun s -> s) in
  Recordpdb_symbol_v.make str_6
;;

let packpdb_symbol_off_recordpdb_string str_rcp =
  make str_rcp
;;

let read ib =
  let str_6 = Scanf.bscanf ib "%6s" (fun s -> s) in
  make str_6
;;

(** {6 Converting.} *)

let recordpdb_symbol_of_packpdb_symbol sym_pkp =
  sym_pkp
;;

let name sym_pkp =
  let sym_rcp = recordpdb_symbol_of_packpdb_symbol sym_pkp in
  Recordpdb_symbol_v.name sym_rcp
;;

let print ppf sym_pkp =
  Format.fprintf ppf "%s" (name sym_pkp)
;;

(** {6 Abbreviating.} *)

let anisou = Recordpdb_symbol_v.anisou;;
let atom = Recordpdb_symbol_v.atom;;
let author = Recordpdb_symbol_v.author;;
let caveat = Recordpdb_symbol_v.caveat;;
let cispep = Recordpdb_symbol_v.cispep;;
let compnd = Recordpdb_symbol_v.compnd;;
let conect = Recordpdb_symbol_v.conect;;
let cryst1 = Recordpdb_symbol_v.cryst1;;
let dbref = Recordpdb_symbol_v.dbref;;
let dbref1 = Recordpdb_symbol_v.dbref1;;
let dbref2 = Recordpdb_symbol_v.dbref2;;
let end_ = Recordpdb_symbol_v.end_;;
let endmdl = Recordpdb_symbol_v.endmdl;;
let expdta = Recordpdb_symbol_v.expdta;;
let formul = Recordpdb_symbol_v.formul;;
let header = Recordpdb_symbol_v.header;;
let helix = Recordpdb_symbol_v.helix;;
let het = Recordpdb_symbol_v.het;;
let hetatm = Recordpdb_symbol_v.hetatm;;
let hetnam = Recordpdb_symbol_v.hetnam;;
let hetsyn = Recordpdb_symbol_v.hetsyn;;
let jrnl = Recordpdb_symbol_v.jrnl;;
let keywds = Recordpdb_symbol_v.keywds;;
let link = Recordpdb_symbol_v.link;;
let master = Recordpdb_symbol_v.master;;
let model = Recordpdb_symbol_v.model;;
let modres = Recordpdb_symbol_v.modres;;
let mtrix1 = Recordpdb_symbol_v.mtrix1;;
let mtrix2 = Recordpdb_symbol_v.mtrix2;;
let mtrix3 = Recordpdb_symbol_v.mtrix3;;
let obslte = Recordpdb_symbol_v.obslte;;
let origx1 = Recordpdb_symbol_v.origx1;;
let origx2 = Recordpdb_symbol_v.origx2;;
let origx3 = Recordpdb_symbol_v.origx3;;
let remark = Recordpdb_symbol_v.remark;;
let revdat = Recordpdb_symbol_v.revdat;;
let scale1 = Recordpdb_symbol_v.scale1;;
let scale2 = Recordpdb_symbol_v.scale2;;
let scale3 = Recordpdb_symbol_v.scale3;;
let seqadv = Recordpdb_symbol_v.seqadv;;
let seqres = Recordpdb_symbol_v.seqres;;
let sheet = Recordpdb_symbol_v.sheet;;
let site = Recordpdb_symbol_v.site;;
let source = Recordpdb_symbol_v.source;;
let split = Recordpdb_symbol_v.split;;
let sprsde = Recordpdb_symbol_v.sprsde;;
let ssbond = Recordpdb_symbol_v.ssbond;;
let ter = Recordpdb_symbol_v.ter;;
let title = Recordpdb_symbol_v.title;;

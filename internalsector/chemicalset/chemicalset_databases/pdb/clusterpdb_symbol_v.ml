(** {3 The Symbol functionnalities for a Cluster of a Pdb Entry} *)

let nam_cod = "Clusterpdb_symbol_v";;

(** {6 Making.} *)

let make str = 
  Recordpdb_symbol_v.make str
;;

let read ib =
  let str_6 = Scanf.bscanf ib "%6s" (fun s -> s) in
  make str_6
;;

(** {6 Converting.} *)

let recordpdb_symbol_of_clusterpdb_symbol sym_pkp =
  sym_pkp
;;

let name sym_pkp =
  let sym_rcp = recordpdb_symbol_of_clusterpdb_symbol sym_pkp in
  Recordpdb_symbol_v.name sym_rcp
;;

let print ppf sym_pkp =
  Format.fprintf ppf "%s" (name sym_pkp)
;;

(** {6 Querying.} *)

let compare sym_pkp_a sym_pkp_b =
  Recordpdb_symbol_v.compare sym_pkp_a sym_pkp_b 
;;

(** {6 Abbreviating.} *)

let master = Recordpdb_symbol_v.master;;
let end_ = Recordpdb_symbol_v.end_;;
let conect = Recordpdb_symbol_v.conect;;
let ssbond = Recordpdb_symbol_v.ssbond;;
let link = Recordpdb_symbol_v.link;;
let cispep = Recordpdb_symbol_v.cispep;;
let model = Recordpdb_symbol_v.model;;
let atom = Recordpdb_symbol_v.atom;;
let anisou = Recordpdb_symbol_v.anisou;;
let ter = Recordpdb_symbol_v.ter;;
let hetatm = Recordpdb_symbol_v.hetatm;;
let endmdl = Recordpdb_symbol_v.endmdl;;
let origx1 = Recordpdb_symbol_v.origx1;;
let origx2 = Recordpdb_symbol_v.origx2;;
let origx3 = Recordpdb_symbol_v.origx3;;
let scale1 = Recordpdb_symbol_v.scale1;;
let scale2 = Recordpdb_symbol_v.scale2;;
let scale3 = Recordpdb_symbol_v.scale3;;
let mtrix1 = Recordpdb_symbol_v.mtrix1;;
let mtrix2 = Recordpdb_symbol_v.mtrix2;;
let mtrix3 = Recordpdb_symbol_v.mtrix3;;
let cryst1 = Recordpdb_symbol_v.cryst1;;
let het = Recordpdb_symbol_v.het;;
let hetnam = Recordpdb_symbol_v.hetnam;;
let hetsyn = Recordpdb_symbol_v.hetsyn;;
let formul = Recordpdb_symbol_v.formul;;
let site = Recordpdb_symbol_v.site;;
let dbref = Recordpdb_symbol_v.dbref;;
let dbref1 = Recordpdb_symbol_v.dbref1;;
let dbref2 = Recordpdb_symbol_v.dbref2;;
let seqadv = Recordpdb_symbol_v.seqadv;;
let seqres = Recordpdb_symbol_v.seqres;;
let modres = Recordpdb_symbol_v.modres;;
let helix = Recordpdb_symbol_v.helix;;
let sheet = Recordpdb_symbol_v.sheet;;
let header = Recordpdb_symbol_v.header;;
let obslte = Recordpdb_symbol_v.obslte;;
let title = Recordpdb_symbol_v.title;;
let split = Recordpdb_symbol_v.split;;
let caveat = Recordpdb_symbol_v.caveat;;
let compnd = Recordpdb_symbol_v.compnd;;
let source = Recordpdb_symbol_v.source;;
let keywds = Recordpdb_symbol_v.keywds;;
let expdta = Recordpdb_symbol_v.expdta;;
let author = Recordpdb_symbol_v.author;;
let revdat = Recordpdb_symbol_v.revdat;;
let sprsde = Recordpdb_symbol_v.sprsde;;
let jrnl = Recordpdb_symbol_v.jrnl;;
let remark = Recordpdb_symbol_v.remark;;

(** {3 The functionalities fro a Symbol Formula for a Pack of the Pdb} *)

let nam_cod = "Clusterpdb_symbol_formula_v";;


let make s =
  Utils_v.not_yet_implemented nam_cod "Clusterpdb_symbol_formula_v.make"
;;

(**
let make = function
  | Clusterpdb_symbol_t.CRYST1 as smb -> 
  | Clusterpdb_symbol_t.END as smb -> 
  | Clusterpdb_symbol_t.HEADER as smb -> 
  | Clusterpdb_symbol_t.MASTER as smb -> 
  | Clusterpdb_symbol_t.NUMMDL as smb -> 

  | Clusterpdb_symbol_t.ORIGX1 as smb -> 
  | Clusterpdb_symbol_t.ORIGX2 as smb -> 
  | Clusterpdb_symbol_t.ORIGX3 as smb -> 

  | Clusterpdb_symbol_t.SCALE1 as smb -> 
  | Clusterpdb_symbol_t.SCALE2 as smb -> 
  | Clusterpdb_symbol_t.SCALE3 as smb -> Only_recordpdb_symbol smb

  | Clusterpdb_symbol_t.ANISOU -> 
  | Clusterpdb_symbol_t.ATOM -> 
  | Clusterpdb_symbol_t.AUTHOR -> 
  | Clusterpdb_symbol_t.CAVEAT -> 
  | Clusterpdb_symbol_t.CISPEP -> 
  | Clusterpdb_symbol_t.COMPND -> 
  | Clusterpdb_symbol_t.CONECT -> 

  | Clusterpdb_symbol_t.DBREF -> 
  | Clusterpdb_symbol_t.DBREF1 -> 
  | Clusterpdb_symbol_t.DBREF2 -> 

  | Clusterpdb_symbol_t.ENDMDL -> 
  | Clusterpdb_symbol_t.EXPDTA -> 
  | Clusterpdb_symbol_t.FORMUL -> 

  | Clusterpdb_symbol_t.HELIX -> 
  | Clusterpdb_symbol_t.HET -> 
  | Clusterpdb_symbol_t.HETATM -> 
  | Clusterpdb_symbol_t.HETNAM -> 
  | Clusterpdb_symbol_t.HETSYN -> 
  | Clusterpdb_symbol_t.JRNL -> 
  | Clusterpdb_symbol_t.KEYWDS -> 
  | Clusterpdb_symbol_t.LINK -> 

  | Clusterpdb_symbol_t.MODEL -> 
  | Clusterpdb_symbol_t.MODRES -> 
  | Clusterpdb_symbol_t.MTRIX1 -> 
  | Clusterpdb_symbol_t.MTRIX2 -> 
  | Clusterpdb_symbol_t.MTRIX3 -> 
  | Clusterpdb_symbol_t.OBSLTE -> 
  | Clusterpdb_symbol_t.REMARK -> 
  | Clusterpdb_symbol_t.REVDAT -> 
  | Clusterpdb_symbol_t.SEQADV -> 
  | Clusterpdb_symbol_t.SEQRES -> 
  | Clusterpdb_symbol_t.SHEET -> 
  | Clusterpdb_symbol_t.SITE -> 
  | Clusterpdb_symbol_t.SOURCE -> 
  | Clusterpdb_symbol_t.SPLIT -> 
  | Clusterpdb_symbol_t.SPRSDE -> 
  | Clusterpdb_symbol_t.SSBOND -> 
  | Clusterpdb_symbol_t.TER -> 
  | Clusterpdb_symbol_t.TITLE -> List_recordpdb_symbol
;;
**)

(** {6 Iterating.} *)

let map f_s = function
  | Clusterpdb_symbol_formula_t.Only_recordpdb_symbol sym_rcp -> 
      [f_s sym_rcp]  
  | Clusterpdb_symbol_formula_t.List_recordpdb_symbol sym_rcp_l ->
      List.map f_s sym_rcp_l
;;

(** {6 Extracting.} *)

let recordpdb_symbol_list_off_clusterpdb_symbol_formula = function
  | Clusterpdb_symbol_formula_t.Only_recordpdb_symbol smb -> 
      [smb]
  | Clusterpdb_symbol_formula_t.List_recordpdb_symbol sym_l ->
      sym_l
;;

let recordpdb_symbol_list_off_clusterpdb_symbol sym_pkp =
  make sym_pkp
;;

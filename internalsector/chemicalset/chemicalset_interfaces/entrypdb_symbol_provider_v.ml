(** {3 The Provider for an Entry of Pdb Interface with Pdb.} *)

(* *** Improve what is this ??? *)

let nam_cod = "entrypdb_symbol_provider_v.ml";;

let entrypdb_symbol_of_protein_symbol = function
(*   | Protein_symbol_t.Adh -> Entrypdb_symbol_t.ProteinID "7adh"
   | Protein_symbol_t.Acg -> Entrypdb_symbol_t.ProteinID "acg"
   | Protein_symbol_t.Agagag -> Entrypdb_symbol_t.ProteinID "agagag"
   | Protein_symbol_t.Agc-> Entrypdb_symbol_t.ProteinID "agc"
   | Protein_symbol_t.Agg -> Entrypdb_symbol_t.ProteinID "agg"
   | Protein_symbol_t.Agp-> Entrypdb_symbol_t.ProteinID "agp"
   | Protein_symbol_t.Gac-> Entrypdb_symbol_t.ProteinID "gac"
   | Protein_symbol_t.Gap-> Entrypdb_symbol_t.ProteinID "gap"
   | Protein_symbol_t.Ggg-> Entrypdb_symbol_t.ProteinID "ggg"
   | Protein_symbol_t.Ggacgg -> Entrypdb_symbol_t.ProteinID "ggacgg"
   | Protein_symbol_t.Ggaggg -> Entrypdb_symbol_t.ProteinID "ggaggg"
   | Protein_symbol_t.Gagaga -> Entrypdb_symbol_t.ProteinID "gagaga"
   | Protein_symbol_t.Mhb -> Entrypdb_symbol_t.ProteinID "2mhb"
   | Protein_symbol_t.Pac -> Entrypdb_symbol_t.ProteinID "pac"
   | Protein_symbol_t.Pag -> Entrypdb_symbol_t.ProteinID "pagb"
   | Protein_symbol_t.Pgk -> Entrypdb_symbol_t.ProteinID "pgk"
   | Protein_symbol_t.Pti -> Entrypdb_symbol_t.ProteinID "4pti"
   | Protein_symbol_t.Sac -> Entrypdb_symbol_t.ProteinID "sac"
   | Protein_symbol_t.Tab -> Entrypdb_symbol_t.ProteinID "0tab"
   | Protein_symbol_t.Try -> Entrypdb_symbol_t.ProteinID "1try"
   | Protein_symbol_t.Polyglycine n -> Entrypdb_symbol_t.ProteinID (Format.sprintf "G_%i" n)
*)
   | Protein_symbol_t.Protein_frompdbid str -> Entrypdb_symbol_t.ProteinID str
;;

let entrypdb_symbol_off_polypeptide_symbol sym_plp =
  let id = Polypeptide_symbol_v.string_off sym_plp in
  let wor_l = String_v.word_list_off_string id in 
  let str = List.hd wor_l in
  Entrypdb_symbol_t.ProteinID str
;;
(* ??? 
let entrypdb_symbol_of_cluster_symbol = function
  | Fromid str -> 
      Entrypdb_symbol_t.ClusterID str 
;;
*)

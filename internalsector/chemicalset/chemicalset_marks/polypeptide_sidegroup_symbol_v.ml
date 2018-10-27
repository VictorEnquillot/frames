(** {3 The functionalities for a Symbol for a Polypeptide_sidegroup.} *)

let nam_cod = "polypeptide_sidegroup_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Polypeptide_sidegroup_symbol_t.Sidegroup_alanine -> "sidegroup_alanine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_arginine -> "sidegroup_arginine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_asparagine -> "sidegroup_asparagine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_aspartic -> "sidegroup_aspartic"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_cysteine -> "sidegroup_cysteine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_glutamine -> "sidegroup_glutamine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_glutamic -> "sidegroup_glutamic"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_histidine -> "sidegroup_histidine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_isoleucine -> "sidegroup_isoleucine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_leucine -> "sidegroup_leucine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_lysine -> "sidegroup_lysine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_methionine -> "sidegroup_methionine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_phenylalanine -> "sidegroup_phenylalanine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_serine -> "sidegroup_serine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_threonine -> "sidegroup_threonine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_tryptophan -> "sidegroup_tryptophan"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_tyrosine -> "sidegroup_tyrosine"
  | Polypeptide_sidegroup_symbol_t.Sidegroup_valine -> "sidegroup_valine"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let sidegroup_alanine = Polypeptide_sidegroup_symbol_t.Sidegroup_alanine;;

let sidegroup_arginine = Polypeptide_sidegroup_symbol_t.Sidegroup_arginine;;

let sidegroup_asparagine = Polypeptide_sidegroup_symbol_t.Sidegroup_asparagine;;

let sidegroup_aspartic = Polypeptide_sidegroup_symbol_t.Sidegroup_aspartic;;

let sidegroup_cysteine = Polypeptide_sidegroup_symbol_t.Sidegroup_cysteine;;

let sidegroup_glutamine = Polypeptide_sidegroup_symbol_t.Sidegroup_glutamine;;

let sidegroup_glutamic = Polypeptide_sidegroup_symbol_t.Sidegroup_glutamic;;

let sidegroup_histidine = Polypeptide_sidegroup_symbol_t.Sidegroup_histidine;;

let sidegroup_isoleucine = Polypeptide_sidegroup_symbol_t.Sidegroup_isoleucine;;

let sidegroup_leucine = Polypeptide_sidegroup_symbol_t.Sidegroup_leucine;;

let sidegroup_lysine = Polypeptide_sidegroup_symbol_t.Sidegroup_lysine;;

let sidegroup_methionine = Polypeptide_sidegroup_symbol_t.Sidegroup_methionine;;

let sidegroup_phenylalanine = Polypeptide_sidegroup_symbol_t.Sidegroup_phenylalanine;;

let sidegroup_serine = Polypeptide_sidegroup_symbol_t.Sidegroup_serine;;

let sidegroup_threonine = Polypeptide_sidegroup_symbol_t.Sidegroup_threonine;;

let sidegroup_tryptophan = Polypeptide_sidegroup_symbol_t.Sidegroup_tryptophan;;

let sidegroup_tyrosine = Polypeptide_sidegroup_symbol_t.Sidegroup_tyrosine;;

let sidegroup_valine = Polypeptide_sidegroup_symbol_t.Sidegroup_valine;;


(** {6 Making} *)


let make s = function
  | "sidegroup_alanine" -> sidegroup_alanine
  | "sidegroup_arginine" -> sidegroup_arginine
  | "sidegroup_asparagine" -> sidegroup_asparagine
  | "sidegroup_aspartic" -> sidegroup_aspartic
  | "sidegroup_cysteine" -> sidegroup_cysteine
  | "sidegroup_glutamine" -> sidegroup_glutamine
  | "sidegroup_glutamic" -> sidegroup_glutamic
  | "sidegroup_histidine" -> sidegroup_histidine
  | "sidegroup_isoleucine" -> sidegroup_isoleucine
  | "sidegroup_leucine" -> sidegroup_leucine
  | "sidegroup_lysine" -> sidegroup_lysine
  | "sidegroup_methionine" -> sidegroup_methionine
  | "sidegroup_phenylalanine" -> sidegroup_phenylalanine
  | "sidegroup_serine" -> sidegroup_serine
  | "sidegroup_threonine" -> sidegroup_threonine
  | "sidegroup_tryptophan" -> sidegroup_tryptophan
  | "sidegroup_tyrosine" -> sidegroup_tyrosine
  | "sidegroup_valine" -> sidegroup_valine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator polypeptide_sidegroup implementation symbol at 15:3 13 Mar 2012. *)




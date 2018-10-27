(** {3 The functionalities for a Symbol for a Residue_buried.} *)

let nam_cod = "residue_buried_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Residue_buried_symbol_t.Residue_buried_segmented_symbol sym_rbs ->
      Residue_buried_segmented_symbol_v.name sym_rbs
  | Residue_buried_symbol_t.Residue_buried_fragmented_symbol sym_rbf ->
      Residue_buried_fragmented_symbol_v.name sym_rbf
;;


(** {6 Upgrading} *)


let residue_buried_symbol_of_residue_buried_segmented_symbol sym_rbs = 
  Residue_buried_symbol_t.Residue_buried_segmented_symbol sym_rbs
;;

let residue_buried_symbol_of_residue_buried_fragmented_symbol sym_rbf = 
  Residue_buried_symbol_t.Residue_buried_fragmented_symbol sym_rbf
;;

let residue_buried_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_rbf = Residue_buried_fragmented_symbol_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    residue_buried_symbol_of_residue_buried_fragmented_symbol sym_rbf
;;


(** {6 Abbreviating} *)


let glycine = residue_buried_symbol_of_residue_buried_segmented_symbol Residue_buried_segmented_symbol_v.glycine;;

let proline = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.proline;;

let alanine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.alanine;;

let arginine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.arginine;;

let asparagine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.asparagine;;

let aspartic = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.aspartic;;

let cysteine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.cysteine;;

let glutamine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.glutamine;;

let glutamic = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.glutamic;;

let histidine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.histidine;;

let isoleucine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.isoleucine;;

let leucine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.leucine;;

let lysine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.lysine;;

let methionine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.methionine;;

let phenylalanine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.phenylalanine;;

let serine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.serine;;

let threonine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.threonine;;

let tryptophan = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.tryptophan;;

let tyrosine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.tyrosine;;

let valine = residue_buried_symbol_of_residue_buried_fragmented_symbol Residue_buried_fragmented_symbol_v.valine;;


(** {6 Making} *)


let make = function
  | "glycine" -> glycine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "proline" -> proline
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "alanine" -> alanine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "arginine" -> arginine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "asparagine" -> asparagine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "aspartic" -> aspartic
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "cysteine" -> cysteine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "glutamine" -> glutamine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "glutamic" -> glutamic
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "histidine" -> histidine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "isoleucine" -> isoleucine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "leucine" -> leucine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "lysine" -> lysine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "methionine" -> methionine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "phenylalanine" -> phenylalanine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "serine" -> serine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "threonine" -> threonine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "tryptophan" -> tryptophan
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "tyrosine" -> tyrosine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "valine" -> valine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_segmented_symbol sym_rbs -> sym_rbs
  | sym_reb -> Error_messages_v.print_fatal_error
      nam_cod "residue_buried_segmented_symbol_off_residue_buried_symbol"
      "Residue_buried_segmented_symbol"
      (name sym_reb) "check"
;;

let residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_fragmented_symbol sym_rbf -> sym_rbf
  | sym_reb -> Error_messages_v.print_fatal_error
      nam_cod "residue_buried_fragmented_symbol_off_residue_buried_symbol"
      "Residue_buried_fragmented_symbol"
      (name sym_reb) "check"
;;

let molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_symbol sym_reb = 
  let sym_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol sym_reb in 
    Residue_buried_fragmented_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_fragmented_symbol sym_rbf
;;


(** {6 Querying} *)


let is_residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_segmented_symbol _ -> true
  | _ -> false
;;

let is_residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_symbol sym_reb =
  if not (is_residue_buried_fragmented_symbol_off_residue_buried_symbol sym_reb)
  then false
  else
    begin
     let sym_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol sym_reb in 
     Residue_buried_fragmented_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_fragmented_symbol sym_rbf
    end
;;


(** created by ./generator residue_buried implementation symbol at 17:29 1 Mar 2012. *)




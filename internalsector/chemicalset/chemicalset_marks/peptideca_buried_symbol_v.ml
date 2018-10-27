(** {3 The functionalities for a Symbol for a Peptideca_buried.} *)

let nam_cod = "peptideca_buried_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Peptideca_buried_symbol_t.Peptideca_buried_segmented_symbol sym_pbs ->
      Peptideca_buried_segmented_symbol_v.name sym_pbs
  | Peptideca_buried_symbol_t.Peptideca_buried_fragmented_symbol sym_pbf ->
      Peptideca_buried_fragmented_symbol_v.name sym_pbf
;;


(** {6 Upgrading} *)


let peptideca_buried_symbol_of_peptideca_buried_segmented_symbol sym_pbs = 
  Peptideca_buried_symbol_t.Peptideca_buried_segmented_symbol sym_pbs
;;

let peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol sym_pbf = 
  Peptideca_buried_symbol_t.Peptideca_buried_fragmented_symbol sym_pbf
;;

let peptideca_buried_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_pbf = Peptideca_buried_fragmented_symbol_v.peptideca_buried_fragmented_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol sym_pbf
;;


(** {6 Abbreviating} *)


let glycine = peptideca_buried_symbol_of_peptideca_buried_segmented_symbol Peptideca_buried_segmented_symbol_v.glycine;;

let alanine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.alanine;;

let arginine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.arginine;;

let asparagine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.asparagine;;

let aspartic = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.aspartic;;

let cysteine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.cysteine;;

let glutamine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.glutamine;;

let glutamic = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.glutamic;;

let histidine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.histidine;;

let isoleucine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.isoleucine;;

let leucine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.leucine;;

let lysine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.lysine;;

let methionine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.methionine;;

let phenylalanine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.phenylalanine;;

let serine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.serine;;

let threonine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.threonine;;

let tryptophan = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.tryptophan;;

let tyrosine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.tyrosine;;

let valine = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.valine;;

let proline = peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol Peptideca_buried_fragmented_symbol_v.proline;;


(** {6 Making} *)


let make = function
  | "glycine" -> glycine
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
  | "proline" -> proline
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let peptideca_buried_segmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_segmented_symbol sym_pbs -> sym_pbs
  | sym_peb -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_buried_segmented_symbol_off_peptideca_buried_symbol"
      "Peptideca_buried_segmented_symbol"
      (name sym_peb) "check"
;;

let peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_fragmented_symbol sym_pbf -> sym_pbf
  | sym_peb -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol"
      "Peptideca_buried_fragmented_symbol"
      (name sym_peb) "check"
;;

let molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_symbol sym_peb = 
  let sym_pbf = peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol sym_peb in 
    Peptideca_buried_fragmented_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_fragmented_symbol sym_pbf
;;


(** {6 Querying} *)


let is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_segmented_symbol _ -> true
  | _ -> false
;;

let is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_symbol sym_peb =
  if not (is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol sym_peb)
  then false
  else
    begin
     let sym_pbf = peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol sym_peb in 
     Peptideca_buried_fragmented_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_fragmented_symbol sym_pbf
    end
;;


(** created by ./generator peptideca_buried implementation symbol at 17:28 1 Mar 2012. *)




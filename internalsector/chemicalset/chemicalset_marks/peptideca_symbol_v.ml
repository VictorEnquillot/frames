(** {3 The functionalities for a Symbol for a Peptideca.} *)

let nam_cod = "peptideca_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Peptideca_symbol_t.Peptideca_buried_symbol sym_peb ->
      Peptideca_buried_symbol_v.name sym_peb
  | Peptideca_symbol_t.Peptideca_nterminal_symbol sym_pen ->
      Peptideca_nterminal_symbol_v.name sym_pen
;;


(** {6 Upgrading} *)


let peptideca_symbol_of_peptideca_buried_symbol sym_peb = 
  Peptideca_symbol_t.Peptideca_buried_symbol sym_peb
;;

let peptideca_symbol_of_peptideca_buried_segmented_symbol sym_pbs = 
  let sym_peb = Peptideca_buried_symbol_v.peptideca_buried_symbol_of_peptideca_buried_segmented_symbol sym_pbs in
    peptideca_symbol_of_peptideca_buried_symbol sym_peb
;;

let peptideca_symbol_of_peptideca_buried_fragmented_symbol sym_pbf = 
  let sym_peb = Peptideca_buried_symbol_v.peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol sym_pbf in
    peptideca_symbol_of_peptideca_buried_symbol sym_peb
;;

let peptideca_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_peb = Peptideca_buried_symbol_v.peptideca_buried_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    peptideca_symbol_of_peptideca_buried_symbol sym_peb
;;

let peptideca_symbol_of_peptideca_nterminal_symbol sym_pen = 
  Peptideca_symbol_t.Peptideca_nterminal_symbol sym_pen
;;

let peptideca_symbol_of_peptideca_nterminal_fragmented_symbol sym_pnf = 
  let sym_pen = Peptideca_nterminal_symbol_v.peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol sym_pnf in
    peptideca_symbol_of_peptideca_nterminal_symbol sym_pen
;;


(** {6 Abbreviating} *)


let glycine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.glycine;;

let alanine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.alanine;;

let arginine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.arginine;;

let asparagine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.asparagine;;

let aspartic = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.aspartic;;

let cysteine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.cysteine;;

let glutamine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.glutamine;;

let glutamic = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.glutamic;;

let histidine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.histidine;;

let isoleucine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.isoleucine;;

let leucine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.leucine;;

let lysine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.lysine;;

let methionine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.methionine;;

let phenylalanine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.phenylalanine;;

let serine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.serine;;

let threonine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.threonine;;

let tryptophan = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.tryptophan;;

let tyrosine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.tyrosine;;

let valine = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.valine;;

let proline = peptideca_symbol_of_peptideca_buried_symbol Peptideca_buried_symbol_v.proline;;

let peptideca_nterminal_glycine = peptideca_symbol_of_peptideca_nterminal_symbol Peptideca_nterminal_symbol_v.peptideca_nterminal_glycine;;

let peptideca_nterminal_proline = peptideca_symbol_of_peptideca_nterminal_symbol Peptideca_nterminal_symbol_v.peptideca_nterminal_proline;;

let peptideca_nterminal_regular = peptideca_symbol_of_peptideca_nterminal_symbol Peptideca_nterminal_symbol_v.peptideca_nterminal_regular;;


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
  | "peptideca_nterminal_glycine" -> peptideca_nterminal_glycine
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "peptideca_nterminal_proline" -> peptideca_nterminal_proline
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
  | "peptideca_nterminal_regular" -> peptideca_nterminal_regular
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let peptideca_buried_symbol_off_peptideca_symbol = function
  | Peptideca_symbol_t.Peptideca_buried_symbol sym_peb -> sym_peb
  | sym_pea -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_buried_symbol_off_peptideca_symbol"
      "Peptideca_buried_symbol"
      (name sym_pea) "check"
;;

let peptideca_buried_segmented_symbol_off_peptideca_symbol sym_pea = 
  let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
    Peptideca_buried_symbol_v.peptideca_buried_segmented_symbol_off_peptideca_buried_symbol sym_peb
;;

let peptideca_buried_fragmented_symbol_off_peptideca_symbol sym_pea = 
  let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
    Peptideca_buried_symbol_v.peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol sym_peb
;;

let molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea = 
  let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
    Peptideca_buried_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_symbol sym_peb
;;

let peptideca_nterminal_symbol_off_peptideca_symbol = function
  | Peptideca_symbol_t.Peptideca_nterminal_symbol sym_pen -> sym_pen
  | sym_pea -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_nterminal_symbol_off_peptideca_symbol"
      "Peptideca_nterminal_symbol"
      (name sym_pea) "check"
;;

let peptideca_nterminal_fragmented_symbol_off_peptideca_symbol sym_pea = 
  let sym_pen = peptideca_nterminal_symbol_off_peptideca_symbol sym_pea in 
    Peptideca_nterminal_symbol_v.peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol sym_pen
;;


(** {6 Querying} *)


let is_peptideca_buried_symbol_off_peptideca_symbol = function
  | Peptideca_symbol_t.Peptideca_buried_symbol _ -> true
  | _ -> false
;;

let is_peptideca_buried_segmented_symbol_off_peptideca_symbol sym_pea =
  if not (is_peptideca_buried_symbol_off_peptideca_symbol sym_pea)
  then false
  else
    begin
     let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
     Peptideca_buried_symbol_v.is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol sym_peb
    end
;;

let is_peptideca_buried_fragmented_symbol_off_peptideca_symbol sym_pea =
  if not (is_peptideca_buried_symbol_off_peptideca_symbol sym_pea)
  then false
  else
    begin
     let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
     Peptideca_buried_symbol_v.is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol sym_peb
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea =
  if not (is_peptideca_buried_symbol_off_peptideca_symbol sym_pea)
  then false
  else
    begin
     let sym_peb = peptideca_buried_symbol_off_peptideca_symbol sym_pea in 
     Peptideca_buried_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_buried_symbol sym_peb
    end
;;

let is_peptideca_nterminal_symbol_off_peptideca_symbol = function
  | Peptideca_symbol_t.Peptideca_nterminal_symbol _ -> true
  | _ -> false
;;

let is_peptideca_nterminal_fragmented_symbol_off_peptideca_symbol sym_pea =
  if not (is_peptideca_nterminal_symbol_off_peptideca_symbol sym_pea)
  then false
  else
    begin
     let sym_pen = peptideca_nterminal_symbol_off_peptideca_symbol sym_pea in 
     Peptideca_nterminal_symbol_v.is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol sym_pen
    end
;;


(** created by ./generator peptideca implementation symbol at 17:28 1 Mar 2012. *)




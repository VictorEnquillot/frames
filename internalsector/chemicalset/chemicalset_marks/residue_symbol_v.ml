(** {3 The functionalities for a Symbol for a Residue.} *)

let nam_cod = "residue_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Residue_symbol_t.Residue_nterminal_symbol sym_ren ->
      Residue_nterminal_symbol_v.name sym_ren
  | Residue_symbol_t.Residue_buried_symbol sym_reb ->
      Residue_buried_symbol_v.name sym_reb
;;


(** {6 Upgrading} *)


let residue_symbol_of_residue_nterminal_symbol sym_ren = 
  Residue_symbol_t.Residue_nterminal_symbol sym_ren
;;

let residue_symbol_of_residue_nterminal_segmented_symbol sym_rns = 
  let sym_ren = Residue_nterminal_symbol_v.residue_nterminal_symbol_of_residue_nterminal_segmented_symbol sym_rns in
    residue_symbol_of_residue_nterminal_symbol sym_ren
;;

let residue_symbol_of_residue_nterminal_fragmented_symbol sym_rnf = 
  let sym_ren = Residue_nterminal_symbol_v.residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol sym_rnf in
    residue_symbol_of_residue_nterminal_symbol sym_ren
;;

let residue_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_ren = Residue_nterminal_symbol_v.residue_nterminal_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    residue_symbol_of_residue_nterminal_symbol sym_ren
;;

let residue_symbol_of_residue_buried_symbol sym_reb = 
  Residue_symbol_t.Residue_buried_symbol sym_reb
;;

let residue_symbol_of_residue_buried_segmented_symbol sym_rbs = 
  let sym_reb = Residue_buried_symbol_v.residue_buried_symbol_of_residue_buried_segmented_symbol sym_rbs in
    residue_symbol_of_residue_buried_symbol sym_reb
;;

let residue_symbol_of_residue_buried_fragmented_symbol sym_rbf = 
  let sym_reb = Residue_buried_symbol_v.residue_buried_symbol_of_residue_buried_fragmented_symbol sym_rbf in
    residue_symbol_of_residue_buried_symbol sym_reb
;;

let residue_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_reb = Residue_buried_symbol_v.residue_buried_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    residue_symbol_of_residue_buried_symbol sym_reb
;;


(** {6 Abbreviating} *)


let glycine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.glycine;;

let proline = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.proline;;

let alanine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.alanine;;

let arginine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.arginine;;

let asparagine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.asparagine;;

let aspartic = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.aspartic;;

let cysteine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.cysteine;;

let glutamine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.glutamine;;

let glutamic = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.glutamic;;

let histidine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.histidine;;

let isoleucine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.isoleucine;;

let leucine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.leucine;;

let lysine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.lysine;;

let methionine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.methionine;;

let phenylalanine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.phenylalanine;;

let serine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.serine;;

let threonine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.threonine;;

let tryptophan = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.tryptophan;;

let tyrosine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.tyrosine;;

let valine = residue_symbol_of_residue_nterminal_symbol Residue_nterminal_symbol_v.valine;;

let glycine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.glycine;;

let proline = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.proline;;

let alanine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.alanine;;

let arginine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.arginine;;

let asparagine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.asparagine;;

let aspartic = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.aspartic;;

let cysteine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.cysteine;;

let glutamine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.glutamine;;

let glutamic = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.glutamic;;

let histidine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.histidine;;

let isoleucine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.isoleucine;;

let leucine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.leucine;;

let lysine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.lysine;;

let methionine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.methionine;;

let phenylalanine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.phenylalanine;;

let serine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.serine;;

let threonine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.threonine;;

let tryptophan = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.tryptophan;;

let tyrosine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.tyrosine;;

let valine = residue_symbol_of_residue_buried_symbol Residue_buried_symbol_v.valine;;


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


let residue_nterminal_symbol_off_residue_symbol = function
  | Residue_symbol_t.Residue_nterminal_symbol sym_ren -> sym_ren
  | sym_ree -> Error_messages_v.print_fatal_error
      nam_cod "residue_nterminal_symbol_off_residue_symbol"
      "Residue_nterminal_symbol"
      (name sym_ree) "check"
;;

let residue_nterminal_segmented_symbol_off_residue_symbol sym_ree = 
  let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
    Residue_nterminal_symbol_v.residue_nterminal_segmented_symbol_off_residue_nterminal_symbol sym_ren
;;

let residue_nterminal_fragmented_symbol_off_residue_symbol sym_ree = 
  let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
    Residue_nterminal_symbol_v.residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol sym_ren
;;

let molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree = 
  let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
    Residue_nterminal_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_residue_nterminal_symbol sym_ren
;;

let residue_buried_symbol_off_residue_symbol = function
  | Residue_symbol_t.Residue_buried_symbol sym_reb -> sym_reb
  | sym_ree -> Error_messages_v.print_fatal_error
      nam_cod "residue_buried_symbol_off_residue_symbol"
      "Residue_buried_symbol"
      (name sym_ree) "check"
;;

let residue_buried_segmented_symbol_off_residue_symbol sym_ree = 
  let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
    Residue_buried_symbol_v.residue_buried_segmented_symbol_off_residue_buried_symbol sym_reb
;;

let residue_buried_fragmented_symbol_off_residue_symbol sym_ree = 
  let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
    Residue_buried_symbol_v.residue_buried_fragmented_symbol_off_residue_buried_symbol sym_reb
;;

let molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree = 
  let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
    Residue_buried_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_symbol sym_reb
;;


(** {6 Querying} *)


let is_residue_nterminal_symbol_off_residue_symbol = function
  | Residue_symbol_t.Residue_nterminal_symbol _ -> true
  | _ -> false
;;

let is_residue_nterminal_segmented_symbol_off_residue_symbol sym_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
     Residue_nterminal_symbol_v.is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol sym_ren
    end
;;

let is_residue_nterminal_fragmented_symbol_off_residue_symbol sym_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
     Residue_nterminal_symbol_v.is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol sym_ren
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_ren = residue_nterminal_symbol_off_residue_symbol sym_ree in 
     Residue_nterminal_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_residue_nterminal_symbol sym_ren
    end
;;

let is_residue_buried_symbol_off_residue_symbol = function
  | Residue_symbol_t.Residue_buried_symbol _ -> true
  | _ -> false
;;

let is_residue_buried_segmented_symbol_off_residue_symbol sym_ree =
  if not (is_residue_buried_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
     Residue_buried_symbol_v.is_residue_buried_segmented_symbol_off_residue_buried_symbol sym_reb
    end
;;

let is_residue_buried_fragmented_symbol_off_residue_symbol sym_ree =
  if not (is_residue_buried_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
     Residue_buried_symbol_v.is_residue_buried_fragmented_symbol_off_residue_buried_symbol sym_reb
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree =
  if not (is_residue_buried_symbol_off_residue_symbol sym_ree)
  then false
  else
    begin
     let sym_reb = residue_buried_symbol_off_residue_symbol sym_ree in 
     Residue_buried_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_residue_buried_symbol sym_reb
    end
;;


(** created by ./generator residue implementation symbol at 17:29 1 Mar 2012. *)




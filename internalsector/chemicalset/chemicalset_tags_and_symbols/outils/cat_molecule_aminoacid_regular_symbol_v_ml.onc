(** {6 Including. *)

module Lst_v = List_v

let molecule_aminoacid_regular_symbol_list () =
[
 alanine;
 arginine;
 asparagine;
 aspartic;
 cysteine;
 glutamine;
 glutamic;
 histidine;
 isoleucine;
 leucine;
 lysine;
 methionine;
 phenylalanine;
 serine;
 threonine;
 tryptophan;
 tyrosine;
 valine;
]
;;

let print_invalid_string nam_fun str =
  let nams =
    Lst_v.name_with_separator name "\n" (molecule_aminoacid_regular_symbol_list ()) 
  in
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting an Molecule_aminoacid_regular name.\
     @.    found >%s<.\
     @.    cure : check list of molecule_aminoacid_regular name:@.%s@]@."
     nam_mod nam_fun str nams;
     assert false;
;;

let molecule_aminoacid_regular_symbol_of_string str =
  let stc = String.capitalize (String.lowercase str) in
  match stc with
  | "Alanine" -> alanine
  | "Arginine" -> arginine
  | "Asparagine" -> asparagine
  | "Aspartic" -> aspartic
  | "Cysteine" -> cysteine
  | "Glutamine" -> glutamine
  | "Glutamic" -> glutamic
  | "Histidine" -> histidine
  | "Isoleucine" -> isoleucine
  | "Leucine" -> leucine
  | "Lysine" -> lysine
  | "Methionine" -> methionine
  | "Phenylalanine" -> phenylalanine
  | "Serine" -> serine
  | "Threonine" -> threonine
  | "Tryptophan" -> tryptophan
  | "Tyrosine" -> tyrosine
  | "Valine" -> valine
  | s -> print_invalid_string "molecule_aminoacid_regular_symbol_of_string" str
;;"
"

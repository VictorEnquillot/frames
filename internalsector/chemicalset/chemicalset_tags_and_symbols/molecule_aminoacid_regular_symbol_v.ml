(** {3 A Symbol for a Molecule_aminoacid_regular.} *)

let nam_mod = "Molecule_aminoacid_regular_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mars_t.Alanine -> Format.sprintf "%s" "Alanine"
  | Mars_t.Arginine -> Format.sprintf "%s" "Arginine"
  | Mars_t.Asparagine -> Format.sprintf "%s" "Asparagine"
  | Mars_t.Aspartic -> Format.sprintf "%s" "Aspartic"
  | Mars_t.Cysteine -> Format.sprintf "%s" "Cysteine"
  | Mars_t.Glutamine -> Format.sprintf "%s" "Glutamine"
  | Mars_t.Glutamic -> Format.sprintf "%s" "Glutamic"
  | Mars_t.Histidine -> Format.sprintf "%s" "Histidine"
  | Mars_t.Isoleucine -> Format.sprintf "%s" "Isoleucine"
  | Mars_t.Leucine -> Format.sprintf "%s" "Leucine"
  | Mars_t.Lysine -> Format.sprintf "%s" "Lysine"
  | Mars_t.Methionine -> Format.sprintf "%s" "Methionine"
  | Mars_t.Phenylalanine -> Format.sprintf "%s" "Phenylalanine"
  | Mars_t.Serine -> Format.sprintf "%s" "Serine"
  | Mars_t.Threonine -> Format.sprintf "%s" "Threonine"
  | Mars_t.Tryptophan -> Format.sprintf "%s" "Tryptophan"
  | Mars_t.Tyrosine -> Format.sprintf "%s" "Tyrosine"
  | Mars_t.Valine -> Format.sprintf "%s" "Valine"
;;

let print ppf = function
  | Mars_t.Alanine -> Format.fprintf ppf "%s" "Alanine"
  | Mars_t.Arginine -> Format.fprintf ppf "%s" "Arginine"
  | Mars_t.Asparagine -> Format.fprintf ppf "%s" "Asparagine"
  | Mars_t.Aspartic -> Format.fprintf ppf "%s" "Aspartic"
  | Mars_t.Cysteine -> Format.fprintf ppf "%s" "Cysteine"
  | Mars_t.Glutamine -> Format.fprintf ppf "%s" "Glutamine"
  | Mars_t.Glutamic -> Format.fprintf ppf "%s" "Glutamic"
  | Mars_t.Histidine -> Format.fprintf ppf "%s" "Histidine"
  | Mars_t.Isoleucine -> Format.fprintf ppf "%s" "Isoleucine"
  | Mars_t.Leucine -> Format.fprintf ppf "%s" "Leucine"
  | Mars_t.Lysine -> Format.fprintf ppf "%s" "Lysine"
  | Mars_t.Methionine -> Format.fprintf ppf "%s" "Methionine"
  | Mars_t.Phenylalanine -> Format.fprintf ppf "%s" "Phenylalanine"
  | Mars_t.Serine -> Format.fprintf ppf "%s" "Serine"
  | Mars_t.Threonine -> Format.fprintf ppf "%s" "Threonine"
  | Mars_t.Tryptophan -> Format.fprintf ppf "%s" "Tryptophan"
  | Mars_t.Tyrosine -> Format.fprintf ppf "%s" "Tyrosine"
  | Mars_t.Valine -> Format.fprintf ppf "%s" "Valine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_regular_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Alanine from Molecule_aminoacid_regular.} *)

(* No Extraction from Alanine 0. *)

(** {6 Extracting Arginine from Molecule_aminoacid_regular.} *)

(* No Extraction from Arginine 0. *)

(** {6 Extracting Asparagine from Molecule_aminoacid_regular.} *)

(* No Extraction from Asparagine 0. *)

(** {6 Extracting Aspartic from Molecule_aminoacid_regular.} *)

(* No Extraction from Aspartic 0. *)

(** {6 Extracting Cysteine from Molecule_aminoacid_regular.} *)

(* No Extraction from Cysteine 0. *)

(** {6 Extracting Glutamine from Molecule_aminoacid_regular.} *)

(* No Extraction from Glutamine 0. *)

(** {6 Extracting Glutamic from Molecule_aminoacid_regular.} *)

(* No Extraction from Glutamic 0. *)

(** {6 Extracting Histidine from Molecule_aminoacid_regular.} *)

(* No Extraction from Histidine 0. *)

(** {6 Extracting Isoleucine from Molecule_aminoacid_regular.} *)

(* No Extraction from Isoleucine 0. *)

(** {6 Extracting Leucine from Molecule_aminoacid_regular.} *)

(* No Extraction from Leucine 0. *)

(** {6 Extracting Lysine from Molecule_aminoacid_regular.} *)

(* No Extraction from Lysine 0. *)

(** {6 Extracting Methionine from Molecule_aminoacid_regular.} *)

(* No Extraction from Methionine 0. *)

(** {6 Extracting Phenylalanine from Molecule_aminoacid_regular.} *)

(* No Extraction from Phenylalanine 0. *)

(** {6 Extracting Serine from Molecule_aminoacid_regular.} *)

(* No Extraction from Serine 0. *)

(** {6 Extracting Threonine from Molecule_aminoacid_regular.} *)

(* No Extraction from Threonine 0. *)

(** {6 Extracting Tryptophan from Molecule_aminoacid_regular.} *)

(* No Extraction from Tryptophan 0. *)

(** {6 Extracting Tyrosine from Molecule_aminoacid_regular.} *)

(* No Extraction from Tyrosine 0. *)

(** {6 Extracting Valine from Molecule_aminoacid_regular.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Alanine in Molecule_aminoacid_regular.} *)

(* No Query from Alanine 0. *)

(** {6 Querying Arginine in Molecule_aminoacid_regular.} *)

(* No Query from Arginine 0. *)

(** {6 Querying Asparagine in Molecule_aminoacid_regular.} *)

(* No Query from Asparagine 0. *)

(** {6 Querying Aspartic in Molecule_aminoacid_regular.} *)

(* No Query from Aspartic 0. *)

(** {6 Querying Cysteine in Molecule_aminoacid_regular.} *)

(* No Query from Cysteine 0. *)

(** {6 Querying Glutamine in Molecule_aminoacid_regular.} *)

(* No Query from Glutamine 0. *)

(** {6 Querying Glutamic in Molecule_aminoacid_regular.} *)

(* No Query from Glutamic 0. *)

(** {6 Querying Histidine in Molecule_aminoacid_regular.} *)

(* No Query from Histidine 0. *)

(** {6 Querying Isoleucine in Molecule_aminoacid_regular.} *)

(* No Query from Isoleucine 0. *)

(** {6 Querying Leucine in Molecule_aminoacid_regular.} *)

(* No Query from Leucine 0. *)

(** {6 Querying Lysine in Molecule_aminoacid_regular.} *)

(* No Query from Lysine 0. *)

(** {6 Querying Methionine in Molecule_aminoacid_regular.} *)

(* No Query from Methionine 0. *)

(** {6 Querying Phenylalanine in Molecule_aminoacid_regular.} *)

(* No Query from Phenylalanine 0. *)

(** {6 Querying Serine in Molecule_aminoacid_regular.} *)

(* No Query from Serine 0. *)

(** {6 Querying Threonine in Molecule_aminoacid_regular.} *)

(* No Query from Threonine 0. *)

(** {6 Querying Tryptophan in Molecule_aminoacid_regular.} *)

(* No Query from Tryptophan 0. *)

(** {6 Querying Tyrosine in Molecule_aminoacid_regular.} *)

(* No Query from Tyrosine 0. *)

(** {6 Querying Valine in Molecule_aminoacid_regular.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Alanine to Molecule_aminoacid_regular.} *)

let alanine = Mars_t.Alanine;;

(** {6 Upgrading from Arginine to Molecule_aminoacid_regular.} *)

let arginine = Mars_t.Arginine;;

(** {6 Upgrading from Asparagine to Molecule_aminoacid_regular.} *)

let asparagine = Mars_t.Asparagine;;

(** {6 Upgrading from Aspartic to Molecule_aminoacid_regular.} *)

let aspartic = Mars_t.Aspartic;;

(** {6 Upgrading from Cysteine to Molecule_aminoacid_regular.} *)

let cysteine = Mars_t.Cysteine;;

(** {6 Upgrading from Glutamine to Molecule_aminoacid_regular.} *)

let glutamine = Mars_t.Glutamine;;

(** {6 Upgrading from Glutamic to Molecule_aminoacid_regular.} *)

let glutamic = Mars_t.Glutamic;;

(** {6 Upgrading from Histidine to Molecule_aminoacid_regular.} *)

let histidine = Mars_t.Histidine;;

(** {6 Upgrading from Isoleucine to Molecule_aminoacid_regular.} *)

let isoleucine = Mars_t.Isoleucine;;

(** {6 Upgrading from Leucine to Molecule_aminoacid_regular.} *)

let leucine = Mars_t.Leucine;;

(** {6 Upgrading from Lysine to Molecule_aminoacid_regular.} *)

let lysine = Mars_t.Lysine;;

(** {6 Upgrading from Methionine to Molecule_aminoacid_regular.} *)

let methionine = Mars_t.Methionine;;

(** {6 Upgrading from Phenylalanine to Molecule_aminoacid_regular.} *)

let phenylalanine = Mars_t.Phenylalanine;;

(** {6 Upgrading from Serine to Molecule_aminoacid_regular.} *)

let serine = Mars_t.Serine;;

(** {6 Upgrading from Threonine to Molecule_aminoacid_regular.} *)

let threonine = Mars_t.Threonine;;

(** {6 Upgrading from Tryptophan to Molecule_aminoacid_regular.} *)

let tryptophan = Mars_t.Tryptophan;;

(** {6 Upgrading from Tyrosine to Molecule_aminoacid_regular.} *)

let tyrosine = Mars_t.Tyrosine;;

(** {6 Upgrading from Valine to Molecule_aminoacid_regular.} *)

let valine = Mars_t.Valine;;

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
(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_regular 12 January 2011. *)


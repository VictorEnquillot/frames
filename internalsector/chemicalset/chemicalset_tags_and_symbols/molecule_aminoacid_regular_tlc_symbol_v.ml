(** {3 A Symbol for a Molecule_aminoacid_regular_tlc.} *)

let nam_mod = "Molecule_aminoacid_regular_tlc_symbol_v";;

(** {6 Modules.} *)

module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t

(** {6 Displaying.} *)

let name = function
  | Marts_t.Ala -> Format.sprintf "%s" "Ala"
  | Marts_t.Arg -> Format.sprintf "%s" "Arg"
  | Marts_t.Asn -> Format.sprintf "%s" "Asn"
  | Marts_t.Asp -> Format.sprintf "%s" "Asp"
  | Marts_t.Cys -> Format.sprintf "%s" "Cys"
  | Marts_t.Gln -> Format.sprintf "%s" "Gln"
  | Marts_t.Glu -> Format.sprintf "%s" "Glu"
  | Marts_t.His -> Format.sprintf "%s" "His"
  | Marts_t.Ile -> Format.sprintf "%s" "Ile"
  | Marts_t.Leu -> Format.sprintf "%s" "Leu"
  | Marts_t.Lys -> Format.sprintf "%s" "Lys"
  | Marts_t.Met -> Format.sprintf "%s" "Met"
  | Marts_t.Phe -> Format.sprintf "%s" "Phe"
  | Marts_t.Ser -> Format.sprintf "%s" "Ser"
  | Marts_t.Thr -> Format.sprintf "%s" "Thr"
  | Marts_t.Trp -> Format.sprintf "%s" "Trp"
  | Marts_t.Tyr -> Format.sprintf "%s" "Tyr"
  | Marts_t.Val -> Format.sprintf "%s" "Val"
;;

let print ppf = function
  | Marts_t.Ala -> Format.fprintf ppf "%s" "Ala"
  | Marts_t.Arg -> Format.fprintf ppf "%s" "Arg"
  | Marts_t.Asn -> Format.fprintf ppf "%s" "Asn"
  | Marts_t.Asp -> Format.fprintf ppf "%s" "Asp"
  | Marts_t.Cys -> Format.fprintf ppf "%s" "Cys"
  | Marts_t.Gln -> Format.fprintf ppf "%s" "Gln"
  | Marts_t.Glu -> Format.fprintf ppf "%s" "Glu"
  | Marts_t.His -> Format.fprintf ppf "%s" "His"
  | Marts_t.Ile -> Format.fprintf ppf "%s" "Ile"
  | Marts_t.Leu -> Format.fprintf ppf "%s" "Leu"
  | Marts_t.Lys -> Format.fprintf ppf "%s" "Lys"
  | Marts_t.Met -> Format.fprintf ppf "%s" "Met"
  | Marts_t.Phe -> Format.fprintf ppf "%s" "Phe"
  | Marts_t.Ser -> Format.fprintf ppf "%s" "Ser"
  | Marts_t.Thr -> Format.fprintf ppf "%s" "Thr"
  | Marts_t.Trp -> Format.fprintf ppf "%s" "Trp"
  | Marts_t.Tyr -> Format.fprintf ppf "%s" "Tyr"
  | Marts_t.Val -> Format.fprintf ppf "%s" "Val"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_regular_tlc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ala from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Ala 0. *)

(** {6 Extracting Arg from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Arg 0. *)

(** {6 Extracting Asn from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Asn 0. *)

(** {6 Extracting Asp from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Asp 0. *)

(** {6 Extracting Cys from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Cys 0. *)

(** {6 Extracting Gln from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Gln 0. *)

(** {6 Extracting Glu from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Glu 0. *)

(** {6 Extracting His from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from His 0. *)

(** {6 Extracting Ile from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Ile 0. *)

(** {6 Extracting Leu from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Leu 0. *)

(** {6 Extracting Lys from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Lys 0. *)

(** {6 Extracting Met from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Met 0. *)

(** {6 Extracting Phe from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Phe 0. *)

(** {6 Extracting Ser from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Ser 0. *)

(** {6 Extracting Thr from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Thr 0. *)

(** {6 Extracting Trp from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Trp 0. *)

(** {6 Extracting Tyr from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Tyr 0. *)

(** {6 Extracting Val from Molecule_aminoacid_regular_tlc.} *)

(* No Extraction from Val 0. *)

(** {6 Querying.} *)

(** {6 Querying Ala in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Ala 0. *)

(** {6 Querying Arg in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Arg 0. *)

(** {6 Querying Asn in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Asn 0. *)

(** {6 Querying Asp in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Asp 0. *)

(** {6 Querying Cys in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Cys 0. *)

(** {6 Querying Gln in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Gln 0. *)

(** {6 Querying Glu in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Glu 0. *)

(** {6 Querying His in Molecule_aminoacid_regular_tlc.} *)

(* No Query from His 0. *)

(** {6 Querying Ile in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Ile 0. *)

(** {6 Querying Leu in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Leu 0. *)

(** {6 Querying Lys in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Lys 0. *)

(** {6 Querying Met in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Met 0. *)

(** {6 Querying Phe in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Phe 0. *)

(** {6 Querying Ser in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Ser 0. *)

(** {6 Querying Thr in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Thr 0. *)

(** {6 Querying Trp in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Trp 0. *)

(** {6 Querying Tyr in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Tyr 0. *)

(** {6 Querying Val in Molecule_aminoacid_regular_tlc.} *)

(* No Query from Val 0. *)

(** {6 Upgrading from Ala to Molecule_aminoacid_regular_tlc.} *)

let ala = Marts_t.Ala;;

(** {6 Upgrading from Arg to Molecule_aminoacid_regular_tlc.} *)

let arg = Marts_t.Arg;;

(** {6 Upgrading from Asn to Molecule_aminoacid_regular_tlc.} *)

let asn = Marts_t.Asn;;

(** {6 Upgrading from Asp to Molecule_aminoacid_regular_tlc.} *)

let asp = Marts_t.Asp;;

(** {6 Upgrading from Cys to Molecule_aminoacid_regular_tlc.} *)

let cys = Marts_t.Cys;;

(** {6 Upgrading from Gln to Molecule_aminoacid_regular_tlc.} *)

let gln = Marts_t.Gln;;

(** {6 Upgrading from Glu to Molecule_aminoacid_regular_tlc.} *)

let glu = Marts_t.Glu;;

(** {6 Upgrading from His to Molecule_aminoacid_regular_tlc.} *)

let his = Marts_t.His;;

(** {6 Upgrading from Ile to Molecule_aminoacid_regular_tlc.} *)

let ile = Marts_t.Ile;;

(** {6 Upgrading from Leu to Molecule_aminoacid_regular_tlc.} *)

let leu = Marts_t.Leu;;

(** {6 Upgrading from Lys to Molecule_aminoacid_regular_tlc.} *)

let lys = Marts_t.Lys;;

(** {6 Upgrading from Met to Molecule_aminoacid_regular_tlc.} *)

let met = Marts_t.Met;;

(** {6 Upgrading from Phe to Molecule_aminoacid_regular_tlc.} *)

let phe = Marts_t.Phe;;

(** {6 Upgrading from Ser to Molecule_aminoacid_regular_tlc.} *)

let ser = Marts_t.Ser;;

(** {6 Upgrading from Thr to Molecule_aminoacid_regular_tlc.} *)

let thr = Marts_t.Thr;;

(** {6 Upgrading from Trp to Molecule_aminoacid_regular_tlc.} *)

let trp = Marts_t.Trp;;

(** {6 Upgrading from Tyr to Molecule_aminoacid_regular_tlc.} *)

let tyr = Marts_t.Tyr;;

(** {6 Upgrading from Val to Molecule_aminoacid_regular_tlc.} *)

let v_l = Marts_t.Val;;

(** {6 Including.} *)

module Lst_v = List_v
module Mars_t = Molecule_aminoacid_regular_symbol_t

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_tlc_symbol = function
  | Marts_t.Ala -> Mars_t.Alanine
  | Marts_t.Arg -> Mars_t.Arginine
  | Marts_t.Asn -> Mars_t.Asparagine
  | Marts_t.Asp -> Mars_t.Aspartic
  | Marts_t.Cys -> Mars_t.Cysteine
  | Marts_t.Gln -> Mars_t.Glutamine
  | Marts_t.Glu -> Mars_t.Glutamic
  | Marts_t.His -> Mars_t.Histidine
  | Marts_t.Ile -> Mars_t.Isoleucine
  | Marts_t.Leu -> Mars_t.Leucine
  | Marts_t.Lys -> Mars_t.Lysine
  | Marts_t.Met -> Mars_t.Methionine
  | Marts_t.Phe -> Mars_t.Phenylalanine
  | Marts_t.Ser -> Mars_t.Serine
  | Marts_t.Thr -> Mars_t.Threonine
  | Marts_t.Trp -> Mars_t.Tryptophan
  | Marts_t.Tyr -> Mars_t.Tyrosine
  | Marts_t.Val -> Mars_t.Valine
;;

let molecule_aminoacid_regular_tlc_symbol_list () =
[
 ala;
 arg;
 asn;
 asp;
 cys;
 gln;
 glu;
 his;
 ile;
 leu;
 lys;
 met;
 phe;
 ser;
 thr;
 trp;
 tyr;
 v_l;
]
;;

let print_invalid_string nam_fun str =
  let nams =
    Lst_v.name_with_separator name "\n" (molecule_aminoacid_regular_tlc_symbol_list ()) 
  in
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting an Molecule_aminoacid_regular_tlc name.\
     @.    found >%s<.\
     @.    cure : check list of molecule_aminoacid_regular_tlc name:@.%s@]@."
     nam_mod nam_fun str nams;
     assert false;
;;

let molecule_aminoacid_regular_tlc_symbol_of_string str =
  let stc = String.capitalize (String.lowercase str) in
  match stc with
  | "Ala" -> ala
  | "Arg" -> arg
  | "Asn" -> asn
  | "Asp" -> asp
  | "Cys" -> cys
  | "Gln" -> gln
  | "Glu" -> glu
  | "His" -> his
  | "Ile" -> ile
  | "Leu" -> leu
  | "Lys" -> lys
  | "Met" -> met
  | "Phe" -> phe
  | "Ser" -> ser
  | "Thr" -> thr
  | "Trp" -> trp
  | "Tyr" -> tyr
  | "Val" -> v_l
  | str -> 
  print_invalid_string "molecule_aminoacid_regular_tlc_symbol_of_string" str
;;
(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_regular_tlc 12 January 2011. *)


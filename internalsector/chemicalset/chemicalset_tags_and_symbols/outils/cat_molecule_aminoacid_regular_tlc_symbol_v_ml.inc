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

(** {6 Including.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_olc_symbol = function
  | Maros_t.A -> Mars_t.Alanine
  | Maros_t.R -> Mars_t.Arginine
  | Maros_t.N -> Mars_t.Asparagine
  | Maros_t.D -> Mars_t.Aspartic
  | Maros_t.C -> Mars_t.Cysteine
  | Maros_t.Q -> Mars_t.Glutamine
  | Maros_t.E -> Mars_t.Glutamic
  | Maros_t.H -> Mars_t.Histidine
  | Maros_t.I -> Mars_t.Isoleucine
  | Maros_t.L -> Mars_t.Leucine
  | Maros_t.K -> Mars_t.Lysine
  | Maros_t.M -> Mars_t.Methionine
  | Maros_t.F -> Mars_t.Phenylalanine
  | Maros_t.S -> Mars_t.Serine
  | Maros_t.T -> Mars_t.Threonine
  | Maros_t.W -> Mars_t.Tryptophan
  | Maros_t.Y -> Mars_t.Tyrosine
  | Maros_t.V -> Mars_t.Valine
;;

let print_error_char c mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    char >%c< does not represent a one letter code symbol@]@."
  mdn her c
;;

let fail_char c mdn her =
  print_error_char c mdn her;
  assert false
;;

let molecule_aminoacid_regular_olc_symbol_of_char chr =
  let chu = Char.uppercase chr in
  match chu with
  | 'A' -> a
  | 'R' -> r
  | 'N' -> n
  | 'D' -> d  
  | 'C' -> c
  | 'Q' -> q
  | 'E' -> e
  | 'H' -> h
  | 'I' -> i
  | 'L' -> l
  | 'K' -> k
  | 'M' -> m
  | 'F' -> f
  | 'S' -> s
  | 'T' -> t
  | 'W' -> w
  | 'Y' -> y
  | 'V' -> v
  | c -> fail_char c nam_mod "molecule_aminoacid_olc_symbol_of_char"
;;

let molecule_aminoacid_regular_olc_symbol_of_string str =
  let chr = String.get str 0 in    
    molecule_aminoacid_regular_olc_symbol_of_char chr
;;
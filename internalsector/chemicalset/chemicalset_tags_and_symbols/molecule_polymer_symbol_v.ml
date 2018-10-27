(** {3 A Symbol for a Molecule_polymer.} *)

let nam_mod = "Molecule_polymer_symbol_v";;

(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Mps_t = Molecule_polymer_symbol_t
module Nas_t = Nucleicacid_symbol_t
module Nas_v = Nucleicacid_symbol_v
module Ord_p = Ordinal_p
module Pgs_t = Polyglycine_symbol_t
module Pgs_v = Polyglycine_symbol_v
module Plrs_t = Polypeptide_regular_symbol_t
module Plrs_v = Polypeptide_regular_symbol_v
module Pls_t = Polypeptide_symbol_t
module Pls_v = Polypeptide_symbol_v
module Pps_t = Polyproline_symbol_t
module Pps_v = Polyproline_symbol_v
module Str_v = String_v

(** {6 Displaying.} *)

let name = function
  | Mps_t.Polypeptide_symbol smb_plp -> 
      Pls_v.name smb_plp
  | Mps_t.Nucleicacid_symbol smb_nca -> 
      Nas_v.name smb_nca
;;

let print ppf = function
  | Mps_t.Polypeptide_symbol smb_plp -> 
      Pls_v.print ppf smb_plp
  | Mps_t.Nucleicacid_symbol smb_nca -> 
      Nas_v.print ppf smb_nca
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_polymer_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Polypeptide from Molecule_polymer.} *)

let polypeptide_symbol_off_molecule_polymer_symbol = function
  | Mps_t.Polypeptide_symbol smb_plp -> smb_plp
  | s ->  print_fatal_error
      "polypeptide_symbol_off_molecule_polymer_symbol"
      "Polypeptide_symbol" (name s)
;;

(** {9 Extracting Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

let polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mp =
  let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
    Pls_v.polypeptide_regular_symbol_off_polypeptide_symbol smb_plp
;;

(** {12 Extracting Acg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Acg 0. *)

(** {12 Extracting Adh from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Adh 0. *)

(** {12 Extracting Agagag from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agagag 0. *)

(** {12 Extracting Agc from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agc 0. *)

(** {12 Extracting Agg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agg 0. *)

(** {12 Extracting Agp from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Agp 0. *)

(** {12 Extracting Gac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gac 0. *)

(** {12 Extracting Gap from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gap 0. *)

(** {12 Extracting Ggg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggg 0. *)

(** {12 Extracting Ggacgg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggacgg 0. *)

(** {12 Extracting Ggaggg from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Ggaggg 0. *)

(** {12 Extracting Gagaga from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Gagaga 0. *)

(** {12 Extracting Mhb from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Mhb 0. *)

(** {12 Extracting Pac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pac 0. *)

(** {12 Extracting Pag from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pag 0. *)

(** {12 Extracting Pgk from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pgk 0. *)

(** {12 Extracting Pti from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Pti 0. *)

(** {12 Extracting Sac from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Sac 0. *)

(** {12 Extracting Tab from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Tab 0. *)

(** {12 Extracting Try from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

(* No Extraction from Try 0. *)

(** {12 Extracting String from Polypeptide_regular from Polypeptide from Molecule_polymer.} *)

let polypeptide_regular_string_off_molecule_polymer_symbol smb_mp =
  let smb_plr = polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mp in
    Plrs_v.polypeptide_regular_string_off_polypeptide_regular_symbol smb_plr
;;

(** {9 Extracting Polyproline from Polypeptide from Molecule_polymer.} *)

let polyproline_symbol_off_molecule_polymer_symbol smb_mp =
  let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
    Pls_v.polyproline_symbol_off_polypeptide_symbol smb_plp
;;

(** {12 Extracting Doublet_string_ordinal from Polyproline from Polypeptide from Molecule_polymer.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {9 Extracting Polyglycine from Polypeptide from Molecule_polymer.} *)

let polyglycine_symbol_off_molecule_polymer_symbol smb_mp =
  let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
    Pls_v.polyglycine_symbol_off_polypeptide_symbol smb_plp
;;

(** {12 Extracting Doublet_string_ordinal from Polyglycine from Polypeptide from Molecule_polymer.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Extracting Nucleicacid from Molecule_polymer.} *)

let nucleicacid_symbol_off_molecule_polymer_symbol = function
  | Mps_t.Nucleicacid_symbol smb_nca -> smb_nca
  | s ->  print_fatal_error
      "nucleicacid_symbol_off_molecule_polymer_symbol"
      "Nucleicacid_symbol" (name s)
;;

(** {9 Extracting Dna from Nucleicacid from Molecule_polymer.} *)

(* No Extraction from Dna 0. *)

(** {9 Extracting Rna from Nucleicacid from Molecule_polymer.} *)

(* No Extraction from Rna 0. *)

(** {6 Querying.} *)

(** {6 Querying Polypeptide in Molecule_polymer.} *)

let is_polypeptide_symbol_off_molecule_polymer_symbol = function
  | Mps_t.Polypeptide_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

let is_polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mp =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mp)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
      Pls_v.is_polypeptide_regular_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {12 Querying Acg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Acg 0. *)

(** {12 Querying Adh in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Adh 0. *)

(** {12 Querying Agagag in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agagag 0. *)

(** {12 Querying Agc in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agc 0. *)

(** {12 Querying Agg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agg 0. *)

(** {12 Querying Agp in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Agp 0. *)

(** {12 Querying Gac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gac 0. *)

(** {12 Querying Gap in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gap 0. *)

(** {12 Querying Ggg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggg 0. *)

(** {12 Querying Ggacgg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggacgg 0. *)

(** {12 Querying Ggaggg in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Ggaggg 0. *)

(** {12 Querying Gagaga in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Gagaga 0. *)

(** {12 Querying Mhb in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Mhb 0. *)

(** {12 Querying Pac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pac 0. *)

(** {12 Querying Pag in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pag 0. *)

(** {12 Querying Pgk in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pgk 0. *)

(** {12 Querying Pti in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Pti 0. *)

(** {12 Querying Sac in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Sac 0. *)

(** {12 Querying Tab in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Tab 0. *)

(** {12 Querying Try in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

(* No Query from Try 0. *)

(** {12 Querying String in Polypeptide_regular in Polypeptide in Molecule_polymer.} *)

let is_polypeptide_regular_string_off_molecule_polymer_symbol smb_mp =
  if not (is_polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mp)
  then false
  else
    begin
      let smb_plr = polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mp in
      Plrs_v.is_polypeptide_regular_string_off_polypeptide_regular_symbol smb_plr
    end
;;

(** {9 Querying Polyproline in Polypeptide in Molecule_polymer.} *)

let is_polyproline_symbol_off_molecule_polymer_symbol smb_mp =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mp)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
      Pls_v.is_polyproline_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {12 Querying Doublet_string_ordinal in Polyproline in Polypeptide in Molecule_polymer.} *)

(* No Query from doublet_string_ordinal d. *)

(** {9 Querying Polyglycine in Polypeptide in Molecule_polymer.} *)

let is_polyglycine_symbol_off_molecule_polymer_symbol smb_mp =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mp)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_polymer_symbol smb_mp in
      Pls_v.is_polyglycine_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {12 Querying Doublet_string_ordinal in Polyglycine in Polypeptide in Molecule_polymer.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Querying Nucleicacid in Molecule_polymer.} *)

let is_nucleicacid_symbol_off_molecule_polymer_symbol = function
  | Mps_t.Nucleicacid_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Dna in Nucleicacid in Molecule_polymer.} *)

(* No Query from Dna 0. *)


(** {9 Querying Rna in Nucleicacid in Molecule_polymer.} *)

(* No Query from Rna 0. *)


(** {6 Upgrading from Polypeptide to Molecule_polymer.} *)

let molecule_polymer_symbol_of_polypeptide_symbol smb_plp =
  Mps_t.Polypeptide_symbol smb_plp
;;

(** {9 Upgrading from Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let molecule_polymer_symbol_of_polypeptide_regular_symbol smb_plr =
  let smb_plp = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol smb_plr in
  molecule_polymer_symbol_of_polypeptide_symbol smb_plp
;;

(** {12 Upgrading from Acg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let acg = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Acg;;

(** {12 Upgrading from Adh through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let adh = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Adh;;

(** {12 Upgrading from Agagag through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let agagag = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Agagag;;

(** {12 Upgrading from Agc through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let agc = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Agc;;

(** {12 Upgrading from Agg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let agg = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Agg;;

(** {12 Upgrading from Agp through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let agp = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Agp;;

(** {12 Upgrading from Gac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let gac = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Gac;;

(** {12 Upgrading from Gap through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let gap = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Gap;;

(** {12 Upgrading from Ggg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let ggg = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Ggg;;

(** {12 Upgrading from Ggacgg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let ggacgg = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Ggacgg;;

(** {12 Upgrading from Ggaggg through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let ggaggg = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Ggaggg;;

(** {12 Upgrading from Gagaga through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let gagaga = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Gagaga;;

(** {12 Upgrading from Mhb through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let mhb = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Mhb;;

(** {12 Upgrading from Pac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let pac = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Pac;;

(** {12 Upgrading from Pag through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let pag = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Pag;;

(** {12 Upgrading from Pgk through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let pgk = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Pgk;;

(** {12 Upgrading from Pti through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let pti = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Pti;;

(** {12 Upgrading from Sac through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let sac = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Sac;;

(** {12 Upgrading from Tab through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let tab = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Tab;;

(** {12 Upgrading from Try through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let tr_ = molecule_polymer_symbol_of_polypeptide_regular_symbol Plrs_t.Try;;

(** {12 Upgrading from String through Polypeptide_regular through Polypeptide to Molecule_polymer.} *)

let molecule_polymer_symbol_of_polypeptide_regular_string s =
  let smb_plr = Plrs_v.polypeptide_regular_symbol_of_polypeptide_regular_string s in
  molecule_polymer_symbol_of_polypeptide_regular_symbol smb_plr
;;

(** {9 Upgrading from Polyproline through Polypeptide to Molecule_polymer.} *)

let molecule_polymer_symbol_of_polyproline_symbol smb_ppr =
  let smb_plp = Pls_v.polypeptide_symbol_of_polyproline_symbol smb_ppr in
  molecule_polymer_symbol_of_polypeptide_symbol smb_plp
;;

(** {12 Upgrading from Doublet_string_ordinal through Polyproline through Polypeptide to Molecule_polymer.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {9 Upgrading from Polyglycine through Polypeptide to Molecule_polymer.} *)

let molecule_polymer_symbol_of_polyglycine_symbol smb_pgl =
  let smb_plp = Pls_v.polypeptide_symbol_of_polyglycine_symbol smb_pgl in
  molecule_polymer_symbol_of_polypeptide_symbol smb_plp
;;

(** {12 Upgrading from Doublet_string_ordinal through Polyglycine through Polypeptide to Molecule_polymer.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Nucleicacid to Molecule_polymer.} *)

let molecule_polymer_symbol_of_nucleicacid_symbol smb_nca =
  Mps_t.Nucleicacid_symbol smb_nca
;;

(** {9 Upgrading from Dna through Nucleicacid to Molecule_polymer.} *)

let dna = molecule_polymer_symbol_of_nucleicacid_symbol Nas_t.Dna;;

(** {9 Upgrading from Rna through Nucleicacid to Molecule_polymer.} *)

let rna = molecule_polymer_symbol_of_nucleicacid_symbol Nas_t.Rna;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_polymer 12 January 2011. *)


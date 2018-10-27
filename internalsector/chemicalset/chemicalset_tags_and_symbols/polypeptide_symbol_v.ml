(** {3 A Symbol for a Polypeptide.} *)

let nam_mod = "Polypeptide_symbol_v";;

(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Ord_p = Ordinal_p
module Pgs_t = Polyglycine_symbol_t
module Pgs_v = Polyglycine_symbol_v
module Plrs_t = Polypeptide_regular_symbol_t
module Plrs_v = Polypeptide_regular_symbol_v
module Pls_t = Polypeptide_symbol_t
module Pps_t = Polyproline_symbol_t
module Pps_v = Polyproline_symbol_v
module Str_v = String_v

(** {6 Displaying.} *)

let name = function
  | Pls_t.Polypeptide_regular_symbol smb_plr -> 
      Plrs_v.name smb_plr
  | Pls_t.Polyproline_symbol smb_ppr -> 
      Pps_v.name smb_ppr
  | Pls_t.Polyglycine_symbol smb_pgl -> 
      Pgs_v.name smb_pgl
;;

let print ppf = function
  | Pls_t.Polypeptide_regular_symbol smb_plr -> 
      Plrs_v.print ppf smb_plr
  | Pls_t.Polyproline_symbol smb_ppr -> 
      Pps_v.print ppf smb_ppr
  | Pls_t.Polyglycine_symbol smb_pgl -> 
      Pgs_v.print ppf smb_pgl
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found polypeptide_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Polypeptide_regular from Polypeptide.} *)

let polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Pls_t.Polypeptide_regular_symbol smb_plr -> smb_plr
  | s ->  print_fatal_error
      "polypeptide_regular_symbol_off_polypeptide_symbol"
      "Polypeptide_regular_symbol" (name s)
;;

(** {9 Extracting Acg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Acg 0. *)

(** {9 Extracting Adh from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Adh 0. *)

(** {9 Extracting Agagag from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Agagag 0. *)

(** {9 Extracting Agc from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Agc 0. *)

(** {9 Extracting Agg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Agg 0. *)

(** {9 Extracting Agp from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Agp 0. *)

(** {9 Extracting Gac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Gac 0. *)

(** {9 Extracting Gap from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Gap 0. *)

(** {9 Extracting Ggg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Ggg 0. *)

(** {9 Extracting Ggacgg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Ggacgg 0. *)

(** {9 Extracting Ggaggg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Ggaggg 0. *)

(** {9 Extracting Gagaga from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Gagaga 0. *)

(** {9 Extracting Mhb from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Mhb 0. *)

(** {9 Extracting Pac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Pac 0. *)

(** {9 Extracting Pag from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Pag 0. *)

(** {9 Extracting Pgk from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Pgk 0. *)

(** {9 Extracting Pti from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Pti 0. *)

(** {9 Extracting Sac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Sac 0. *)

(** {9 Extracting Tab from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Tab 0. *)

(** {9 Extracting Try from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from Try 0. *)

(** {9 Extracting String from Polypeptide_regular from Polypeptide.} *)

let polypeptide_regular_string_off_polypeptide_symbol smb_plp =
  let smb_plr = polypeptide_regular_symbol_off_polypeptide_symbol smb_plp in
    Plrs_v.polypeptide_regular_string_off_polypeptide_regular_symbol smb_plr
;;

(** {6 Extracting Polyproline from Polypeptide.} *)

let polyproline_symbol_off_polypeptide_symbol = function
  | Pls_t.Polyproline_symbol smb_ppr -> smb_ppr
  | s ->  print_fatal_error
      "polyproline_symbol_off_polypeptide_symbol"
      "Polyproline_symbol" (name s)
;;

(** {9 Extracting Doublet_string_ordinal from Polyproline from Polypeptide.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Extracting Polyglycine from Polypeptide.} *)

let polyglycine_symbol_off_polypeptide_symbol = function
  | Pls_t.Polyglycine_symbol smb_pgl -> smb_pgl
  | s ->  print_fatal_error
      "polyglycine_symbol_off_polypeptide_symbol"
      "Polyglycine_symbol" (name s)
;;

(** {9 Extracting Doublet_string_ordinal from Polyglycine from Polypeptide.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Querying.} *)

(** {6 Querying Polypeptide_regular in Polypeptide.} *)

let is_polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Pls_t.Polypeptide_regular_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Acg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Acg 0. *)


(** {9 Querying Adh in Polypeptide_regular in Polypeptide.} *)

(* No Query from Adh 0. *)


(** {9 Querying Agagag in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agagag 0. *)


(** {9 Querying Agc in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agc 0. *)


(** {9 Querying Agg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agg 0. *)


(** {9 Querying Agp in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agp 0. *)


(** {9 Querying Gac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gac 0. *)


(** {9 Querying Gap in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gap 0. *)


(** {9 Querying Ggg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggg 0. *)


(** {9 Querying Ggacgg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggacgg 0. *)


(** {9 Querying Ggaggg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggaggg 0. *)


(** {9 Querying Gagaga in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gagaga 0. *)


(** {9 Querying Mhb in Polypeptide_regular in Polypeptide.} *)

(* No Query from Mhb 0. *)


(** {9 Querying Pac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pac 0. *)


(** {9 Querying Pag in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pag 0. *)


(** {9 Querying Pgk in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pgk 0. *)


(** {9 Querying Pti in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pti 0. *)


(** {9 Querying Sac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Sac 0. *)


(** {9 Querying Tab in Polypeptide_regular in Polypeptide.} *)

(* No Query from Tab 0. *)


(** {9 Querying Try in Polypeptide_regular in Polypeptide.} *)

(* No Query from Try 0. *)


(** {9 Querying String in Polypeptide_regular in Polypeptide.} *)

let is_polypeptide_regular_string_off_polypeptide_symbol smb_plp =
  if not (is_polypeptide_regular_symbol_off_polypeptide_symbol smb_plp)
  then false
  else
    begin
      let smb_plr = polypeptide_regular_symbol_off_polypeptide_symbol smb_plp in
      Plrs_v.is_polypeptide_regular_string_off_polypeptide_regular_symbol smb_plr
    end
;;

(** {6 Querying Polyproline in Polypeptide.} *)

let is_polyproline_symbol_off_polypeptide_symbol = function
  | Pls_t.Polyproline_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Doublet_string_ordinal in Polyproline in Polypeptide.} *)

(* No Query from doublet_string_ordinal d. *)


(** {6 Querying Polyglycine in Polypeptide.} *)

let is_polyglycine_symbol_off_polypeptide_symbol = function
  | Pls_t.Polyglycine_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Doublet_string_ordinal in Polyglycine in Polypeptide.} *)

(* No Query from doublet_string_ordinal d. *)


(** {6 Upgrading from Polypeptide_regular to Polypeptide.} *)

let polypeptide_symbol_of_polypeptide_regular_symbol smb_plr =
  Pls_t.Polypeptide_regular_symbol smb_plr
;;

(** {9 Upgrading from Acg through Polypeptide_regular to Polypeptide.} *)

let acg = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Acg;;

(** {9 Upgrading from Adh through Polypeptide_regular to Polypeptide.} *)

let adh = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Adh;;

(** {9 Upgrading from Agagag through Polypeptide_regular to Polypeptide.} *)

let agagag = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Agagag;;

(** {9 Upgrading from Agc through Polypeptide_regular to Polypeptide.} *)

let agc = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Agc;;

(** {9 Upgrading from Agg through Polypeptide_regular to Polypeptide.} *)

let agg = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Agg;;

(** {9 Upgrading from Agp through Polypeptide_regular to Polypeptide.} *)

let agp = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Agp;;

(** {9 Upgrading from Gac through Polypeptide_regular to Polypeptide.} *)

let gac = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Gac;;

(** {9 Upgrading from Gap through Polypeptide_regular to Polypeptide.} *)

let gap = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Gap;;

(** {9 Upgrading from Ggg through Polypeptide_regular to Polypeptide.} *)

let ggg = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Ggg;;

(** {9 Upgrading from Ggacgg through Polypeptide_regular to Polypeptide.} *)

let ggacgg = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Ggacgg;;

(** {9 Upgrading from Ggaggg through Polypeptide_regular to Polypeptide.} *)

let ggaggg = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Ggaggg;;

(** {9 Upgrading from Gagaga through Polypeptide_regular to Polypeptide.} *)

let gagaga = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Gagaga;;

(** {9 Upgrading from Mhb through Polypeptide_regular to Polypeptide.} *)

let mhb = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Mhb;;

(** {9 Upgrading from Pac through Polypeptide_regular to Polypeptide.} *)

let pac = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Pac;;

(** {9 Upgrading from Pag through Polypeptide_regular to Polypeptide.} *)

let pag = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Pag;;

(** {9 Upgrading from Pgk through Polypeptide_regular to Polypeptide.} *)

let pgk = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Pgk;;

(** {9 Upgrading from Pti through Polypeptide_regular to Polypeptide.} *)

let pti = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Pti;;

(** {9 Upgrading from Sac through Polypeptide_regular to Polypeptide.} *)

let sac = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Sac;;

(** {9 Upgrading from Tab through Polypeptide_regular to Polypeptide.} *)

let tab = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Tab;;

(** {9 Upgrading from Try through Polypeptide_regular to Polypeptide.} *)

let tr_ = polypeptide_symbol_of_polypeptide_regular_symbol Plrs_t.Try;;

(** {9 Upgrading from String through Polypeptide_regular to Polypeptide.} *)

let polypeptide_symbol_of_polypeptide_regular_string s =
  let smb_plr = Plrs_v.polypeptide_regular_symbol_of_polypeptide_regular_string s in
  polypeptide_symbol_of_polypeptide_regular_symbol smb_plr
;;

(** {6 Upgrading from Polyproline to Polypeptide.} *)

let polypeptide_symbol_of_polyproline_symbol smb_ppr =
  Pls_t.Polyproline_symbol smb_ppr
;;

(** {9 Upgrading from Doublet_string_ordinal through Polyproline to Polypeptide.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Polyglycine to Polypeptide.} *)

let polypeptide_symbol_of_polyglycine_symbol smb_pgl =
  Pls_t.Polyglycine_symbol smb_pgl
;;

(** {9 Upgrading from Doublet_string_ordinal through Polyglycine to Polypeptide.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_ml.sh polypeptide 12 January 2011. *)


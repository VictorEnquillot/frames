(** {3 A Symbol for a Polypeptide_sidegroup.} *)

let nam_mod = "Polypeptide_sidegroup_symbol_v";;

(** {6 Modules.} *)

module Pss_t = Polypeptide_sidegroup_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pss_t.Benzyl -> Format.sprintf "%s" "Benzyl"
  | Pss_t.DiEtheneAmine -> Format.sprintf "%s" "DiEtheneAmine"
  | Pss_t.DiMetheneSMethyl -> Format.sprintf "%s" "DiMetheneSMethyl"
  | Pss_t.MethineDiMethyl -> Format.sprintf "%s" "MethineDiMethyl"
  | Pss_t.EtheneAcid -> Format.sprintf "%s" "EtheneAcid"
  | Pss_t.EtheneAmide -> Format.sprintf "%s" "EtheneAmide"
  | Pss_t.MetheneAcid -> Format.sprintf "%s" "MetheneAcid"
  | Pss_t.MetheneAmide -> Format.sprintf "%s" "MetheneAmide"
  | Pss_t.MetheneImidazole -> Format.sprintf "%s" "MetheneImidazole"
  | Pss_t.MetheneMethineDiMethyl -> Format.sprintf "%s" "MetheneMethineDiMethyl"
  | Pss_t.MethenePhenol -> Format.sprintf "%s" "MethenePhenol"
  | Pss_t.MetheneThiol -> Format.sprintf "%s" "MetheneThiol"
  | Pss_t.MetheneIndole -> Format.sprintf "%s" "MetheneIndole"
  | Pss_t.Methenol -> Format.sprintf "%s" "Methenol"
  | Pss_t.MethineEthylMethyl -> Format.sprintf "%s" "MethineEthylMethyl"
  | Pss_t.MethinolMethyl -> Format.sprintf "%s" "MethinolMethyl"
  | Pss_t.Methyl -> Format.sprintf "%s" "Methyl"
  | Pss_t.TriMetheneGuanidinium -> Format.sprintf "%s" "TriMetheneGuanidinium"
;;

let print ppf = function
  | Pss_t.Benzyl -> Format.fprintf ppf "%s" "Benzyl"
  | Pss_t.DiEtheneAmine -> Format.fprintf ppf "%s" "DiEtheneAmine"
  | Pss_t.DiMetheneSMethyl -> Format.fprintf ppf "%s" "DiMetheneSMethyl"
  | Pss_t.MethineDiMethyl -> Format.fprintf ppf "%s" "MethineDiMethyl"
  | Pss_t.EtheneAcid -> Format.fprintf ppf "%s" "EtheneAcid"
  | Pss_t.EtheneAmide -> Format.fprintf ppf "%s" "EtheneAmide"
  | Pss_t.MetheneAcid -> Format.fprintf ppf "%s" "MetheneAcid"
  | Pss_t.MetheneAmide -> Format.fprintf ppf "%s" "MetheneAmide"
  | Pss_t.MetheneImidazole -> Format.fprintf ppf "%s" "MetheneImidazole"
  | Pss_t.MetheneMethineDiMethyl -> Format.fprintf ppf "%s" "MetheneMethineDiMethyl"
  | Pss_t.MethenePhenol -> Format.fprintf ppf "%s" "MethenePhenol"
  | Pss_t.MetheneThiol -> Format.fprintf ppf "%s" "MetheneThiol"
  | Pss_t.MetheneIndole -> Format.fprintf ppf "%s" "MetheneIndole"
  | Pss_t.Methenol -> Format.fprintf ppf "%s" "Methenol"
  | Pss_t.MethineEthylMethyl -> Format.fprintf ppf "%s" "MethineEthylMethyl"
  | Pss_t.MethinolMethyl -> Format.fprintf ppf "%s" "MethinolMethyl"
  | Pss_t.Methyl -> Format.fprintf ppf "%s" "Methyl"
  | Pss_t.TriMetheneGuanidinium -> Format.fprintf ppf "%s" "TriMetheneGuanidinium"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found polypeptide_sidegroup_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Benzyl from Polypeptide_sidegroup.} *)

(* No Extraction from Benzyl 0. *)

(** {6 Extracting DiEtheneAmine from Polypeptide_sidegroup.} *)

(* No Extraction from DiEtheneAmine 0. *)

(** {6 Extracting DiMetheneSMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from DiMetheneSMethyl 0. *)

(** {6 Extracting MethineDiMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from MethineDiMethyl 0. *)

(** {6 Extracting EtheneAcid from Polypeptide_sidegroup.} *)

(* No Extraction from EtheneAcid 0. *)

(** {6 Extracting EtheneAmide from Polypeptide_sidegroup.} *)

(* No Extraction from EtheneAmide 0. *)

(** {6 Extracting MetheneAcid from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneAcid 0. *)

(** {6 Extracting MetheneAmide from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneAmide 0. *)

(** {6 Extracting MetheneImidazole from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneImidazole 0. *)

(** {6 Extracting MetheneMethineDiMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneMethineDiMethyl 0. *)

(** {6 Extracting MethenePhenol from Polypeptide_sidegroup.} *)

(* No Extraction from MethenePhenol 0. *)

(** {6 Extracting MetheneThiol from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneThiol 0. *)

(** {6 Extracting MetheneIndole from Polypeptide_sidegroup.} *)

(* No Extraction from MetheneIndole 0. *)

(** {6 Extracting Methenol from Polypeptide_sidegroup.} *)

(* No Extraction from Methenol 0. *)

(** {6 Extracting MethineEthylMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from MethineEthylMethyl 0. *)

(** {6 Extracting MethinolMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from MethinolMethyl 0. *)

(** {6 Extracting Methyl from Polypeptide_sidegroup.} *)

(* No Extraction from Methyl 0. *)

(** {6 Extracting TriMetheneGuanidinium from Polypeptide_sidegroup.} *)

(* No Extraction from TriMetheneGuanidinium 0. *)

(** {6 Querying.} *)

(** {6 Querying Benzyl in Polypeptide_sidegroup.} *)

(* No Query from Benzyl 0. *)

(** {6 Querying DiEtheneAmine in Polypeptide_sidegroup.} *)

(* No Query from DiEtheneAmine 0. *)

(** {6 Querying DiMetheneSMethyl in Polypeptide_sidegroup.} *)

(* No Query from DiMetheneSMethyl 0. *)

(** {6 Querying MethineDiMethyl in Polypeptide_sidegroup.} *)

(* No Query from MethineDiMethyl 0. *)

(** {6 Querying EtheneAcid in Polypeptide_sidegroup.} *)

(* No Query from EtheneAcid 0. *)

(** {6 Querying EtheneAmide in Polypeptide_sidegroup.} *)

(* No Query from EtheneAmide 0. *)

(** {6 Querying MetheneAcid in Polypeptide_sidegroup.} *)

(* No Query from MetheneAcid 0. *)

(** {6 Querying MetheneAmide in Polypeptide_sidegroup.} *)

(* No Query from MetheneAmide 0. *)

(** {6 Querying MetheneImidazole in Polypeptide_sidegroup.} *)

(* No Query from MetheneImidazole 0. *)

(** {6 Querying MetheneMethineDiMethyl in Polypeptide_sidegroup.} *)

(* No Query from MetheneMethineDiMethyl 0. *)

(** {6 Querying MethenePhenol in Polypeptide_sidegroup.} *)

(* No Query from MethenePhenol 0. *)

(** {6 Querying MetheneThiol in Polypeptide_sidegroup.} *)

(* No Query from MetheneThiol 0. *)

(** {6 Querying MetheneIndole in Polypeptide_sidegroup.} *)

(* No Query from MetheneIndole 0. *)

(** {6 Querying Methenol in Polypeptide_sidegroup.} *)

(* No Query from Methenol 0. *)

(** {6 Querying MethineEthylMethyl in Polypeptide_sidegroup.} *)

(* No Query from MethineEthylMethyl 0. *)

(** {6 Querying MethinolMethyl in Polypeptide_sidegroup.} *)

(* No Query from MethinolMethyl 0. *)

(** {6 Querying Methyl in Polypeptide_sidegroup.} *)

(* No Query from Methyl 0. *)

(** {6 Querying TriMetheneGuanidinium in Polypeptide_sidegroup.} *)

(* No Query from TriMetheneGuanidinium 0. *)

(** {6 Upgrading from Benzyl to Polypeptide_sidegroup.} *)

let benzyl = Pss_t.Benzyl;;

(** {6 Upgrading from DiEtheneAmine to Polypeptide_sidegroup.} *)

let dietheneamine = Pss_t.DiEtheneAmine;;

(** {6 Upgrading from DiMetheneSMethyl to Polypeptide_sidegroup.} *)

let dimethenesmethyl = Pss_t.DiMetheneSMethyl;;

(** {6 Upgrading from MethineDiMethyl to Polypeptide_sidegroup.} *)

let methinedimethyl = Pss_t.MethineDiMethyl;;

(** {6 Upgrading from EtheneAcid to Polypeptide_sidegroup.} *)

let etheneacid = Pss_t.EtheneAcid;;

(** {6 Upgrading from EtheneAmide to Polypeptide_sidegroup.} *)

let etheneamide = Pss_t.EtheneAmide;;

(** {6 Upgrading from MetheneAcid to Polypeptide_sidegroup.} *)

let metheneacid = Pss_t.MetheneAcid;;

(** {6 Upgrading from MetheneAmide to Polypeptide_sidegroup.} *)

let metheneamide = Pss_t.MetheneAmide;;

(** {6 Upgrading from MetheneImidazole to Polypeptide_sidegroup.} *)

let metheneimidazole = Pss_t.MetheneImidazole;;

(** {6 Upgrading from MetheneMethineDiMethyl to Polypeptide_sidegroup.} *)

let methenemethinedimethyl = Pss_t.MetheneMethineDiMethyl;;

(** {6 Upgrading from MethenePhenol to Polypeptide_sidegroup.} *)

let methenephenol = Pss_t.MethenePhenol;;

(** {6 Upgrading from MetheneThiol to Polypeptide_sidegroup.} *)

let methenethiol = Pss_t.MetheneThiol;;

(** {6 Upgrading from MetheneIndole to Polypeptide_sidegroup.} *)

let metheneindole = Pss_t.MetheneIndole;;

(** {6 Upgrading from Methenol to Polypeptide_sidegroup.} *)

let methenol = Pss_t.Methenol;;

(** {6 Upgrading from MethineEthylMethyl to Polypeptide_sidegroup.} *)

let methineethylmethyl = Pss_t.MethineEthylMethyl;;

(** {6 Upgrading from MethinolMethyl to Polypeptide_sidegroup.} *)

let methinolmethyl = Pss_t.MethinolMethyl;;

(** {6 Upgrading from Methyl to Polypeptide_sidegroup.} *)

let methyl = Pss_t.Methyl;;

(** {6 Upgrading from TriMetheneGuanidinium to Polypeptide_sidegroup.} *)

let trimetheneguanidinium = Pss_t.TriMetheneGuanidinium;;

(** created by ./do_entitysum_symbol_v_ml.sh polypeptide_sidegroup 12 January 2011. *)


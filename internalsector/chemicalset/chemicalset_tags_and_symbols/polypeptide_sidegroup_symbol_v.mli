(** {3 A Symbol for a Polypeptide_sidegroup.} *)

(** {6 Displaying.} *)

val name :
  Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol ->
    string
;;

val print : Format.formatter ->
  Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Benzyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet Benzyl. *)

(** {6 Extracting DiEtheneAmine from Polypeptide_sidegroup.} *)

(* No Extraction from doublet DiEtheneAmine. *)

(** {6 Extracting DiMetheneSMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet DiMetheneSMethyl. *)

(** {6 Extracting MethineDiMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MethineDiMethyl. *)

(** {6 Extracting EtheneAcid from Polypeptide_sidegroup.} *)

(* No Extraction from doublet EtheneAcid. *)

(** {6 Extracting EtheneAmide from Polypeptide_sidegroup.} *)

(* No Extraction from doublet EtheneAmide. *)

(** {6 Extracting MetheneAcid from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneAcid. *)

(** {6 Extracting MetheneAmide from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneAmide. *)

(** {6 Extracting MetheneImidazole from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneImidazole. *)

(** {6 Extracting MetheneMethineDiMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneMethineDiMethyl. *)

(** {6 Extracting MethenePhenol from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MethenePhenol. *)

(** {6 Extracting MetheneThiol from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneThiol. *)

(** {6 Extracting MetheneIndole from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MetheneIndole. *)

(** {6 Extracting Methenol from Polypeptide_sidegroup.} *)

(* No Extraction from doublet Methenol. *)

(** {6 Extracting MethineEthylMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MethineEthylMethyl. *)

(** {6 Extracting MethinolMethyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet MethinolMethyl. *)

(** {6 Extracting Methyl from Polypeptide_sidegroup.} *)

(* No Extraction from doublet Methyl. *)

(** {6 Extracting TriMetheneGuanidinium from Polypeptide_sidegroup.} *)

(* No Extraction from doublet TriMetheneGuanidinium. *)

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

val benzyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from DiEtheneAmine to Polypeptide_sidegroup.} *)

val dietheneamine : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from DiMetheneSMethyl to Polypeptide_sidegroup.} *)

val dimethenesmethyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MethineDiMethyl to Polypeptide_sidegroup.} *)

val methinedimethyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from EtheneAcid to Polypeptide_sidegroup.} *)

val etheneacid : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from EtheneAmide to Polypeptide_sidegroup.} *)

val etheneamide : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneAcid to Polypeptide_sidegroup.} *)

val metheneacid : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneAmide to Polypeptide_sidegroup.} *)

val metheneamide : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneImidazole to Polypeptide_sidegroup.} *)

val metheneimidazole : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneMethineDiMethyl to Polypeptide_sidegroup.} *)

val methenemethinedimethyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MethenePhenol to Polypeptide_sidegroup.} *)

val methenephenol : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneThiol to Polypeptide_sidegroup.} *)

val methenethiol : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MetheneIndole to Polypeptide_sidegroup.} *)

val metheneindole : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from Methenol to Polypeptide_sidegroup.} *)

val methenol : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MethineEthylMethyl to Polypeptide_sidegroup.} *)

val methineethylmethyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from MethinolMethyl to Polypeptide_sidegroup.} *)

val methinolmethyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from Methyl to Polypeptide_sidegroup.} *)

val methyl : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** {6 Upgrading from TriMetheneGuanidinium to Polypeptide_sidegroup.} *)

val trimetheneguanidinium : Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh polypeptide_sidegroup 12 January 2011. *)


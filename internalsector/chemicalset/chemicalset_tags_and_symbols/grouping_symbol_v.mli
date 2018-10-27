(** {3 A Symbol for a Grouping.} *)

(** {6 Displaying.} *)

val name :
  Grouping_symbol_t.grouping_symbol ->
    string
;;

val print : Format.formatter ->
  Grouping_symbol_t.grouping_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Empty from Grouping.} *)

(* No Extraction from doublet empty. *)

(** {6 Extracting Fragment_leaf from Grouping.} *)

val fragment_leaf_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Fragment_leaf_symbol_t.fragment_leaf_symbol
;;

(** {9 Extracting Fragment_halfbridgetail from Fragment_leaf from Grouping.} *)

(* No Extraction from doublet fragment_halfbridgetail. *)

(** {9 Extracting Fragment_halfbridge from Fragment_leaf from Grouping.} *)

(* No Extraction from doublet fragment_halfbridge. *)

(** {9 Extracting Block_zerofork from Fragment_leaf from Grouping.} *)

val block_zerofork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_leaf from Grouping.} *)

val block_zerobifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_leaf from Grouping.} *)

val block_zerotrifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_leaf from Grouping.} *)

val block_zeroquadrifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {9 Extracting Fragment_zerofork from Fragment_leaf from Grouping.} *)

(* No Extraction from doublet fragment_zerofork. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Grouping.} *)

(* No Extraction from doublet segment_head_extends_fragment_buried. *)

(** {6 Extracting Grouping_polyfragment from Grouping.} *)

val grouping_polyfragment_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Grouping_polyfragment_symbol_t.grouping_polyfragment_symbol
;;

(** {9 Extracting DiMethineTriMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet DiMethineTriMethyl. *)

(** {9 Extracting Ethcaracidmethyllamine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Ethcaracidmethyllamine. *)

(** {9 Extracting Ethcaracidmethylramine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Ethcaracidmethylramine. *)

(** {9 Extracting Ethineacidlamine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Ethineacidlamine. *)

(** {9 Extracting Ethineacidramine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Ethineacidramine. *)

(** {9 Extracting Guanidine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Guanidine. *)

(** {9 Extracting Guanidinium from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet Guanidinium. *)

(** {9 Extracting MetheneMethineDiMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet MetheneMethineDiMethyl. *)

(** {9 Extracting MethineDiMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet MethineDiMethyl. *)

(** {9 Extracting MethineEthylMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet MethineEthylMethyl. *)

(** {9 Extracting MethinolMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet MethinolMethyl. *)

(** {9 Extracting TriMetheneGuanidinium from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet TriMetheneGuanidinium. *)

(** {9 Extracting TriMethineTetraMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from doublet TriMethineTetraMethyl. *)

(** {6 Extracting Grouping_bridged from Grouping.} *)

val grouping_bridged_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Grouping_bridged_symbol_t.grouping_bridged_symbol
;;

(** {9 Extracting Benzale from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Benzale. *)

(** {9 Extracting Benzole from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Benzole. *)

(** {9 Extracting Benzyl from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Benzyl. *)

(** {9 Extracting Indole from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Indole. *)

(** {9 Extracting Metheneimidazole from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Metheneimidazole. *)

(** {9 Extracting MetheneIndole from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet MetheneIndole. *)

(** {9 Extracting Dimethonecarbonhydroxyldimethone from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Dimethonecarbonhydroxyldimethone. *)

(** {9 Extracting Dimethone from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Dimethone. *)

(** {9 Extracting Phenol from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Phenol. *)

(** {9 Extracting Pyrrole from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Pyrrole. *)

(** {9 Extracting Methenephenol from Grouping_bridged from Grouping.} *)

(* No Extraction from doublet Methenephenol. *)

(** {6 Querying.} *)

(** {6 Querying Empty in Grouping.} *)

(* No Query from empty 0. *)

(** {6 Querying Fragment_leaf in Grouping.} *)

val is_fragment_leaf_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {9 Querying Fragment_halfbridgetail in Fragment_leaf in Grouping.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {9 Querying Fragment_halfbridge in Fragment_leaf in Grouping.} *)

(* No Query from fragment_halfbridge 0. *)

(** {9 Querying Block_zerofork in Fragment_leaf in Grouping.} *)

val is_block_zerofork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_leaf in Grouping.} *)

val is_block_zerobifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_leaf in Grouping.} *)

val is_block_zerotrifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_leaf in Grouping.} *)

val is_block_zeroquadrifork_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {9 Querying Fragment_zerofork in Fragment_leaf in Grouping.} *)

(* No Query from fragment_zerofork 0. *)

(** {9 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Grouping.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Querying Grouping_polyfragment in Grouping.} *)

val is_grouping_polyfragment_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {9 Querying DiMethineTriMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from DiMethineTriMethyl 0. *)

(** {9 Querying Ethcaracidmethyllamine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethcaracidmethyllamine 0. *)

(** {9 Querying Ethcaracidmethylramine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethcaracidmethylramine 0. *)

(** {9 Querying Ethineacidlamine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethineacidlamine 0. *)

(** {9 Querying Ethineacidramine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethineacidramine 0. *)

(** {9 Querying Guanidine in Grouping_polyfragment in Grouping.} *)

(* No Query from Guanidine 0. *)

(** {9 Querying Guanidinium in Grouping_polyfragment in Grouping.} *)

(* No Query from Guanidinium 0. *)

(** {9 Querying MetheneMethineDiMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MetheneMethineDiMethyl 0. *)

(** {9 Querying MethineDiMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethineDiMethyl 0. *)

(** {9 Querying MethineEthylMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethineEthylMethyl 0. *)

(** {9 Querying MethinolMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethinolMethyl 0. *)

(** {9 Querying TriMetheneGuanidinium in Grouping_polyfragment in Grouping.} *)

(* No Query from TriMetheneGuanidinium 0. *)

(** {9 Querying TriMethineTetraMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from TriMethineTetraMethyl 0. *)

(** {6 Querying Grouping_bridged in Grouping.} *)

val is_grouping_bridged_symbol_off_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
  bool
;;

(** {9 Querying Benzale in Grouping_bridged in Grouping.} *)

(* No Query from Benzale 0. *)

(** {9 Querying Benzole in Grouping_bridged in Grouping.} *)

(* No Query from Benzole 0. *)

(** {9 Querying Benzyl in Grouping_bridged in Grouping.} *)

(* No Query from Benzyl 0. *)

(** {9 Querying Indole in Grouping_bridged in Grouping.} *)

(* No Query from Indole 0. *)

(** {9 Querying Metheneimidazole in Grouping_bridged in Grouping.} *)

(* No Query from Metheneimidazole 0. *)

(** {9 Querying MetheneIndole in Grouping_bridged in Grouping.} *)

(* No Query from MetheneIndole 0. *)

(** {9 Querying Dimethonecarbonhydroxyldimethone in Grouping_bridged in Grouping.} *)

(* No Query from Dimethonecarbonhydroxyldimethone 0. *)

(** {9 Querying Dimethone in Grouping_bridged in Grouping.} *)

(* No Query from Dimethone 0. *)

(** {9 Querying Phenol in Grouping_bridged in Grouping.} *)

(* No Query from Phenol 0. *)

(** {9 Querying Pyrrole in Grouping_bridged in Grouping.} *)

(* No Query from Pyrrole 0. *)

(** {9 Querying Methenephenol in Grouping_bridged in Grouping.} *)

(* No Query from Methenephenol 0. *)

(** {6 Upgrading from Empty to Grouping.} *)

val empty : Grouping_symbol_t.grouping_symbol;;

(** {6 Upgrading from Fragment_leaf to Grouping.} *)

val grouping_symbol_of_fragment_leaf_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {9 Upgrading from Fragment_halfbridgetail through Fragment_leaf to Grouping.} *)

val fragment_halfbridgetail : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Fragment_halfbridge through Fragment_leaf to Grouping.} *)

val fragment_halfbridge : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Block_zerofork through Fragment_leaf to Grouping.} *)

val grouping_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_leaf to Grouping.} *)

val grouping_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_leaf to Grouping.} *)

val grouping_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_leaf to Grouping.} *)

val grouping_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_leaf to Grouping.} *)

val fragment_zerofork : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf to Grouping.} *)

val segment_head_extends_fragment_buried : Grouping_symbol_t.grouping_symbol;;

(** {6 Upgrading from Grouping_polyfragment to Grouping.} *)

val grouping_symbol_of_grouping_polyfragment_symbol :
  Grouping_polyfragment_symbol_t.grouping_polyfragment_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {9 Upgrading from DiMethineTriMethyl through Grouping_polyfragment to Grouping.} *)

val dimethinetrimethyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Ethcaracidmethyllamine through Grouping_polyfragment to Grouping.} *)

val ethcaracidmethyllamine : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Ethcaracidmethylramine through Grouping_polyfragment to Grouping.} *)

val ethcaracidmethylramine : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Ethineacidlamine through Grouping_polyfragment to Grouping.} *)

val ethineacidlamine : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Ethineacidramine through Grouping_polyfragment to Grouping.} *)

val ethineacidramine : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Guanidine through Grouping_polyfragment to Grouping.} *)

val guanidine : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Guanidinium through Grouping_polyfragment to Grouping.} *)

val guanidinium : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from MetheneMethineDiMethyl through Grouping_polyfragment to Grouping.} *)

val methenemethinedimethyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from MethineDiMethyl through Grouping_polyfragment to Grouping.} *)

val methinedimethyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from MethineEthylMethyl through Grouping_polyfragment to Grouping.} *)

val methineethylmethyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from MethinolMethyl through Grouping_polyfragment to Grouping.} *)

val methinolmethyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from TriMetheneGuanidinium through Grouping_polyfragment to Grouping.} *)

val trimetheneguanidinium : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from TriMethineTetraMethyl through Grouping_polyfragment to Grouping.} *)

val trimethinetetramethyl : Grouping_symbol_t.grouping_symbol;;

(** {6 Upgrading from Grouping_bridged to Grouping.} *)

val grouping_symbol_of_grouping_bridged_symbol :
  Grouping_bridged_symbol_t.grouping_bridged_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {9 Upgrading from Benzale through Grouping_bridged to Grouping.} *)

val benzale : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Benzole through Grouping_bridged to Grouping.} *)

val benzole : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Benzyl through Grouping_bridged to Grouping.} *)

val benzyl : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Indole through Grouping_bridged to Grouping.} *)

val indole : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Metheneimidazole through Grouping_bridged to Grouping.} *)

val metheneimidazole : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from MetheneIndole through Grouping_bridged to Grouping.} *)

val metheneindole : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Dimethonecarbonhydroxyldimethone through Grouping_bridged to Grouping.} *)

val dimethonecarbonhydroxyldimethone : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Dimethone through Grouping_bridged to Grouping.} *)

val dimethone : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Phenol through Grouping_bridged to Grouping.} *)

val phenol : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Pyrrole through Grouping_bridged to Grouping.} *)

val pyrrole : Grouping_symbol_t.grouping_symbol;;

(** {9 Upgrading from Methenephenol through Grouping_bridged to Grouping.} *)

val methenephenol : Grouping_symbol_t.grouping_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh grouping 12 January 2011. *)


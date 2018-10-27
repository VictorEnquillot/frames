(** {3 A Symbol for a Grouping.} *)


let name :
  Grouping_symbol_t.grouping_symbol ->
    string
;;


val print : Format.Formatter ->
  Grouping_symbol_t.grouping_symbol ->
    unit
;;


(** {6 Extracting.} *)

val grouping_symbol_off_empty :
  Grouping_symbol_t.grouping_symbol ->
    _v
;;

val grouping_symbol_off_fragment_leaf_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Fls_v
;;

val grouping_symbol_off_block_zerofork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    B0s_v
;;

val grouping_symbol_off_block_zerobifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    B0bs_v
;;

val grouping_symbol_off_block_zerotrifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    B0ts_v
;;

val grouping_symbol_off_block_zeroquadrifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    B0qs_v
;;

val grouping_symbol_off_grouping_polyfragment_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Gps_v
;;

val grouping_symbol_off_grouping_bridged_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Gbs_v
;;


(** {6 Querying.} *)

val is_grouping_symbol_off_empty :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_fragment_leaf_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_block_zerofork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_block_zerobifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_block_zerotrifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_block_zeroquadrifork_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_grouping_polyfragment_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;

val is_grouping_symbol_off_grouping_bridged_symbol :
  Grouping_symbol_t.grouping_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val grouping_symbol_of_empty :
  Empty_t.empty ->
    Grs_v
;;

val grouping_symbol_of_fragment_leaf_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    Grs_v
;;

val fragment_halfbridgetail : Grouping_symbol_t.grouping_symbol;;

val fragment_halfbridge : Grouping_symbol_t.grouping_symbol;;

val grouping_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Grs_v
;;

val grouping_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Grs_v
;;

val ch_zsc : Grouping_symbol_t.grouping_symbol;;

val ch_zsd : Grouping_symbol_t.grouping_symbol;;

val nh_zs2 : Grouping_symbol_t.grouping_symbol;;

val grouping_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Grs_v
;;

val ch_s3 : Grouping_symbol_t.grouping_symbol;;

val n_s3 : Grouping_symbol_t.grouping_symbol;;

val grouping_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Grs_v
;;

val c_q : Grouping_symbol_t.grouping_symbol;;

val n_q_1p : Grouping_symbol_t.grouping_symbol;;

val fragment_zerofork : Grouping_symbol_t.grouping_symbol;;

val segment_head_extends_fragment_buried : Grouping_symbol_t.grouping_symbol;;

val grouping_symbol_of_grouping_polyfragment_symbol :
  Grouping_polyfragment_symbol_t.grouping_polyfragment_symbol ->
    Grs_v
;;

val DiMethineTriMethyl : Grouping_symbol_t.grouping_symbol;;

val Ethcaracidmethyllamine : Grouping_symbol_t.grouping_symbol;;

val Ethcaracidmethylramine : Grouping_symbol_t.grouping_symbol;;

val Ethineacidlamine : Grouping_symbol_t.grouping_symbol;;

val Ethineacidramine : Grouping_symbol_t.grouping_symbol;;

val Guanidine : Grouping_symbol_t.grouping_symbol;;

val Guanidinium : Grouping_symbol_t.grouping_symbol;;

val MetheneMethineDiMethyl : Grouping_symbol_t.grouping_symbol;;

val MethineDiMethyl : Grouping_symbol_t.grouping_symbol;;

val MethineEthylMethyl : Grouping_symbol_t.grouping_symbol;;

val MethinolMethyl : Grouping_symbol_t.grouping_symbol;;

val TriMetheneGuanidinium : Grouping_symbol_t.grouping_symbol;;

val TriMethineTetraMethyl : Grouping_symbol_t.grouping_symbol;;

val grouping_symbol_of_grouping_bridged_symbol :
  Grouping_bridged_symbol_t.grouping_bridged_symbol ->
    Grs_v
;;

val Benzale : Grouping_symbol_t.grouping_symbol;;

val Benzole : Grouping_symbol_t.grouping_symbol;;

val Benzyl : Grouping_symbol_t.grouping_symbol;;

val Indole : Grouping_symbol_t.grouping_symbol;;

val Metheneimidazole : Grouping_symbol_t.grouping_symbol;;

val MetheneIndole : Grouping_symbol_t.grouping_symbol;;

val Dimethonecarbonhydroxyldimethone : Grouping_symbol_t.grouping_symbol;;

val Dimethone : Grouping_symbol_t.grouping_symbol;;

val Phenol : Grouping_symbol_t.grouping_symbol;;

val Pyrrole : Grouping_symbol_t.grouping_symbol;;

val Methenephenol : Grouping_symbol_t.grouping_symbol;;



(** created by ./generator grouping v symbol at 9:28 26 Apr 2011. *)




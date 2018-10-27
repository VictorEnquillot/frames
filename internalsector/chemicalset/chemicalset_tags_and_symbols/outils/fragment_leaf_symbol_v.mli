(** {3 A Symbol for a Fragment_leaf.} *)


let name :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    string
;;


val print : Format.Formatter ->
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    unit
;;


(** {6 Extracting.} *)

val fragment_leaf_symbol_off_block_zerofork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    B0s_v
;;

val fragment_leaf_symbol_off_block_zerobifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    B0bs_v
;;

val fragment_leaf_symbol_off_block_zerotrifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    B0ts_v
;;

val fragment_leaf_symbol_off_block_zeroquadrifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    B0qs_v
;;


(** {6 Querying.} *)

val is_fragment_leaf_symbol_off_block_zerofork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    bool
;;

val is_fragment_leaf_symbol_off_block_zerobifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    bool
;;

val is_fragment_leaf_symbol_off_block_zerotrifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    bool
;;

val is_fragment_leaf_symbol_off_block_zeroquadrifork_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val fragment_halfbridgetail : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val fragment_halfbridge : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val fragment_leaf_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Fls_v
;;

val fragment_leaf_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Fls_v
;;

val ch_zsc : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val ch_zsd : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val nh_zs2 : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val fragment_leaf_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Fls_v
;;

val ch_s3 : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val n_s3 : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val fragment_leaf_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Fls_v
;;

val c_q : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val n_q_1p : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val fragment_zerofork : Fragment_leaf_symbol_t.fragment_leaf_symbol;;

val segment_head_extends_fragment_buried : Fragment_leaf_symbol_t.fragment_leaf_symbol;;



(** created by ./generator fragment_leaf v symbol at 9:28 26 Apr 2011. *)




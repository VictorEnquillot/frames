(** {3 A Symbol for a Fragment_head.} *)


let name :
  Fragment_head_symbol_t.fragment_head_symbol ->
    string
;;


val print : Format.Formatter ->
  Fragment_head_symbol_t.fragment_head_symbol ->
    unit
;;


(** {6 Extracting.} *)

val fragment_head_symbol_off_block_zerofork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    B0s_v
;;

val fragment_head_symbol_off_block_zerobifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    B0bs_v
;;

val fragment_head_symbol_off_block_zerotrifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    B0ts_v
;;

val fragment_head_symbol_off_block_zeroquadrifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    B0qs_v
;;


(** {6 Querying.} *)

val is_fragment_head_symbol_off_block_zerofork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    bool
;;

val is_fragment_head_symbol_off_block_zerobifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    bool
;;

val is_fragment_head_symbol_off_block_zerotrifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    bool
;;

val is_fragment_head_symbol_off_block_zeroquadrifork_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val fragment_head_halfbridge : Fragment_head_symbol_t.fragment_head_symbol;;

val fragment_head_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Fhs_v
;;

val fragment_head_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Fhs_v
;;

val ch_zsc : Fragment_head_symbol_t.fragment_head_symbol;;

val ch_zsd : Fragment_head_symbol_t.fragment_head_symbol;;

val nh_zs2 : Fragment_head_symbol_t.fragment_head_symbol;;

val fragment_head_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Fhs_v
;;

val ch_s3 : Fragment_head_symbol_t.fragment_head_symbol;;

val n_s3 : Fragment_head_symbol_t.fragment_head_symbol;;

val fragment_head_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Fhs_v
;;

val c_q : Fragment_head_symbol_t.fragment_head_symbol;;

val n_q_1p : Fragment_head_symbol_t.fragment_head_symbol;;

val fragment_zerofork : Fragment_head_symbol_t.fragment_head_symbol;;

val segment_head_extends_fragment_buried : Fragment_head_symbol_t.fragment_head_symbol;;



(** created by ./generator fragment_head v symbol at 9:28 26 Apr 2011. *)




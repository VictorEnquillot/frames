(** {3 A Symbol for a Fragment_head.} *)

(** {6 Displaying.} *)

val name :
  Fragment_head_symbol_t.fragment_head_symbol ->
    string
;;

val print : Format.formatter ->
  Fragment_head_symbol_t.fragment_head_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fragment_head_halfbridge from Fragment_head.} *)

(* No Extraction from doublet fragment_head_halfbridge. *)

(** {6 Extracting Block_zerofork from Fragment_head.} *)

val block_zerofork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {9 Extracting Block_zerobifork from Block_zerofork from Fragment_head.} *)

val block_zerobifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Ch_zsc from Block_zerobifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from ch_zsc 0. *)

(** {12 Extracting Ch_zsd from Block_zerobifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from ch_zsd 0. *)

(** {12 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from nh_zs2 0. *)

(** {9 Extracting Block_zerotrifork from Block_zerofork from Fragment_head.} *)

val block_zerotrifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from ch_s3 0. *)

(** {12 Extracting N_s3 from Block_zerotrifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from n_s3 0. *)

(** {9 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_head.} *)

val block_zeroquadrifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {12 Extracting C_q from Block_zeroquadrifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from c_q 0. *)

(** {12 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork from Fragment_head.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Extracting Fragment_zerofork from Fragment_head.} *)

(* No Extraction from doublet fragment_zerofork. *)

(** {6 Extracting Segment_head_extends_fragment_buried from Fragment_head.} *)

(* No Extraction from doublet segment_head_extends_fragment_buried. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_head_halfbridge in Fragment_head.} *)

(* No Query from fragment_head_halfbridge 0. *)

(** {6 Querying Block_zerofork in Fragment_head.} *)

val is_block_zerofork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
  bool
;;

(** {9 Querying Block_zerobifork in Block_zerofork in Fragment_head.} *)

val is_block_zerobifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
  bool
;;

(** {12 Querying Ch_zsc in Block_zerobifork in Block_zerofork in Fragment_head.} *)

(* No Query from ch_zsc 0. *)

(** {12 Querying Ch_zsd in Block_zerobifork in Block_zerofork in Fragment_head.} *)

(* No Query from ch_zsd 0. *)

(** {12 Querying Nh_zs2 in Block_zerobifork in Block_zerofork in Fragment_head.} *)

(* No Query from nh_zs2 0. *)

(** {9 Querying Block_zerotrifork in Block_zerofork in Fragment_head.} *)

val is_block_zerotrifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
  bool
;;

(** {12 Querying Ch_s3 in Block_zerotrifork in Block_zerofork in Fragment_head.} *)

(* No Query from ch_s3 0. *)

(** {12 Querying N_s3 in Block_zerotrifork in Block_zerofork in Fragment_head.} *)

(* No Query from n_s3 0. *)

(** {9 Querying Block_zeroquadrifork in Block_zerofork in Fragment_head.} *)

val is_block_zeroquadrifork_symbol_off_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
  bool
;;

(** {12 Querying C_q in Block_zeroquadrifork in Block_zerofork in Fragment_head.} *)

(* No Query from c_q 0. *)

(** {12 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork in Fragment_head.} *)

(* No Query from n_q_1p 0. *)

(** {6 Querying Fragment_zerofork in Fragment_head.} *)

(* No Query from fragment_zerofork 0. *)

(** {6 Querying Segment_head_extends_fragment_buried in Fragment_head.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Upgrading from Fragment_head_halfbridge to Fragment_head.} *)

val fragment_head_halfbridge : Fragment_head_symbol_t.fragment_head_symbol;;

(** {6 Upgrading from Block_zerofork to Fragment_head.} *)

val fragment_head_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {9 Upgrading from Block_zerobifork through Block_zerofork to Fragment_head.} *)

val fragment_head_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {12 Upgrading from Ch_zsc through Block_zerobifork through Block_zerofork to Fragment_head.} *)

val ch_zsc : Fragment_head_symbol_t.fragment_head_symbol;;
(** {12 Upgrading from Ch_zsd through Block_zerobifork through Block_zerofork to Fragment_head.} *)

val ch_zsd : Fragment_head_symbol_t.fragment_head_symbol;;
(** {12 Upgrading from Nh_zs2 through Block_zerobifork through Block_zerofork to Fragment_head.} *)

val nh_zs2 : Fragment_head_symbol_t.fragment_head_symbol;;
(** {9 Upgrading from Block_zerotrifork through Block_zerofork to Fragment_head.} *)

val fragment_head_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {12 Upgrading from Ch_s3 through Block_zerotrifork through Block_zerofork to Fragment_head.} *)

val ch_s3 : Fragment_head_symbol_t.fragment_head_symbol;;
(** {12 Upgrading from N_s3 through Block_zerotrifork through Block_zerofork to Fragment_head.} *)

val n_s3 : Fragment_head_symbol_t.fragment_head_symbol;;
(** {9 Upgrading from Block_zeroquadrifork through Block_zerofork to Fragment_head.} *)

val fragment_head_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {12 Upgrading from C_q through Block_zeroquadrifork through Block_zerofork to Fragment_head.} *)

val c_q : Fragment_head_symbol_t.fragment_head_symbol;;
(** {12 Upgrading from N_q_1p through Block_zeroquadrifork through Block_zerofork to Fragment_head.} *)

val n_q_1p : Fragment_head_symbol_t.fragment_head_symbol;;
(** {6 Upgrading from Fragment_zerofork to Fragment_head.} *)

val fragment_zerofork : Fragment_head_symbol_t.fragment_head_symbol;;

(** {6 Upgrading from Segment_head_extends_fragment_buried to Fragment_head.} *)

val segment_head_extends_fragment_buried : Fragment_head_symbol_t.fragment_head_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh fragment_head 12 January 2011. *)


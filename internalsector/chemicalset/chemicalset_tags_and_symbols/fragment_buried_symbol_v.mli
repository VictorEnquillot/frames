(** {3 A Symbol for a Fragment_buried.} *)

(** {6 Displaying.} *)

val name :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    string
;;

val print : Format.formatter ->
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fragment_onefork from Fragment_buried.} *)

(* No Extraction from doublet fragment_onefork. *)

(** {6 Extracting Block_onefork from Fragment_buried.} *)

val block_onefork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {9 Extracting Block_onebifork from Block_onefork from Fragment_buried.} *)

val block_onebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {12 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork from Fragment_buried.} *)

val block_onesinglebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol
;;

(** {12 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork from Fragment_buried.} *)

val block_onedoublebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol
;;

(** {9 Extracting Block_onetrifork from Block_onefork from Fragment_buried.} *)

val block_onetrifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {12 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork from Fragment_buried.} *)

val block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol
;;

(** {6 Extracting Polysegment_buried_leftextended from Fragment_buried.} *)

(* No Extraction from doublet polysegment_buried_leftextended. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_onefork in Fragment_buried.} *)

(* No Query from fragment_onefork 0. *)

(** {6 Querying Block_onefork in Fragment_buried.} *)

val is_block_onefork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {9 Querying Block_onebifork in Block_onefork in Fragment_buried.} *)

val is_block_onebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {12 Querying Block_onesinglebifork in Block_onebifork in Block_onefork in Fragment_buried.} *)

val is_block_onesinglebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {12 Querying Block_onedoublebifork in Block_onebifork in Block_onefork in Fragment_buried.} *)

val is_block_onedoublebifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {9 Querying Block_onetrifork in Block_onefork in Fragment_buried.} *)

val is_block_onetrifork_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {12 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork in Fragment_buried.} *)

val is_block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
  bool
;;

(** {6 Querying Polysegment_buried_leftextended in Fragment_buried.} *)

(* No Query from polysegment_buried_leftextended 0. *)

(** {6 Upgrading from Fragment_onefork to Fragment_buried.} *)

val fragment_onefork : Fragment_buried_symbol_t.fragment_buried_symbol;;

(** {6 Upgrading from Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {9 Upgrading from Block_onebifork through Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {12 Upgrading from Block_onesinglebifork through Block_onebifork through Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {12 Upgrading from Block_onedoublebifork through Block_onebifork through Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onedoublebifork_symbol :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {9 Upgrading from Block_onetrifork through Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {12 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork through Block_onefork to Fragment_buried.} *)

val fragment_buried_symbol_of_block_onesingletriforksinglesinglesingle_symbol :
  Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {6 Upgrading from Polysegment_buried_leftextended to Fragment_buried.} *)

val polysegment_buried_leftextended : Fragment_buried_symbol_t.fragment_buried_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh fragment_buried 12 January 2011. *)


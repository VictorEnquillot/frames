(** {3 A Symbol for a Block_oneend.} *)

(** {6 Displaying.} *)

val name :
  Block_oneend_symbol_t.block_oneend_symbol ->
    string
;;

val print : Format.formatter ->
  Block_oneend_symbol_t.block_oneend_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onefork from Block_oneend.} *)

val block_onefork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {9 Extracting Block_onebifork from Block_onefork from Block_oneend.} *)

val block_onebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {12 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork from Block_oneend.} *)

val block_onesinglebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol
;;

(** {12 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork from Block_oneend.} *)

val block_onedoublebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol
;;

(** {9 Extracting Block_onetrifork from Block_onefork from Block_oneend.} *)

val block_onetrifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {12 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork from Block_oneend.} *)

val block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol
;;

(** {6 Extracting Block_onezero from Block_oneend.} *)

val block_onezero_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Block_onezero_symbol_t.block_onezero_symbol
;;

(** {9 Extracting Onesinglezero from Block_onezero from Block_oneend.} *)

(* No Extraction from doublet onesinglezero. *)

(** {9 Extracting Oneconjugatedzero from Block_onezero from Block_oneend.} *)

(* No Extraction from doublet oneconjugatedzero. *)

(** {9 Extracting Onedoublelezero from Block_onezero from Block_oneend.} *)

(* No Extraction from doublet onedoublelezero. *)

(** {9 Extracting Onetriplezero from Block_onezero from Block_oneend.} *)

(* No Extraction from doublet onetriplezero. *)

(** {6 Querying.} *)

(** {6 Querying Block_onefork in Block_oneend.} *)

val is_block_onefork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {9 Querying Block_onebifork in Block_onefork in Block_oneend.} *)

val is_block_onebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {12 Querying Block_onesinglebifork in Block_onebifork in Block_onefork in Block_oneend.} *)

val is_block_onesinglebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {12 Querying Block_onedoublebifork in Block_onebifork in Block_onefork in Block_oneend.} *)

val is_block_onedoublebifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {9 Querying Block_onetrifork in Block_onefork in Block_oneend.} *)

val is_block_onetrifork_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {12 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork in Block_oneend.} *)

val is_block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {6 Querying Block_onezero in Block_oneend.} *)

val is_block_onezero_symbol_off_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
  bool
;;

(** {9 Querying Onesinglezero in Block_onezero in Block_oneend.} *)

(* No Query from onesinglezero 0. *)

(** {9 Querying Oneconjugatedzero in Block_onezero in Block_oneend.} *)

(* No Query from oneconjugatedzero 0. *)

(** {9 Querying Onedoublelezero in Block_onezero in Block_oneend.} *)

(* No Query from onedoublelezero 0. *)

(** {9 Querying Onetriplezero in Block_onezero in Block_oneend.} *)

(* No Query from onetriplezero 0. *)

(** {6 Upgrading from Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {9 Upgrading from Block_onebifork through Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {12 Upgrading from Block_onesinglebifork through Block_onebifork through Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {12 Upgrading from Block_onedoublebifork through Block_onebifork through Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onedoublebifork_symbol :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {9 Upgrading from Block_onetrifork through Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {12 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork through Block_onefork to Block_oneend.} *)

val block_oneend_symbol_of_block_onesingletriforksinglesinglesingle_symbol :
  Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {6 Upgrading from Block_onezero to Block_oneend.} *)

val block_oneend_symbol_of_block_onezero_symbol :
  Block_onezero_symbol_t.block_onezero_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {9 Upgrading from Onesinglezero through Block_onezero to Block_oneend.} *)

val onesinglezero : Block_oneend_symbol_t.block_oneend_symbol;;

(** {9 Upgrading from Oneconjugatedzero through Block_onezero to Block_oneend.} *)

val oneconjugatedzero : Block_oneend_symbol_t.block_oneend_symbol;;

(** {9 Upgrading from Onedoublelezero through Block_onezero to Block_oneend.} *)

val onedoublelezero : Block_oneend_symbol_t.block_oneend_symbol;;

(** {9 Upgrading from Onetriplezero through Block_onezero to Block_oneend.} *)

val onetriplezero : Block_oneend_symbol_t.block_oneend_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_oneend 12 January 2011. *)


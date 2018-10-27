(** {3 A Symbol for a Block_onefork.} *)

(** {6 Displaying.} *)

val name :
  Block_onefork_symbol_t.block_onefork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onefork_symbol_t.block_onefork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onebifork from Block_onefork.} *)

val block_onebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {9 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

val block_onesinglebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol
;;

(** {12 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

val block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol
;;

(** {12 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from block_onesinglebiforksinglesingleconjugated 0. *)

(** {9 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

val block_onedoublebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol
;;

(** {12 Extracting C_ds2 from Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from c_ds2 0. *)

(** {12 Extracting N_ds2_1p from Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from n_ds2_1p 0. *)

(** {6 Extracting Block_onetrifork from Block_onefork.} *)

val block_onetrifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {9 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

val block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol
;;

(** {12 Extracting C_ss3 from Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

(* No Extraction from c_ss3 0. *)

(** {12 Extracting N_ss3_1p from Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

(* No Extraction from n_ss3_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onebifork in Block_onefork.} *)

val is_block_onebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {9 Querying Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

val is_block_onesinglebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {12 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

val is_block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {12 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)

(** {9 Querying Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

val is_block_onedoublebifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {12 Querying C_ds2 in Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

(* No Query from c_ds2 0. *)

(** {12 Querying N_ds2_1p in Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

(* No Query from n_ds2_1p 0. *)

(** {6 Querying Block_onetrifork in Block_onefork.} *)

val is_block_onetrifork_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {9 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

val is_block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
  bool
;;

(** {12 Querying C_ss3 in Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

(* No Query from c_ss3 0. *)

(** {12 Querying N_ss3_1p in Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

(* No Query from n_ss3_1p 0. *)

(** {6 Upgrading from Block_onebifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {9 Upgrading from Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Upgrading from Block_onesinglebiforksinglesingle through Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Upgrading from Block_onesinglebiforksinglesingleconjugated through Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

val block_onesinglebiforksinglesingleconjugated : Block_onefork_symbol_t.block_onefork_symbol;;
(** {9 Upgrading from Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onedoublebifork_symbol :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Upgrading from C_ds2 through Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

val c_ds2 : Block_onefork_symbol_t.block_onefork_symbol;;
(** {12 Upgrading from N_ds2_1p through Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

val n_ds2_1p : Block_onefork_symbol_t.block_onefork_symbol;;
(** {6 Upgrading from Block_onetrifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {9 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

val block_onefork_symbol_of_block_onesingletriforksinglesinglesingle_symbol :
  Block_onesingletriforksinglesinglesingle_symbol_t.block_onesingletriforksinglesinglesingle_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Upgrading from C_ss3 through Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

val c_ss3 : Block_onefork_symbol_t.block_onefork_symbol;;
(** {12 Upgrading from N_ss3_1p through Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

val n_ss3_1p : Block_onefork_symbol_t.block_onefork_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh block_onefork 12 January 2011. *)


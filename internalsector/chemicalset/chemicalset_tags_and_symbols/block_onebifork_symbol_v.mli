(** {3 A Symbol for a Block_onebifork.} *)

(** {6 Displaying.} *)

val name :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onesinglebifork from Block_onebifork.} *)

val block_onesinglebifork_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol
;;

(** {9 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

val block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol
;;

(** {12 Extracting C_s2 from Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from c_s2 0. *)

(** {12 Extracting N_s2_1p from Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from n_s2_1p 0. *)

(** {9 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork from Block_onebifork.} *)

(* No Extraction from doublet block_onesinglebiforksinglesingleconjugated. *)

(** {6 Extracting Block_onedoublebifork from Block_onebifork.} *)

val block_onedoublebifork_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol
;;

(** {9 Extracting C_ds2 from Block_onedoublebifork from Block_onebifork.} *)

(* No Extraction from doublet c_ds2. *)

(** {9 Extracting N_ds2_1p from Block_onedoublebifork from Block_onebifork.} *)

(* No Extraction from doublet n_ds2_1p. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesinglebifork in Block_onebifork.} *)

val is_block_onesinglebifork_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
  bool
;;

(** {9 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

val is_block_onesinglebiforksinglesingle_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
  bool
;;

(** {12 Querying C_s2 in Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from c_s2 0. *)

(** {12 Querying N_s2_1p in Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from n_s2_1p 0. *)

(** {9 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork in Block_onebifork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)

(** {6 Querying Block_onedoublebifork in Block_onebifork.} *)

val is_block_onedoublebifork_symbol_off_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
  bool
;;

(** {9 Querying C_ds2 in Block_onedoublebifork in Block_onebifork.} *)

(* No Query from c_ds2 0. *)

(** {9 Querying N_ds2_1p in Block_onedoublebifork in Block_onebifork.} *)

(* No Query from n_ds2_1p 0. *)

(** {6 Upgrading from Block_onesinglebifork to Block_onebifork.} *)

val block_onebifork_symbol_of_block_onesinglebifork_symbol :
  Block_onesinglebifork_symbol_t.block_onesinglebifork_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {9 Upgrading from Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

val block_onebifork_symbol_of_block_onesinglebiforksinglesingle_symbol :
  Block_onesinglebiforksinglesingle_symbol_t.block_onesinglebiforksinglesingle_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {12 Upgrading from C_s2 through Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

val c_s2 : Block_onebifork_symbol_t.block_onebifork_symbol;;
(** {12 Upgrading from N_s2_1p through Block_onesinglebiforksinglesingle through Block_onesinglebifork to Block_onebifork.} *)

val n_s2_1p : Block_onebifork_symbol_t.block_onebifork_symbol;;
(** {9 Upgrading from Block_onesinglebiforksinglesingleconjugated through Block_onesinglebifork to Block_onebifork.} *)

val block_onesinglebiforksinglesingleconjugated : Block_onebifork_symbol_t.block_onebifork_symbol;;

(** {6 Upgrading from Block_onedoublebifork to Block_onebifork.} *)

val block_onebifork_symbol_of_block_onedoublebifork_symbol :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {9 Upgrading from C_ds2 through Block_onedoublebifork to Block_onebifork.} *)

val c_ds2 : Block_onebifork_symbol_t.block_onebifork_symbol;;

(** {9 Upgrading from N_ds2_1p through Block_onedoublebifork to Block_onebifork.} *)

val n_ds2_1p : Block_onebifork_symbol_t.block_onebifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onebifork 12 January 2011. *)


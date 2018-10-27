(** {3 A Symbol for a Block_onetrifork.} *)

let nam_mod = "Block_onetrifork_symbol_v";;

(** {6 Modules.} *)

module Bots_t = Block_onetrifork_symbol_t
module Bss3s_t = Block_onesingletriforksinglesinglesingle_symbol_t
module Bss3s_v = Block_onesingletriforksinglesinglesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bots_t.Block_onesingletriforksinglesinglesingle_symbol smb_bss3 -> 
      Bss3s_v.name smb_bss3
;;

let print ppf = function
  | Bots_t.Block_onesingletriforksinglesinglesingle_symbol smb_bss3 -> 
      Bss3s_v.print ppf smb_bss3
;;

(** {6 Extracting.} *)

(** {6 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

let block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol = function
  | Bots_t.Block_onesingletriforksinglesinglesingle_symbol smb_bss3 -> smb_bss3
;;

(** {9 Extracting C_ss3 from Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

(* No Extraction from c_ss3 0. *)

(** {9 Extracting N_ss3_1p from Block_onesingletriforksinglesinglesingle from Block_onetrifork.} *)

(* No Extraction from n_ss3_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot = true
;;

(** {9 Querying C_ss3 in Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

(* No Query from c_ss3 0. *)


(** {9 Querying N_ss3_1p in Block_onesingletriforksinglesinglesingle in Block_onetrifork.} *)

(* No Query from n_ss3_1p 0. *)


(** {6 Upgrading from Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

let block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 =
  Bots_t.Block_onesingletriforksinglesinglesingle_symbol smb_bss3
;;

(** {9 Upgrading from C_ss3 through Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

let c_ss3 = block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol Bss3s_t.C_ss3;;

(** {9 Upgrading from N_ss3_1p through Block_onesingletriforksinglesinglesingle to Block_onetrifork.} *)

let n_ss3_1p = block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol Bss3s_t.N_ss3_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onetrifork 12 January 2011. *)


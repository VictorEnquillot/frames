(** {3 A Symbol for a Block_onefork.} *)

let nam_mod = "Block_onefork_symbol_v";;

(** {6 Modules.} *)

module Bdbs_t = Block_onedoublebifork_symbol_t
module Bdbs_v = Block_onedoublebifork_symbol_v
module Bobs_t = Block_onebifork_symbol_t
module Bobs_v = Block_onebifork_symbol_v
module Bofs_t = Block_onefork_symbol_t
module Bots_t = Block_onetrifork_symbol_t
module Bots_v = Block_onetrifork_symbol_v
module Bsbs_t = Block_onesinglebifork_symbol_t
module Bsbs_v = Block_onesinglebifork_symbol_v
module Bss2s_t = Block_onesinglebiforksinglesingle_symbol_t
module Bss2s_v = Block_onesinglebiforksinglesingle_symbol_v
module Bss3s_t = Block_onesingletriforksinglesinglesingle_symbol_t
module Bss3s_v = Block_onesingletriforksinglesinglesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bofs_t.Block_onebifork_symbol smb_bob -> 
      Bobs_v.name smb_bob
  | Bofs_t.Block_onetrifork_symbol smb_bot -> 
      Bots_v.name smb_bot
;;

let print ppf = function
  | Bofs_t.Block_onebifork_symbol smb_bob -> 
      Bobs_v.print ppf smb_bob
  | Bofs_t.Block_onetrifork_symbol smb_bot -> 
      Bots_v.print ppf smb_bot
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onefork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_onebifork from Block_onefork.} *)

let block_onebifork_symbol_off_block_onefork_symbol = function
  | Bofs_t.Block_onebifork_symbol smb_bob -> smb_bob
  | s ->  print_fatal_error
      "block_onebifork_symbol_off_block_onefork_symbol"
      "Block_onebifork_symbol" (name s)
;;

(** {9 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

let block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof =
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
    Bobs_v.block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {12 Extracting Block_onesinglebiforksinglesingle from Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

let block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol smb_bof =
  let smb_bsb = block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof in
    Bsbs_v.block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_bsb
;;

(** {12 Extracting Block_onesinglebiforksinglesingleconjugated from Block_onesinglebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from block_onesinglebiforksinglesingleconjugated 0. *)

(** {9 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

let block_onedoublebifork_symbol_off_block_onefork_symbol smb_bof =
  let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
    Bobs_v.block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {12 Extracting C_ds2 from Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from c_ds2 0. *)

(** {12 Extracting N_ds2_1p from Block_onedoublebifork from Block_onebifork from Block_onefork.} *)

(* No Extraction from n_ds2_1p 0. *)

(** {6 Extracting Block_onetrifork from Block_onefork.} *)

let block_onetrifork_symbol_off_block_onefork_symbol = function
  | Bofs_t.Block_onetrifork_symbol smb_bot -> smb_bot
  | s ->  print_fatal_error
      "block_onetrifork_symbol_off_block_onefork_symbol"
      "Block_onetrifork_symbol" (name s)
;;

(** {9 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

let block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol smb_bof =
  let smb_bot = block_onetrifork_symbol_off_block_onefork_symbol smb_bof in
    Bots_v.block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
;;

(** {12 Extracting C_ss3 from Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

(* No Extraction from c_ss3 0. *)

(** {12 Extracting N_ss3_1p from Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork.} *)

(* No Extraction from n_ss3_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onebifork in Block_onefork.} *)

let is_block_onebifork_symbol_off_block_onefork_symbol = function
  | Bofs_t.Block_onebifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

let is_block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
      Bobs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {12 Querying Block_onesinglebiforksinglesingle in Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

let is_block_onesinglebiforksinglesingle_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
      let smb_bsb = block_onesinglebifork_symbol_off_block_onefork_symbol smb_bof in
      Bsbs_v.is_block_onesinglebiforksinglesingle_symbol_off_block_onesinglebifork_symbol smb_bsb
    end
;;

(** {12 Querying Block_onesinglebiforksinglesingleconjugated in Block_onesinglebifork in Block_onebifork in Block_onefork.} *)

(* No Query from block_onesinglebiforksinglesingleconjugated 0. *)

(** {9 Querying Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

let is_block_onedoublebifork_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onebifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_block_onefork_symbol smb_bof in
      Bobs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {12 Querying C_ds2 in Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

(* No Query from c_ds2 0. *)

(** {12 Querying N_ds2_1p in Block_onedoublebifork in Block_onebifork in Block_onefork.} *)

(* No Query from n_ds2_1p 0. *)

(** {6 Querying Block_onetrifork in Block_onefork.} *)

let is_block_onetrifork_symbol_off_block_onefork_symbol = function
  | Bofs_t.Block_onetrifork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_onefork_symbol smb_bof =
  if not (is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof)
  then false
  else
    begin
      let smb_bot = block_onetrifork_symbol_off_block_onefork_symbol smb_bof in
      Bots_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;

(** {12 Querying C_ss3 in Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

(* No Query from c_ss3 0. *)

(** {12 Querying N_ss3_1p in Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork.} *)

(* No Query from n_ss3_1p 0. *)

(** {6 Upgrading from Block_onebifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onebifork_symbol smb_bob =
  Bofs_t.Block_onebifork_symbol smb_bob
;;

(** {9 Upgrading from Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onesinglebifork_symbol smb_bsb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_bsb in
  block_onefork_symbol_of_block_onebifork_symbol smb_bob
;;

(** {12 Upgrading from Block_onesinglebiforksinglesingle through Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_bss2 =
  let smb_bsb = Bsbs_v.block_onesinglebifork_symbol_of_block_onesinglebiforksinglesingle_symbol smb_bss2 in
    block_onefork_symbol_of_block_onesinglebifork_symbol smb_bsb
;;

(** {12 Upgrading from Block_onesinglebiforksinglesingleconjugated through Block_onesinglebifork through Block_onebifork to Block_onefork.} *)

let block_onesinglebiforksinglesingleconjugated = block_onefork_symbol_of_block_onesinglebifork_symbol Bsbs_t.Block_onesinglebiforksinglesingleconjugated;;

(** {9 Upgrading from Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onedoublebifork_symbol smb_bdb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_bdb in
  block_onefork_symbol_of_block_onebifork_symbol smb_bob
;;

(** {12 Upgrading from C_ds2 through Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

let c_ds2 = block_onefork_symbol_of_block_onedoublebifork_symbol Bdbs_t.C_ds2;;

(** {12 Upgrading from N_ds2_1p through Block_onedoublebifork through Block_onebifork to Block_onefork.} *)

let n_ds2_1p = block_onefork_symbol_of_block_onedoublebifork_symbol Bdbs_t.N_ds2_1p;;

(** {6 Upgrading from Block_onetrifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onetrifork_symbol smb_bot =
  Bofs_t.Block_onetrifork_symbol smb_bot
;;

(** {9 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

let block_onefork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 =
  let smb_bot = Bots_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 in
  block_onefork_symbol_of_block_onetrifork_symbol smb_bot
;;

(** {12 Upgrading from C_ss3 through Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

let c_ss3 = block_onefork_symbol_of_block_onesingletriforksinglesinglesingle_symbol Bss3s_t.C_ss3;;

(** {12 Upgrading from N_ss3_1p through Block_onesingletriforksinglesinglesingle through Block_onetrifork to Block_onefork.} *)

let n_ss3_1p = block_onefork_symbol_of_block_onesingletriforksinglesinglesingle_symbol Bss3s_t.N_ss3_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onefork 12 January 2011. *)


(** {3 A Symbol for a Block_oneend.} *)

let nam_mod = "Block_oneend_symbol_v";;

(** {6 Modules.} *)

module Bdbs_t = Block_onedoublebifork_symbol_t
module Bdbs_v = Block_onedoublebifork_symbol_v
module Bobs_t = Block_onebifork_symbol_t
module Bobs_v = Block_onebifork_symbol_v
module Boes_t = Block_oneend_symbol_t
module Bofs_t = Block_onefork_symbol_t
module Bofs_v = Block_onefork_symbol_v
module Bots_t = Block_onetrifork_symbol_t
module Bots_v = Block_onetrifork_symbol_v
module Bozs_t = Block_onezero_symbol_t
module Bozs_v = Block_onezero_symbol_v
module Bsbs_t = Block_onesinglebifork_symbol_t
module Bsbs_v = Block_onesinglebifork_symbol_v
module Bss3s_t = Block_onesingletriforksinglesinglesingle_symbol_t
module Bss3s_v = Block_onesingletriforksinglesinglesingle_symbol_v

(** {6 Displaying.} *)

let name = function
  | Boes_t.Block_onefork_symbol smb_bof -> 
      Bofs_v.name smb_bof
  | Boes_t.Block_onezero_symbol smb_boz -> 
      Bozs_v.name smb_boz
;;

let print ppf = function
  | Boes_t.Block_onefork_symbol smb_bof -> 
      Bofs_v.print ppf smb_bof
  | Boes_t.Block_onezero_symbol smb_boz -> 
      Bozs_v.print ppf smb_boz
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_oneend_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Block_onefork from Block_oneend.} *)

let block_onefork_symbol_off_block_oneend_symbol = function
  | Boes_t.Block_onefork_symbol smb_bof -> smb_bof
  | s ->  print_fatal_error
      "block_onefork_symbol_off_block_oneend_symbol"
      "Block_onefork_symbol" (name s)
;;

(** {9 Extracting Block_onebifork from Block_onefork from Block_oneend.} *)

let block_onebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
    Bofs_v.block_onebifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork from Block_oneend.} *)

let block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
    Bobs_v.block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {12 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork from Block_oneend.} *)

let block_onedoublebifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
    Bobs_v.block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {9 Extracting Block_onetrifork from Block_onefork from Block_oneend.} *)

let block_onetrifork_symbol_off_block_oneend_symbol smb_boe =
  let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
    Bofs_v.block_onetrifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork from Block_oneend.} *)

let block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol smb_boe =
  let smb_bot = block_onetrifork_symbol_off_block_oneend_symbol smb_boe in
    Bots_v.block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
;;

(** {6 Extracting Block_onezero from Block_oneend.} *)

let block_onezero_symbol_off_block_oneend_symbol = function
  | Boes_t.Block_onezero_symbol smb_boz -> smb_boz
  | s ->  print_fatal_error
      "block_onezero_symbol_off_block_oneend_symbol"
      "Block_onezero_symbol" (name s)
;;

(** {9 Extracting Onesinglezero from Block_onezero from Block_oneend.} *)

(* No Extraction from onesinglezero 0. *)

(** {9 Extracting Oneconjugatedzero from Block_onezero from Block_oneend.} *)

(* No Extraction from oneconjugatedzero 0. *)

(** {9 Extracting Onedoublelezero from Block_onezero from Block_oneend.} *)

(* No Extraction from onedoublelezero 0. *)

(** {9 Extracting Onetriplezero from Block_onezero from Block_oneend.} *)

(* No Extraction from onetriplezero 0. *)

(** {6 Querying.} *)

(** {6 Querying Block_onefork in Block_oneend.} *)

let is_block_onefork_symbol_off_block_oneend_symbol = function
  | Boes_t.Block_onefork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onebifork in Block_onefork in Block_oneend.} *)

let is_block_onebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onefork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
      Bofs_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onesinglebifork in Block_onebifork in Block_onefork in Block_oneend.} *)

let is_block_onesinglebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onebifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
      Bobs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {12 Querying Block_onedoublebifork in Block_onebifork in Block_onefork in Block_oneend.} *)

let is_block_onedoublebifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onebifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_block_oneend_symbol smb_boe in
      Bobs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {9 Querying Block_onetrifork in Block_onefork in Block_oneend.} *)

let is_block_onetrifork_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onefork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_block_oneend_symbol smb_boe in
      Bofs_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork in Block_oneend.} *)

let is_block_onesingletriforksinglesinglesingle_symbol_off_block_oneend_symbol smb_boe =
  if not (is_block_onetrifork_symbol_off_block_oneend_symbol smb_boe)
  then false
  else
    begin
      let smb_bot = block_onetrifork_symbol_off_block_oneend_symbol smb_boe in
      Bots_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;

(** {6 Querying Block_onezero in Block_oneend.} *)

let is_block_onezero_symbol_off_block_oneend_symbol = function
  | Boes_t.Block_onezero_symbol _ -> true
  | _ -> false
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

let block_oneend_symbol_of_block_onefork_symbol smb_bof =
  Boes_t.Block_onefork_symbol smb_bof
;;

(** {9 Upgrading from Block_onebifork through Block_onefork to Block_oneend.} *)

let block_oneend_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
  block_oneend_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onesinglebifork through Block_onebifork through Block_onefork to Block_oneend.} *)

let block_oneend_symbol_of_block_onesinglebifork_symbol smb_bsb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_bsb in
    block_oneend_symbol_of_block_onebifork_symbol smb_bob
;;

(** {12 Upgrading from Block_onedoublebifork through Block_onebifork through Block_onefork to Block_oneend.} *)

let block_oneend_symbol_of_block_onedoublebifork_symbol smb_bdb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_bdb in
    block_oneend_symbol_of_block_onebifork_symbol smb_bob
;;

(** {9 Upgrading from Block_onetrifork through Block_onefork to Block_oneend.} *)

let block_oneend_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
  block_oneend_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork through Block_onefork to Block_oneend.} *)

let block_oneend_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 =
  let smb_bot = Bots_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 in
    block_oneend_symbol_of_block_onetrifork_symbol smb_bot
;;

(** {6 Upgrading from Block_onezero to Block_oneend.} *)

let block_oneend_symbol_of_block_onezero_symbol smb_boz =
  Boes_t.Block_onezero_symbol smb_boz
;;

(** {9 Upgrading from Onesinglezero through Block_onezero to Block_oneend.} *)

let onesinglezero = block_oneend_symbol_of_block_onezero_symbol Bozs_t.Onesinglezero;;

(** {9 Upgrading from Oneconjugatedzero through Block_onezero to Block_oneend.} *)

let oneconjugatedzero = block_oneend_symbol_of_block_onezero_symbol Bozs_t.Oneconjugatedzero;;

(** {9 Upgrading from Onedoublelezero through Block_onezero to Block_oneend.} *)

let onedoublelezero = block_oneend_symbol_of_block_onezero_symbol Bozs_t.Onedoublelezero;;

(** {9 Upgrading from Onetriplezero through Block_onezero to Block_oneend.} *)

let onetriplezero = block_oneend_symbol_of_block_onezero_symbol Bozs_t.Onetriplezero;;

(** created by ./do_entitysum_symbol_v_ml.sh block_oneend 12 January 2011. *)


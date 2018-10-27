(** {3 A Symbol for a Fragment_buried.} *)

let nam_mod = "Fragment_buried_symbol_v";;

(** {6 Modules.} *)

module Bdbs_t = Block_onedoublebifork_symbol_t
module Bdbs_v = Block_onedoublebifork_symbol_v
module Bobs_t = Block_onebifork_symbol_t
module Bobs_v = Block_onebifork_symbol_v
module Bofs_t = Block_onefork_symbol_t
module Bofs_v = Block_onefork_symbol_v
module Bots_t = Block_onetrifork_symbol_t
module Bots_v = Block_onetrifork_symbol_v
module Bsbs_t = Block_onesinglebifork_symbol_t
module Bsbs_v = Block_onesinglebifork_symbol_v
module Bss3s_t = Block_onesingletriforksinglesinglesingle_symbol_t
module Bss3s_v = Block_onesingletriforksinglesinglesingle_symbol_v
module Fbs_t = Fragment_buried_symbol_t

(** {6 Displaying.} *)

let name = function
  | Fbs_t.Fragment_onefork -> Format.sprintf "%s" "fragment_onefork"
  | Fbs_t.Block_onefork_symbol smb_bof -> 
      Bofs_v.name smb_bof
  | Fbs_t.Polysegment_buried_leftextended -> Format.sprintf "%s" "polysegment_buried_leftextended"
;;

let print ppf = function
  | Fbs_t.Fragment_onefork -> Format.fprintf ppf "%s" "fragment_onefork"
  | Fbs_t.Block_onefork_symbol smb_bof -> 
      Bofs_v.print ppf smb_bof
  | Fbs_t.Polysegment_buried_leftextended -> Format.fprintf ppf "%s" "polysegment_buried_leftextended"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found fragment_buried_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fragment_onefork from Fragment_buried.} *)

(* No Extraction from fragment_onefork 0. *)

(** {6 Extracting Block_onefork from Fragment_buried.} *)

let block_onefork_symbol_off_fragment_buried_symbol = function
  | Fbs_t.Block_onefork_symbol smb_bof -> smb_bof
  | s ->  print_fatal_error
      "block_onefork_symbol_off_fragment_buried_symbol"
      "Block_onefork_symbol" (name s)
;;

(** {9 Extracting Block_onebifork from Block_onefork from Fragment_buried.} *)

let block_onebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
    Bofs_v.block_onebifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onesinglebifork from Block_onebifork from Block_onefork from Fragment_buried.} *)

let block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
    Bobs_v.block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {12 Extracting Block_onedoublebifork from Block_onebifork from Block_onefork from Fragment_buried.} *)

let block_onedoublebifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
    Bobs_v.block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
;;

(** {9 Extracting Block_onetrifork from Block_onefork from Fragment_buried.} *)

let block_onetrifork_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
    Bofs_v.block_onetrifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onesingletriforksinglesinglesingle from Block_onetrifork from Block_onefork from Fragment_buried.} *)

let block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  let smb_bot = block_onetrifork_symbol_off_fragment_buried_symbol smb_frb in
    Bots_v.block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
;;

(** {6 Extracting Polysegment_buried_leftextended from Fragment_buried.} *)

(* No Extraction from polysegment_buried_leftextended 0. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_onefork in Fragment_buried.} *)

(* No Query from fragment_onefork 0. *)

(** {6 Querying Block_onefork in Fragment_buried.} *)

let is_block_onefork_symbol_off_fragment_buried_symbol = function
  | Fbs_t.Block_onefork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onebifork in Block_onefork in Fragment_buried.} *)

let is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onefork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
      Bofs_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onesinglebifork in Block_onebifork in Block_onefork in Fragment_buried.} *)

let is_block_onesinglebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
      Bobs_v.is_block_onesinglebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {12 Querying Block_onedoublebifork in Block_onebifork in Block_onefork in Fragment_buried.} *)

let is_block_onedoublebifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onebifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
      let smb_bob = block_onebifork_symbol_off_fragment_buried_symbol smb_frb in
      Bobs_v.is_block_onedoublebifork_symbol_off_block_onebifork_symbol smb_bob
    end
;;

(** {9 Querying Block_onetrifork in Block_onefork in Fragment_buried.} *)

let is_block_onetrifork_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onefork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_fragment_buried_symbol smb_frb in
      Bofs_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onesingletriforksinglesinglesingle in Block_onetrifork in Block_onefork in Fragment_buried.} *)

let is_block_onesingletriforksinglesinglesingle_symbol_off_fragment_buried_symbol smb_frb =
  if not (is_block_onetrifork_symbol_off_fragment_buried_symbol smb_frb)
  then false
  else
    begin
      let smb_bot = block_onetrifork_symbol_off_fragment_buried_symbol smb_frb in
      Bots_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_onetrifork_symbol smb_bot
    end
;;

(** {6 Querying Polysegment_buried_leftextended in Fragment_buried.} *)

(* No Query from polysegment_buried_leftextended 0. *)

(** {6 Upgrading from Fragment_onefork to Fragment_buried.} *)

let fragment_onefork = Fbs_t.Fragment_onefork;;

(** {6 Upgrading from Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onefork_symbol smb_bof =
  Fbs_t.Block_onefork_symbol smb_bof
;;

(** {9 Upgrading from Block_onebifork through Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
  fragment_buried_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onesinglebifork through Block_onebifork through Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onesinglebifork_symbol smb_bsb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onesinglebifork_symbol smb_bsb in
    fragment_buried_symbol_of_block_onebifork_symbol smb_bob
;;

(** {12 Upgrading from Block_onedoublebifork through Block_onebifork through Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onedoublebifork_symbol smb_bdb =
  let smb_bob = Bobs_v.block_onebifork_symbol_of_block_onedoublebifork_symbol smb_bdb in
    fragment_buried_symbol_of_block_onebifork_symbol smb_bob
;;

(** {9 Upgrading from Block_onetrifork through Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
  fragment_buried_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onesingletriforksinglesinglesingle through Block_onetrifork through Block_onefork to Fragment_buried.} *)

let fragment_buried_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 =
  let smb_bot = Bots_v.block_onetrifork_symbol_of_block_onesingletriforksinglesinglesingle_symbol smb_bss3 in
    fragment_buried_symbol_of_block_onetrifork_symbol smb_bot
;;

(** {6 Upgrading from Polysegment_buried_leftextended to Fragment_buried.} *)

let polysegment_buried_leftextended = Fbs_t.Polysegment_buried_leftextended;;

(** created by ./do_entitysum_symbol_v_ml.sh fragment_buried 12 January 2011. *)


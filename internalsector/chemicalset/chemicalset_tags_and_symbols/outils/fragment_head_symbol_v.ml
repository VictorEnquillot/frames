(** {3 A Symbol for a Fragment_head.} *)

let nam_cod = "fragment_head_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B0s_v = Block_zerofork_symbol_v


let name = function
  | Fhs_t.Fragment_head_halfbridge -> "fragment_head_halfbridge"
  | Fhs_v smb_bl0 ->
      B0s_v.name smb_bl0
  | Fhs_t.Fragment_zerofork -> "fragment_zerofork"
  | Fhs_t.Segment_head_extends_fragment_buried -> "segment_head_extends_fragment_buried"
;;


let print ppf = function
  | Fhs_v  ->
      .print ppf 
  | Fhs_v smb_bl0 ->
      B0s_v.print ppf smb_bl0
  | Fhs_v  ->
      .print ppf 
  | Fhs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_zerofork_symbol_off_fragment_head_symbol = function
  | Fhs_v smb_bl0 -> smb_bl0
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerofork_symbol_off_fragment_head_symbol"
     "Block_zerofork_symbol"
     (name s)
    "check"
;;

let block_zerobifork_symbol_off_fragment_head_symbol smb_frh =
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_off_fragment_head_symbol smb_frh =
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_off_fragment_head_symbol smb_frh =
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;


(** {6 Querying.} *)

let is_block_zerofork_symbol_off_fragment_head_symbol = function
  | Fragment_head_symbol_t.Block_zerofork_symbol _ -> true
  | _ -> false
;;

let is_block_zerobifork_symbol_off_fragment_head_symbol smb_frh =
  if not (is_block_zerofork_symbol_off_fragment_head_symbol smb_frh)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
      B0s_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zerotrifork_symbol_off_fragment_head_symbol smb_frh =
  if not (is_block_zerofork_symbol_off_fragment_head_symbol smb_frh)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
      B0s_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zeroquadrifork_symbol_off_fragment_head_symbol smb_frh =
  if not (is_block_zerofork_symbol_off_fragment_head_symbol smb_frh)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_fragment_head_symbol smb_frh in
      B0s_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;


(** {6 Upgrading.} *)

let fragment_head_halfbridge = Fhs_t.Fragment_head_halfbridge;;

let fragment_head_symbol_of_block_zerofork_symbol smb_bl0 =
Fhs_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
fragment_head_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0bs_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
fragment_head_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0ts_v.block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0ts_v.block_zerofork_symbol smb_bl0
;;

let block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
fragment_head_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0qs_v.block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_of_block_zerofork_symbol smb_bl0 =
B0qs_v.block_zerofork_symbol smb_bl0
;;

let fragment_zerofork = Fhs_t.Fragment_zerofork;;

let segment_head_extends_fragment_buried = Fhs_t.Segment_head_extends_fragment_buried;;



(** created by ./generator fragment_head v symbol at 11:8 26 Apr 2011. *)




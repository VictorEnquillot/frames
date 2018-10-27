(** {3 A Symbol for a Segment_head.} *)

let nam_cod = "segment_head_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B01s_v = Block_zeroone_symbol_v


let name = function
  | Shs_t.Segment_zeroone -> "segment_zeroone"
  | Shs_v smb_bzo ->
      B01s_v.name smb_bzo
  | Shs_t.Segment_rightextended -> "segment_rightextended"
;;


let print ppf = function
  | Shs_v  ->
      .print ppf 
  | Shs_v smb_bzo ->
      B01s_v.print ppf smb_bzo
  | Shs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_zeroone_symbol_off_segment_head_symbol = function
  | Shs_v smb_bzo -> smb_bzo
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zeroone_symbol_off_segment_head_symbol"
     "Block_zeroone_symbol"
     (name s)
    "check"
;;

let block_zeroonesingle_symbol_off_segment_head_symbol smb_seh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_off_segment_head_symbol smb_seh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_off_segment_head_symbol smb_seh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
    B01s_v_off_block_zeroone_symbol smb_bzo
;;


(** {6 Querying.} *)

let is_block_zeroone_symbol_off_segment_head_symbol = function
  | Segment_head_symbol_t.Block_zeroone_symbol _ -> true
  | _ -> false
;;

let is_block_zeroonesingle_symbol_off_segment_head_symbol smb_seh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_seh)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
      B01s_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonedouble_symbol_off_segment_head_symbol smb_seh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_seh)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
      B01s_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

let is_block_zeroonetriple_symbol_off_segment_head_symbol smb_seh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_seh)
  then false
  else
    begin
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_seh in
      B01s_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;


(** {6 Upgrading.} *)

let segment_zeroone = Shs_t.Segment_zeroone;;

let segment_head_symbol_of_block_zeroone_symbol smb_bzo =
Shs_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_zos in
segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonesingle_symbol_of_block_zeroone_symbol smb_bzo =
B01ss_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_zod in
segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroonedouble_symbol_of_block_zeroone_symbol smb_bzo =
B01ds_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot =
  let smb_bzo = B01s_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_zot in
segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

let block_zeroonetriple_symbol_of_block_zeroone_symbol smb_bzo =
B01ts_v.block_zeroone_symbol smb_bzo
;;

let block_zeroone_symbol_of_block_zeroone_symbol smb_bzo =
B01s_v.block_zeroone_symbol smb_bzo
;;

let segment_rightextended = Shs_t.Segment_rightextended;;



(** created by ./generator segment_head v symbol at 11:8 26 Apr 2011. *)




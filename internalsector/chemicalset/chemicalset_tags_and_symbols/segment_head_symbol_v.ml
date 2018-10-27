(** {3 A Symbol for a Segment_head.} *)

let nam_mod = "Segment_head_symbol_v";;

(** {6 Modules.} *)

module Bzds_t = Block_zeroonedouble_symbol_t
module Bzds_v = Block_zeroonedouble_symbol_v
module Bzos_t = Block_zeroone_symbol_t
module Bzos_v = Block_zeroone_symbol_v
module Bzss_t = Block_zeroonesingle_symbol_t
module Bzss_v = Block_zeroonesingle_symbol_v
module Bzts_t = Block_zeroonetriple_symbol_t
module Bzts_v = Block_zeroonetriple_symbol_v
module Shs_t = Segment_head_symbol_t

(** {6 Displaying.} *)

let name = function
  | Shs_t.Segment_zeroone -> Format.sprintf "%s" "segment_zeroone"
  | Shs_t.Block_zeroone_symbol smb_bzo -> 
      Bzos_v.name smb_bzo
  | Shs_t.Segment_rightextended -> Format.sprintf "%s" "segment_rightextended"
;;

let print ppf = function
  | Shs_t.Segment_zeroone -> Format.fprintf ppf "%s" "segment_zeroone"
  | Shs_t.Block_zeroone_symbol smb_bzo -> 
      Bzos_v.print ppf smb_bzo
  | Shs_t.Segment_rightextended -> Format.fprintf ppf "%s" "segment_rightextended"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found segment_head_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Segment_zeroone from Segment_head.} *)

(* No Extraction from segment_zeroone 0. *)

(** {6 Extracting Block_zeroone from Segment_head.} *)

let block_zeroone_symbol_off_segment_head_symbol = function
  | Shs_t.Block_zeroone_symbol smb_bzo -> smb_bzo
  | s ->  print_fatal_error
      "block_zeroone_symbol_off_segment_head_symbol"
      "Block_zeroone_symbol" (name s)
;;

(** {9 Extracting Block_zeroonesingle from Block_zeroone from Segment_head.} *)

let block_zeroonesingle_symbol_off_segment_head_symbol smb_sgh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
    Bzos_v.block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch3_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from ch3_zs 0. *)

(** {12 Extracting Coh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from coh_zs 0. *)

(** {12 Extracting Coc2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from coc2_zs 0. *)

(** {12 Extracting Ch2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from ch2_zs 0. *)

(** {12 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_zs 0. *)

(** {12 Extracting No_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from no_zs 0. *)

(** {12 Extracting No2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from no2_zs 0. *)

(** {12 Extracting Nh3_zs_1p from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh3_zs_1p 0. *)

(** {12 Extracting Nh2_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_zs 0. *)

(** {12 Extracting Oh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from oh_zs 0. *)

(** {12 Extracting Sh_zs from Block_zeroonesingle from Block_zeroone from Segment_head.} *)

(* No Extraction from sh_zs 0. *)

(** {9 Extracting Block_zeroonedouble from Block_zeroone from Segment_head.} *)

let block_zeroonedouble_symbol_off_segment_head_symbol smb_sgh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
    Bzos_v.block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch2_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from ch2_d 0. *)

(** {12 Extracting Co_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from co_d 0. *)

(** {12 Extracting Nh_d from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from nh_d 0. *)

(** {12 Extracting Nh2_d_1p from Block_zeroonedouble from Block_zeroone from Segment_head.} *)

(* No Extraction from nh2_d_1p 0. *)

(** {9 Extracting Block_zeroonetriple from Block_zeroone from Segment_head.} *)

let block_zeroonetriple_symbol_off_segment_head_symbol smb_sgh =
  let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
    Bzos_v.block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Ch_t from Block_zeroonetriple from Block_zeroone from Segment_head.} *)

(* No Extraction from ch_t 0. *)

(** {9 Extracting Block_zeroonehalfbridge from Block_zeroone from Segment_head.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {6 Extracting Segment_rightextended from Segment_head.} *)

(* No Extraction from segment_rightextended 0. *)

(** {6 Querying.} *)

(** {6 Querying Segment_zeroone in Segment_head.} *)

(* No Query from segment_zeroone 0. *)

(** {6 Querying Block_zeroone in Segment_head.} *)

let is_block_zeroone_symbol_off_segment_head_symbol = function
  | Shs_t.Block_zeroone_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_zeroonesingle in Block_zeroone in Segment_head.} *)

let is_block_zeroonesingle_symbol_off_segment_head_symbol smb_sgh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_sgh)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
      Bzos_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch3_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from ch3_zs 0. *)

(** {12 Querying Coh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from coh_zs 0. *)

(** {12 Querying Coc2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from coc2_zs 0. *)

(** {12 Querying Ch2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from ch2_zs 0. *)

(** {12 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh2_zs 0. *)

(** {12 Querying No_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from no_zs 0. *)

(** {12 Querying No2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from no2_zs 0. *)

(** {12 Querying Nh3_zs_1p in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh3_zs_1p 0. *)

(** {12 Querying Nh2_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from nh2_zs 0. *)

(** {12 Querying Oh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from oh_zs 0. *)

(** {12 Querying Sh_zs in Block_zeroonesingle in Block_zeroone in Segment_head.} *)

(* No Query from sh_zs 0. *)

(** {9 Querying Block_zeroonedouble in Block_zeroone in Segment_head.} *)

let is_block_zeroonedouble_symbol_off_segment_head_symbol smb_sgh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_sgh)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
      Bzos_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch2_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from ch2_d 0. *)

(** {12 Querying Co_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from co_d 0. *)

(** {12 Querying Nh_d in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from nh_d 0. *)

(** {12 Querying Nh2_d_1p in Block_zeroonedouble in Block_zeroone in Segment_head.} *)

(* No Query from nh2_d_1p 0. *)

(** {9 Querying Block_zeroonetriple in Block_zeroone in Segment_head.} *)

let is_block_zeroonetriple_symbol_off_segment_head_symbol smb_sgh =
  if not (is_block_zeroone_symbol_off_segment_head_symbol smb_sgh)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_segment_head_symbol smb_sgh in
      Bzos_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Ch_t in Block_zeroonetriple in Block_zeroone in Segment_head.} *)

(* No Query from ch_t 0. *)

(** {9 Querying Block_zeroonehalfbridge in Block_zeroone in Segment_head.} *)

(* No Query from block_zeroonehalfbridge 0. *)


(** {6 Querying Segment_rightextended in Segment_head.} *)

(* No Query from segment_rightextended 0. *)

(** {6 Upgrading from Segment_zeroone to Segment_head.} *)

let segment_zeroone = Shs_t.Segment_zeroone;;

(** {6 Upgrading from Block_zeroone to Segment_head.} *)

let segment_head_symbol_of_block_zeroone_symbol smb_bzo =
  Shs_t.Block_zeroone_symbol smb_bzo
;;

(** {9 Upgrading from Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let segment_head_symbol_of_block_zeroonesingle_symbol smb_bzs =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_bzs in
  segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch3_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let ch3_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch3_zs;;

(** {12 Upgrading from Coh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let coh_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Coh_zs;;

(** {12 Upgrading from Coc2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let coc2_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Coc2_zs;;

(** {12 Upgrading from Ch2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let ch2_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Ch2_zs;;

(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let nh2_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh2_zs;;

(** {12 Upgrading from No_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let no_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.No_zs;;

(** {12 Upgrading from No2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let no2_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.No2_zs;;

(** {12 Upgrading from Nh3_zs_1p through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let nh3_zs_1p = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh3_zs_1p;;

(** {12 Upgrading from Nh2_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let nh2_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Nh2_zs;;

(** {12 Upgrading from Oh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let oh_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Oh_zs;;

(** {12 Upgrading from Sh_zs through Block_zeroonesingle through Block_zeroone to Segment_head.} *)

let sh_zs = segment_head_symbol_of_block_zeroonesingle_symbol Bzss_t.Sh_zs;;

(** {9 Upgrading from Block_zeroonedouble through Block_zeroone to Segment_head.} *)

let segment_head_symbol_of_block_zeroonedouble_symbol smb_bzd =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_bzd in
  segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch2_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

let ch2_d = segment_head_symbol_of_block_zeroonedouble_symbol Bzds_t.Ch2_d;;

(** {12 Upgrading from Co_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

let co_d = segment_head_symbol_of_block_zeroonedouble_symbol Bzds_t.Co_d;;

(** {12 Upgrading from Nh_d through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

let nh_d = segment_head_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh_d;;

(** {12 Upgrading from Nh2_d_1p through Block_zeroonedouble through Block_zeroone to Segment_head.} *)

let nh2_d_1p = segment_head_symbol_of_block_zeroonedouble_symbol Bzds_t.Nh2_d_1p;;

(** {9 Upgrading from Block_zeroonetriple through Block_zeroone to Segment_head.} *)

let segment_head_symbol_of_block_zeroonetriple_symbol smb_bzt =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_bzt in
  segment_head_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Ch_t through Block_zeroonetriple through Block_zeroone to Segment_head.} *)

let ch_t = segment_head_symbol_of_block_zeroonetriple_symbol Bzts_t.Ch_t;;

(** {9 Upgrading from Block_zeroonehalfbridge through Block_zeroone to Segment_head.} *)

let block_zeroonehalfbridge = segment_head_symbol_of_block_zeroone_symbol Bzos_t.Block_zeroonehalfbridge;;

(** {6 Upgrading from Segment_rightextended to Segment_head.} *)

let segment_rightextended = Shs_t.Segment_rightextended;;

(** created by ./do_entitysum_symbol_v_ml.sh segment_head 12 January 2011. *)


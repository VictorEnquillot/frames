(** {3 A Symbol for a Segment_buried.} *)

let nam_mod = "Segment_buried_symbol_v";;

(** {6 Modules.} *)

module Bdds_t = Block_onedoubleonedouble_symbol_t
module Bdds_v = Block_onedoubleonedouble_symbol_v
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdss_v = Block_onedoubleonesingle_symbol_v
module Boos_t = Block_oneone_symbol_t
module Boos_v = Block_oneone_symbol_v
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsds_v = Block_onesingleonedouble_symbol_v
module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsss_v = Block_onesingleonesingle_symbol_v
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bsts_v = Block_onesingleonetriple_symbol_v
module Btss_t = Block_onetripleonesingle_symbol_t
module Btss_v = Block_onetripleonesingle_symbol_v
module Sbs_t = Segment_buried_symbol_t

(** {6 Displaying.} *)

let name = function
  | Sbs_t.Segment_oneone -> Format.sprintf "%s" "segment_oneone"
  | Sbs_t.Block_oneone_symbol smb_boo -> 
      Boos_v.name smb_boo
  | Sbs_t.Segment_leftextended -> Format.sprintf "%s" "segment_leftextended"
  | Sbs_t.Polysegment -> Format.sprintf "%s" "polysegment"
;;

let print ppf = function
  | Sbs_t.Segment_oneone -> Format.fprintf ppf "%s" "segment_oneone"
  | Sbs_t.Block_oneone_symbol smb_boo -> 
      Boos_v.print ppf smb_boo
  | Sbs_t.Segment_leftextended -> Format.fprintf ppf "%s" "segment_leftextended"
  | Sbs_t.Polysegment -> Format.fprintf ppf "%s" "polysegment"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found segment_buried_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Segment_oneone from Segment_buried.} *)

(* No Extraction from segment_oneone 0. *)

(** {6 Extracting Block_oneone from Segment_buried.} *)

let block_oneone_symbol_off_segment_buried_symbol = function
  | Sbs_t.Block_oneone_symbol smb_boo -> smb_boo
  | s ->  print_fatal_error
      "block_oneone_symbol_off_segment_buried_symbol"
      "Block_oneone_symbol" (name s)
;;

(** {9 Extracting Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

let block_onesingleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch2_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from ch2_ss 0. *)

(** {12 Extracting Co_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from co_ss 0. *)

(** {12 Extracting Nh2_ss_1p from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh2_ss_1p 0. *)

(** {12 Extracting Nh_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh_ss 0. *)

(** {12 Extracting O_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from o_ss 0. *)

(** {12 Extracting S_ss from Block_onesingleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from s_ss 0. *)

(** {9 Extracting Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

let block_onesingleonedouble_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch_sd from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from ch_sd 0. *)

(** {12 Extracting N_sd from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_sd 0. *)

(** {12 Extracting N_sd_1p from Block_onesingleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_sd_1p 0. *)

(** {9 Extracting Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

let block_onesingleonetriple_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_st from Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st_1p from Block_onesingleonetriple from Block_oneone from Segment_buried.} *)

(* No Extraction from n_st_1p 0. *)

(** {9 Extracting Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

let block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Ch_ds from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from ch_ds 0. *)

(** {12 Extracting N_ds from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from n_ds 0. *)

(** {12 Extracting Nh_ds_1p from Block_onedoubleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {9 Extracting Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

let block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_dd from Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting N_dd_1p from Block_onedoubleonedouble from Block_oneone from Segment_buried.} *)

(* No Extraction from n_dd_1p 0. *)

(** {9 Extracting Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

let block_onetripleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
    Boos_v.block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting C_ts from Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from c_ts 0. *)

(** {12 Extracting N_ts_1p from Block_onetripleonesingle from Block_oneone from Segment_buried.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Extracting Segment_leftextended from Segment_buried.} *)

(* No Extraction from segment_leftextended 0. *)

(** {6 Extracting Polysegment from Segment_buried.} *)

(* No Extraction from polysegment 0. *)

(** {6 Querying.} *)

(** {6 Querying Segment_oneone in Segment_buried.} *)

(* No Query from segment_oneone 0. *)

(** {6 Querying Block_oneone in Segment_buried.} *)

let is_block_oneone_symbol_off_segment_buried_symbol = function
  | Sbs_t.Block_oneone_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

let is_block_onesingleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch2_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from ch2_ss 0. *)

(** {12 Querying Co_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from co_ss 0. *)

(** {12 Querying Nh2_ss_1p in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh2_ss_1p 0. *)

(** {12 Querying Nh_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh_ss 0. *)

(** {12 Querying O_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from o_ss 0. *)

(** {12 Querying S_ss in Block_onesingleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from s_ss 0. *)

(** {9 Querying Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

let is_block_onesingleonedouble_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch_sd in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from ch_sd 0. *)

(** {12 Querying N_sd in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_sd 0. *)

(** {12 Querying N_sd_1p in Block_onesingleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_sd_1p 0. *)

(** {9 Querying Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

let is_block_onesingleonetriple_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_st in Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st_1p in Block_onesingleonetriple in Block_oneone in Segment_buried.} *)

(* No Query from n_st_1p 0. *)

(** {9 Querying Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

let is_block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Ch_ds in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from ch_ds 0. *)

(** {12 Querying N_ds in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from n_ds 0. *)

(** {12 Querying Nh_ds_1p in Block_onedoubleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from nh_ds_1p 0. *)

(** {9 Querying Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

let is_block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_dd in Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from c_dd 0. *)

(** {12 Querying N_dd_1p in Block_onedoubleonedouble in Block_oneone in Segment_buried.} *)

(* No Query from n_dd_1p 0. *)

(** {9 Querying Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

let is_block_onetripleonesingle_symbol_off_segment_buried_symbol smb_sgb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_sgb)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_sgb in
      Boos_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying C_ts in Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from c_ts 0. *)

(** {12 Querying N_ts_1p in Block_onetripleonesingle in Block_oneone in Segment_buried.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Querying Segment_leftextended in Segment_buried.} *)

(* No Query from segment_leftextended 0. *)

(** {6 Querying Polysegment in Segment_buried.} *)

(* No Query from polysegment 0. *)

(** {6 Upgrading from Segment_oneone to Segment_buried.} *)

let segment_oneone = Sbs_t.Segment_oneone;;

(** {6 Upgrading from Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_oneone_symbol smb_boo =
  Sbs_t.Block_oneone_symbol smb_boo
;;

(** {9 Upgrading from Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onesingleonesingle_symbol smb_bss =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_bss in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch2_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let ch2_ss = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.Ch2_ss;;

(** {12 Upgrading from Co_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let co_ss = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.Co_ss;;

(** {12 Upgrading from Nh2_ss_1p through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let nh2_ss_1p = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh2_ss_1p;;

(** {12 Upgrading from Nh_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let nh_ss = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.Nh_ss;;

(** {12 Upgrading from O_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let o_ss = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.O_ss;;

(** {12 Upgrading from S_ss through Block_onesingleonesingle through Block_oneone to Segment_buried.} *)

let s_ss = segment_buried_symbol_of_block_onesingleonesingle_symbol Bsss_t.S_ss;;

(** {9 Upgrading from Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onesingleonedouble_symbol smb_bsd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_bsd in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch_sd through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

let ch_sd = segment_buried_symbol_of_block_onesingleonedouble_symbol Bsds_t.Ch_sd;;

(** {12 Upgrading from N_sd through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

let n_sd = segment_buried_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd;;

(** {12 Upgrading from N_sd_1p through Block_onesingleonedouble through Block_oneone to Segment_buried.} *)

let n_sd_1p = segment_buried_symbol_of_block_onesingleonedouble_symbol Bsds_t.N_sd_1p;;

(** {9 Upgrading from Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onesingleonetriple_symbol smb_bst =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_bst in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_st through Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

let c_st = segment_buried_symbol_of_block_onesingleonetriple_symbol Bsts_t.C_st;;

(** {12 Upgrading from N_st_1p through Block_onesingleonetriple through Block_oneone to Segment_buried.} *)

let n_st_1p = segment_buried_symbol_of_block_onesingleonetriple_symbol Bsts_t.N_st_1p;;

(** {9 Upgrading from Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onedoubleonesingle_symbol smb_bds =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_bds in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Ch_ds through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

let ch_ds = segment_buried_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Ch_ds;;

(** {12 Upgrading from N_ds through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

let n_ds = segment_buried_symbol_of_block_onedoubleonesingle_symbol Bdss_t.N_ds;;

(** {12 Upgrading from Nh_ds_1p through Block_onedoubleonesingle through Block_oneone to Segment_buried.} *)

let nh_ds_1p = segment_buried_symbol_of_block_onedoubleonesingle_symbol Bdss_t.Nh_ds_1p;;

(** {9 Upgrading from Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onedoubleonedouble_symbol smb_bdd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_bdd in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_dd through Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

let c_dd = segment_buried_symbol_of_block_onedoubleonedouble_symbol Bdds_t.C_dd;;

(** {12 Upgrading from N_dd_1p through Block_onedoubleonedouble through Block_oneone to Segment_buried.} *)

let n_dd_1p = segment_buried_symbol_of_block_onedoubleonedouble_symbol Bdds_t.N_dd_1p;;

(** {9 Upgrading from Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

let segment_buried_symbol_of_block_onetripleonesingle_symbol smb_bts =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_bts in
  segment_buried_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from C_ts through Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

let c_ts = segment_buried_symbol_of_block_onetripleonesingle_symbol Btss_t.C_ts;;

(** {12 Upgrading from N_ts_1p through Block_onetripleonesingle through Block_oneone to Segment_buried.} *)

let n_ts_1p = segment_buried_symbol_of_block_onetripleonesingle_symbol Btss_t.N_ts_1p;;

(** {6 Upgrading from Segment_leftextended to Segment_buried.} *)

let segment_leftextended = Sbs_t.Segment_leftextended;;

(** {6 Upgrading from Polysegment to Segment_buried.} *)

let polysegment = Sbs_t.Polysegment;;

(** created by ./do_entitysum_symbol_v_ml.sh segment_buried 12 January 2011. *)


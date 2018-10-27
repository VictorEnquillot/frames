(** {6 Extracting.} *)

let block_oneone_symbol_off_segment_buried_symbol = function
  | Sbs_v smb_boo -> smb_boo
  | s -> Erm_v.print_fatal_error nam_cod
     "block_oneone_symbol_off_segment_buried_symbol"
     "Block_oneone_symbol"
     (name s)
    "check"
;;

let block_onesingleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonedouble_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onesingleonetriple_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;

let block_onetripleonesingle_symbol_off_segment_buried_symbol smb_seb =
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
    B11s_v_off_block_oneone_symbol smb_boo
;;



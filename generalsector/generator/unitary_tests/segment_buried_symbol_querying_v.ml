(** {6 Querying.} *)

let is_block_oneone_symbol_off_segment_buried_symbol = function
  | Segment_buried_symbol_t.Block_oneone_symbol _ -> true
  | _ -> false
;;

let is_block_onesingleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonedouble_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onesingleonetriple_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onedoubleonedouble_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

let is_block_onetripleonesingle_symbol_off_segment_buried_symbol smb_seb =
  if not (is_block_oneone_symbol_off_segment_buried_symbol smb_seb)
  then false
  else
    begin
  let smb_boo = block_oneone_symbol_off_segment_buried_symbol smb_seb in
      B11s_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;



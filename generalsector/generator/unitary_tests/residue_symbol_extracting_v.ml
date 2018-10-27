(** {6 Extracting.} *)


let residue_nterminal_symbol_off_residue_symbol = function
  | Res_t.Residue_nterminal_symbol smb_ren -> smb_ren
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_nterminal_symbol_off_residue_symbol"
     "Residue_nterminal_symbol"
     (name s)
    "check"
;;

let residue_nterminal_segmented_symbol_off_residue_symbol smb_ree =
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
    Rns_v_off_residue_nterminal_symbol smb_ren
;;

let residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree =
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
    Rns_v_off_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree in
    Rnfs_v_off_residue_nterminal_fragmented_symbol smb_rnf
;;

let residue_buried_symbol_off_residue_symbol = function
  | Res_t.Residue_buried_symbol smb_reb -> smb_reb
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_buried_symbol_off_residue_symbol"
     "Residue_buried_symbol"
     (name s)
    "check"
;;

let residue_buried_segmented_symbol_off_residue_symbol smb_ree =
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
    Rbs_v_off_residue_buried_symbol smb_reb
;;

let residue_buried_fragmented_symbol_off_residue_symbol smb_ree =
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
    Rbs_v_off_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_ree in
    Rbfs_v_off_residue_buried_fragmented_symbol smb_rbf
;;



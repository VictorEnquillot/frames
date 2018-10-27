(** {6 Querying.} *)


let is_residue_nterminal_symbol_off_residue_symbol = function
  | Res_t.Residue_nterminal_symbol _ -> true
  | _ -> false
;;

let is_residue_nterminal_segmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
      Rns_v.is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_ren
    end
;;

let is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
      Rns_v.is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_ren
    end
;;

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree in
      Rnfs_v.is_molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
    end
;;

let is_residue_buried_symbol_off_residue_symbol = function
  | Res_t.Residue_buried_symbol _ -> true
  | _ -> false
;;

let is_residue_buried_segmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
      Rbs_v.is_residue_buried_segmented_symbol_off_residue_buried_symbol smb_reb
    end
;;

let is_residue_buried_fragmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
      Rbs_v.is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_reb
    end
;;

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_fragmented_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_ree in
      Rbfs_v.is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
    end
;;



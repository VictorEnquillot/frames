(** {6 Naming.} *)

let name = function
  | Res_t.Residue_nterminal_symbol smb_ren ->
      Rns_v.name smb_ren
  | Res_t.Residue_buried_symbol smb_reb ->
      Rbs_v.name smb_reb
;;



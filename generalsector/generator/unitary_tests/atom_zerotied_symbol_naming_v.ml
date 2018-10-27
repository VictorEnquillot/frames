(** {6 Naming.} *)

let name = function
  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->
      A0rs_v.name smb_a0r
  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->
      A0as_v.name smb_a0a
  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->
      A0cs_v.name smb_a0c
  | A0s_t.Halfbridge_symbol smb_hae ->
      Has_v.name smb_hae
;;



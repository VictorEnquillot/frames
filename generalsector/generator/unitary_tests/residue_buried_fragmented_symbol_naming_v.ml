(** {6 Naming.} *)

let name = function
  | Rbfs_t.Molecule_aminoacid_proline -> "molecule_aminoacid_proline"
  | Rbfs_t.Molecule_aminoacid_regular_symbol smb_mar ->
      Mars_v.name smb_mar
;;



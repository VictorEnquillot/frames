(** {3 The functionalities for a Symbol for a Field in a Record of a Pdb file.} *)

let nam_cod = "Fieldpdb_symbol_v";;




let string_of_fieldpdb_symbol = function
  | Fieldpdb_symbol_t.Recordname_fieldpdb_symbol -> "Record_name"

  | Fieldpdb_symbol_t.Anisou_fieldpdb_symbol smb ->
      Anisou_fieldpdb_symbol_v.string_of_anisou_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Atom_fieldpdb_symbol smb ->
      Atom_fieldpdb_symbol_v.string_of_atom_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Cispep_fieldpdb_symbol smb ->
      Cispep_fieldpdb_symbol_v.string_of_cispep_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Dbref_fieldpdb_symbol smb ->
      Dbref_fieldpdb_symbol_v.string_of_dbref_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Dbref1_fieldpdb_symbol smb ->
      Dbref1_fieldpdb_symbol_v.string_of_dbref1_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Dbref2_fieldpdb_symbol smb ->
      Dbref2_fieldpdb_symbol_v.string_of_dbref2_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Het_fieldpdb_symbol smb ->
      Het_fieldpdb_symbol_v.string_of_het_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Hetatm_fieldpdb_symbol smb ->
      Hetatm_fieldpdb_symbol_v.string_of_hetatm_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Header_fieldpdb_symbol smb ->
      Header_fieldpdb_symbol_v.string_of_header_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Helix_fieldpdb_symbol smb ->
      Helix_fieldpdb_symbol_v.string_of_helix_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Seqadv_fieldpdb_symbol smb ->
      Seqadv_fieldpdb_symbol_v.string_of_seqadv_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Seqres_fieldpdb_symbol smb ->
      Seqres_fieldpdb_symbol_v.string_of_seqres_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Site_fieldpdb_symbol smb ->
      Site_fieldpdb_symbol_v.string_of_site_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Sheet_fieldpdb_symbol smb ->
      Sheet_fieldpdb_symbol_v.string_of_sheet_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Ssbond_fieldpdb_symbol smb ->
      Ssbond_fieldpdb_symbol_v.string_of_ssbond_fieldpdb_symbol smb
  | Fieldpdb_symbol_t.Ter_fieldpdb_symbol smb ->
      Ter_fieldpdb_symbol_v.string_of_ter_fieldpdb_symbol smb
;;

let name smb =
  Format.sprintf "%s" (string_of_fieldpdb_symbol smb)
;;

let print ppf smb =
  Format.fprintf ppf "%s" (string_of_fieldpdb_symbol smb)
;;

let recordname_fieldpdb_symbol = Fieldpdb_symbol_t.Recordname_fieldpdb_symbol;;


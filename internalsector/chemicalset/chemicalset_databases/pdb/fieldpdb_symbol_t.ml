(** {3 A Symbol for a  field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect1.html}
        http://www.wwpdb.org/documentation/format32/sect1.html}
*)


type fieldpdb_symbol = 
  | Recordname_fieldpdb_symbol
  | Anisou_fieldpdb_symbol of Anisou_fieldpdb_symbol_t.anisou_fieldpdb_symbol 
  | Atom_fieldpdb_symbol of Atom_fieldpdb_symbol_t.atom_fieldpdb_symbol 
  | Cispep_fieldpdb_symbol of Cispep_fieldpdb_symbol_t.cispep_fieldpdb_symbol
  | Dbref_fieldpdb_symbol of Dbref_fieldpdb_symbol_t.dbref_fieldpdb_symbol 
  | Dbref1_fieldpdb_symbol of Dbref1_fieldpdb_symbol_t.dbref1_fieldpdb_symbol 
  | Dbref2_fieldpdb_symbol of Dbref2_fieldpdb_symbol_t.dbref2_fieldpdb_symbol 
  | Het_fieldpdb_symbol of Het_fieldpdb_symbol_t.het_fieldpdb_symbol 
  | Hetatm_fieldpdb_symbol of Hetatm_fieldpdb_symbol_t.hetatm_fieldpdb_symbol 
  | Header_fieldpdb_symbol of Header_fieldpdb_symbol_t.header_fieldpdb_symbol 
  | Helix_fieldpdb_symbol of Helix_fieldpdb_symbol_t.helix_fieldpdb_symbol 
  | Seqadv_fieldpdb_symbol of Seqadv_fieldpdb_symbol_t.seqadv_fieldpdb_symbol
  | Seqres_fieldpdb_symbol of Seqres_fieldpdb_symbol_t.seqres_fieldpdb_symbol
  | Site_fieldpdb_symbol of Site_fieldpdb_symbol_t.site_fieldpdb_symbol
  | Sheet_fieldpdb_symbol of Sheet_fieldpdb_symbol_t.sheet_fieldpdb_symbol  
  | Ssbond_fieldpdb_symbol of Ssbond_fieldpdb_symbol_t.ssbond_fieldpdb_symbol 
  | Ter_fieldpdb_symbol of Ter_fieldpdb_symbol_t.ter_fieldpdb_symbol 
;;

(** 
@see {{:http://bmerc-www.bu.edu/needle-doc/latest/atom-format.html} 
        http://bmerc-www.bu.edu/needle-doc/latest/atom-format.html} 
*)

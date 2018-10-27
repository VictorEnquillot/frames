(** {3 The functionalities fro a Symbol Formula for a Pack of the Pdb} *)


let make = function
  | Sectionpdb_symbol_t.Title_sectionpdb_symbol -> 
    [Clusterpdb_symbol_v.title; Clusterpdb_symbol_v.split; Clusterpdb_symbol_v.caveat; Clusterpdb_symbol_v.compnd; Clusterpdb_symbol_v.source; Clusterpdb_symbol_v.keywds; Clusterpdb_symbol_v.expdta; Clusterpdb_symbol_v.author; Clusterpdb_symbol_v.revdat; Clusterpdb_symbol_v.sprsde; Clusterpdb_symbol_v.jrnl; Clusterpdb_symbol_v.remark]

  | s when s = Sectionpdb_symbol_v.primary_structure_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.dbref; Clusterpdb_symbol_v.dbref1; Clusterpdb_symbol_v.dbref2; Clusterpdb_symbol_v.seqadv; Clusterpdb_symbol_v.seqres; Clusterpdb_symbol_v.modres]
	
  | s when s = Sectionpdb_symbol_v.heterogen_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.het; Clusterpdb_symbol_v.hetnam; Clusterpdb_symbol_v.hetsyn; Clusterpdb_symbol_v.formul]
	
  | s when s = Sectionpdb_symbol_v.secondary_structure_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.helix; Clusterpdb_symbol_v.sheet] 
	
  | s when s = Sectionpdb_symbol_v.connectivity_annotations_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.ssbond; Clusterpdb_symbol_v.link; Clusterpdb_symbol_v.cispep]
	
  | s when s = Sectionpdb_symbol_v.miscellaneous_features_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.site]
	
  | s when s = Sectionpdb_symbol_v.crystallographic_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.cryst1]
	
  | s when s = Sectionpdb_symbol_v.coordinate_transformation_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.origx1; Clusterpdb_symbol_v.origx2; Clusterpdb_symbol_v.origx3; Clusterpdb_symbol_v.scale1; Clusterpdb_symbol_v.scale2; Clusterpdb_symbol_v.scale3; Clusterpdb_symbol_v.mtrix1; Clusterpdb_symbol_v.mtrix2; Clusterpdb_symbol_v.mtrix3]
	
  | s when s = Sectionpdb_symbol_v.coordinate_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.model; Clusterpdb_symbol_v.atom; Clusterpdb_symbol_v.anisou; Clusterpdb_symbol_v.ter; Clusterpdb_symbol_v.hetatm; Clusterpdb_symbol_v.endmdl]
	
  | s when s = Sectionpdb_symbol_v.connectivity_sectionpdb_symbol ->
      [Clusterpdb_symbol_v.conect]
	
  | s when s = Sectionpdb_symbol_v.bookkeeping_sectionpdb_symbol -> 
      [Clusterpdb_symbol_v.master; Clusterpdb_symbol_v.end_]
	
  | Sectionpdb_symbol_t.Next s -> failwith "Unkown_sectionpdb"
;;

let clusterpdb_symbol_list_off_sectionpdb_symbol_formula frm_smb_scp =
  frm_smb_scp
;;

let clusterpdb_symbol_list_off_sectionpdb_symbol sym_scp =
  make sym_scp
;;


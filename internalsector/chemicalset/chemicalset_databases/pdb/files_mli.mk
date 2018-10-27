# interface (.mli) with implementation file (.ml)
FILES_MLI = \
  tokenpdb_t.mli \
  tokenpdb_v.mli \
  atompdb_symbol_t.mli \
  atompdb_symbol_v.mli \
  hetatmpdb_symbol_t.mli \
  hetatmpdb_symbol_v.mli \
  residuepdb_symbol_t.mli \
  residuepdb_symbol_v.mli \
  moleculepdb_symbol_t.mli \
  moleculepdb_symbol_v.mli \
  anisou_fieldpdb_symbol_t.mli \
  anisou_fieldpdb_symbol_v.mli \
  atom_fieldpdb_symbol_t.mli \
  atom_fieldpdb_symbol_v.mli \
  header_fieldpdb_symbol_t.mli \
  header_fieldpdb_symbol_v.mli \
  cispep_fieldpdb_symbol_t.mli \
  cispep_fieldpdb_symbol_v.mli \
  helix_fieldpdb_symbol_t.mli \
  helix_fieldpdb_symbol_v.mli \
  hetatm_fieldpdb_symbol_t.mli \
  hetatm_fieldpdb_symbol_v.mli \
  het_fieldpdb_symbol_t.mli \
  het_fieldpdb_symbol_v.mli \
  seqadv_fieldpdb_symbol_t.mli \
  seqadv_fieldpdb_symbol_v.mli \
  seqres_fieldpdb_symbol_t.mli \
  seqres_fieldpdb_symbol_v.mli \
  ter_fieldpdb_symbol_t.mli \
  ter_fieldpdb_symbol_v.mli \
  dbref_fieldpdb_symbol_t.mli \
  dbref_fieldpdb_symbol_v.mli \
  dbref1_fieldpdb_symbol_t.mli \
  dbref1_fieldpdb_symbol_v.mli \
  dbref2_fieldpdb_symbol_t.mli \
  dbref2_fieldpdb_symbol_v.mli \
  hetatm_fieldpdb_symbol_t.mli \
  hetatm_fieldpdb_symbol_v.mli \
  link_fieldpdb_symbol_t.mli \
  link_fieldpdb_symbol_v.mli \
  het_fieldpdb_symbol_t.mli \
  het_fieldpdb_symbol_v.mli \
  modres_fieldpdb_symbol_t.mli \
  modres_fieldpdb_symbol_v.mli \
  sheet_fieldpdb_symbol_t.mli \
  sheet_fieldpdb_symbol_v.mli \
  site_fieldpdb_symbol_t.mli \
  site_fieldpdb_symbol_v.mli \
  ssbond_fieldpdb_symbol_t.mli \
  ssbond_fieldpdb_symbol_v.mli \
  fieldpdb_symbol_t.mli \
  fieldpdb_symbol_v.mli \
  fieldpdb_tools_v.mli \
  recordpdb_symbol_t.mli \
  recordpdb_symbol_v.mli \
   entrypdb_symbol_t.mli \
   entrypdb_symbol_v.mli \
   clusterpdb_symbol_t.mli \
   clusterpdb_symbol_v.mli \
   packpdb_symbol_t.mli \
   packpdb_symbol_v.mli \
  atom_fieldpdb_data_t.mli \
  atom_fieldpdb_data_v.mli \
  anisou_fieldpdb_data_t.mli \
  anisou_fieldpdb_data_v.mli \
  cispep_fieldpdb_data_t.mli \
  cispep_fieldpdb_data_v.mli \
  dbref_fieldpdb_data_t.mli \
  dbref_fieldpdb_data_v.mli \
  dbref1_fieldpdb_data_t.mli \
  dbref1_fieldpdb_data_v.mli \
  dbref2_fieldpdb_data_t.mli \
  dbref2_fieldpdb_data_v.mli \
  helix_fieldpdb_data_t.mli \
  helix_fieldpdb_data_v.mli \
  hetatm_fieldpdb_data_t.mli \
  hetatm_fieldpdb_data_v.mli \
  het_fieldpdb_data_t.mli \
  het_fieldpdb_data_v.mli \
  link_fieldpdb_data_t.mli \
  link_fieldpdb_data_v.mli \
  modres_fieldpdb_data_t.mli \
  modres_fieldpdb_data_v.mli \
  seqadv_fieldpdb_data_t.mli \
  seqadv_fieldpdb_data_v.mli \
  seqres_fieldpdb_data_t.mli \
  seqres_fieldpdb_data_v.mli \
  sheet_fieldpdb_data_t.mli \
  sheet_fieldpdb_data_v.mli \
  ssbond_fieldpdb_data_t.mli \
  ssbond_fieldpdb_data_v.mli \
  site_fieldpdb_data_t.mli \
  site_fieldpdb_data_v.mli \
  ter_fieldpdb_data_t.mli \
  ter_fieldpdb_data_v.mli \
   entrypdb_keypdb_t.mli \
   entrypdb_keypdb_v.mli \
   entrypdb_data_t.mli \
   entrypdb_data_v.mli \
   clusterpdb_keypdb_t.mli \
   clusterpdb_keypdb_v.mli \
   clusterpdb_data_t.mli \
   clusterpdb_data_v.mli \
   seqres_clusterpdb_data_t.mli \
   seqres_clusterpdb_data_v.mli \
   packpdb_markerpdb_t.mli \
   packpdb_markerpdb_v.mli \
   packpdb_keypdb_t.mli \
   packpdb_keypdb_v.mli \
   packpdb_data_t.mli \
   packpdb_data_v.mli \
   seqres_packpdb_data_t.mli \
   seqres_packpdb_data_v.mli \
   chain_sequencepdb_t.mli \
   chain_sequencepdb_v.mli \
   residue_packpdb_markerpdb_t.mli \
   residue_packpdb_markerpdb_v.mli \
   residue_packpdb_keypdb_t.mli \
   residue_packpdb_keypdb_v.mli \
   residue_packpdb_data_t.mli \
   residue_packpdb_data_v.mli \
   atom_recordpdb_markerpdb_t.mli \
   atom_recordpdb_markerpdb_v.mli \
   atom_recordpdb_keypdb_t.mli \
   atom_recordpdb_keypdb_v.mli \
   atom_fieldpdb_values_t.mli \
   atom_fieldpdb_values_v.mli \
   protein_sequencepdb_t.mli \
   protein_sequencepdb_v.mli \
   atom_recordpdb_data_t.mli \
   atom_recordpdb_data_v.mli \
   molecule_packpdb_markerpdb_t.mli \
   molecule_packpdb_markerpdb_v.mli \
   molecule_packpdb_keypdb_t.mli \
   molecule_packpdb_keypdb_v.mli \
   molecule_packpdb_data_t.mli \
   molecule_packpdb_data_v.mli \
   hetatm_recordpdb_markerpdb_t.mli \
   hetatm_recordpdb_markerpdb_v.mli \
   hetatm_recordpdb_keypdb_t.mli \
   hetatm_recordpdb_keypdb_v.mli \
   hetatm_recordpdb_data_t.mli \
   hetatm_recordpdb_data_v.mli \
 sectionpdb_data_v.mli \
   # sidechain_packpdb_markerpdb_t.mli \
   # sidechain_packpdb_markerpdb_v.mli \
   # sidechain_packpdb_keypdb_t.mli \
   # sidechain_packpdb_keypdb_v.mli \
   # fragment_packpdb_markerpdb_t.mli \
   # fragment_packpdb_markerpdb_v.mli \
   # fragment_packpdb_keypdb_t.mli \
   # fragment_packpdb_keypdb_v.mli \
   # block_packpdb_markerpdb_t.mli \
   # block_packpdb_markerpdb_v.mli \
   # block_packpdb_keypdb_t.mli \
   # block_packpdb_keypdb_v.mli \
 
# #   clusterpdb_symbol_formula_t.mli \
# #   clusterpdb_symbol_formula_v.mli \
# # atom_recordpdb_symbol_formula_t.mli \
# # atom_recordpdb_symbol_formula_v.mli \
# # atom_recordpdb_data_t.mli \
# # atom_recordpdb_data_v.mli \
# dbref_recordpdb_symbol_formula_t.mli \
# dbref_recordpdb_symbol_formula_v.mli \
# dbref_recordpdb_data_t.mli \
# dbref_recordpdb_data_v.mli \
#   header_recordpdb_symbol_formula_t.mli \
#   header_recordpdb_symbol_formula_v.mli \
#   seqres_recordpdb_symbol_formula_t.mli \
#   seqres_recordpdb_symbol_formula_v.mli \
#   ter_recordpdb_symbol_formula_t.mli \
#   ter_recordpdb_symbol_formula_v.mli \
#   header_fieldpdb_symbol_t.mli \
#   header_fieldpdb_symbol_v.mli \
#   header_fieldpdb_data_t.mli \
#   header_fieldpdb_data_v.mli \
#   header_recordpdb_data_t.mli \
#   header_recordpdb_data_v.mli \
#   seqres_fieldpdb_data_t.mli \
#   seqres_fieldpdb_data_v.mli \
#   seqres_recordpdb_data_t.mli \
#   seqres_recordpdb_data_v.mli \
#   ter_recordpdb_data_t.mli \
#   ter_recordpdb_data_v.mli \
#   bookkeeping_clusterpdb_symbol_t.mli \
#   connectivity_clusterpdb_symbol_t.mli \
#   connectivity_annotations_clusterpdb_symbol_t.mli \
#   coordinate_clusterpdb_symbol_t.mli \
#   coordinate_transformation_clusterpdb_symbol_t.mli \
#   crystallographic_clusterpdb_symbol_t.mli \
#   heterogen_clusterpdb_symbol_t.mli \
#   miscellaneous_features_clusterpdb_symbol_t.mli \
#   primary_structure_clusterpdb_symbol_t.mli \
#   secondary_structure_clusterpdb_symbol_t.mli \
#   title_section_clusterpdb_symbol_t.mli \
#   bookkeeping_clusterpdb_symbol_v.mli \
#   connectivity_clusterpdb_symbol_v.mli \
#   connectivity_annotations_clusterpdb_symbol_v.mli \
#   coordinate_clusterpdb_symbol_v.mli \
#   coordinate_transformation_clusterpdb_symbol_v.mli \
#   crystallographic_clusterpdb_symbol_v.mli \
#   heterogen_clusterpdb_symbol_v.mli \
#   miscellaneous_features_clusterpdb_symbol_v.mli \
#   primary_structure_clusterpdb_symbol_v.mli \
#   secondary_structure_clusterpdb_symbol_v.mli \
#   title_section_clusterpdb_symbol_v.mli \
#   entrypdb_symbol_formula_t.mli \
#   entrypdb_symbol_formula_v.mli \
#   coordinate_clusterpdb_symbol_t.mli \
#   coordinate_clusterpdb_symbol_v.mli \
#   recordpdb_data_t.mli \
 
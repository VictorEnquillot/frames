(** {6 Upgrading.} *)


let residue_symbol_of_residue_nterminal_symbol smb_ren =
Res_t.Residue_nterminal_symbol smb_ren
;;

let residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns =
  let smb_ren = Rns_v.residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns in
residue_symbol_of_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_glycine = residue_symbol_of_residue_nterminal_segmented_symbol Rnss_t.Molecule_aminoacid_glycine;;

let residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
  let smb_ren = Rns_v.residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf in
residue_symbol_of_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_proline = residue_symbol_of_residue_nterminal_fragmented_symbol Rnfs_t.Molecule_aminoacid_proline;;

let residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rnf = Rnfs_v.residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_symbol_of_residue_nterminal_fragmented_symbol smb_rnf
;;

let alanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

let arginine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

let asparagine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

let aspartic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

let cysteine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

let glutamine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

let glutamic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

let histidine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

let isoleucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

let leucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

let lysine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

let methionine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

let phenylalanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

let serine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

let threonine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

let tryptophan = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

let tyrosine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

let valine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

let residue_symbol_of_residue_buried_symbol smb_reb =
Res_t.Residue_buried_symbol smb_reb
;;

let residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs =
  let smb_reb = Rbs_v.residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs in
residue_symbol_of_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_glycine = residue_symbol_of_residue_buried_segmented_symbol Rbss_t.Molecule_aminoacid_glycine;;

let residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf =
  let smb_reb = Rbs_v.residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf in
residue_symbol_of_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_proline = residue_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;

let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rbf = Rbfs_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_symbol_of_residue_buried_fragmented_symbol smb_rbf
;;

let alanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

let arginine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

let asparagine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

let aspartic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

let cysteine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

let glutamine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

let glutamic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

let histidine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

let isoleucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

let leucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

let lysine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

let methionine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

let phenylalanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

let serine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

let threonine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

let tryptophan = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

let tyrosine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

let valine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;



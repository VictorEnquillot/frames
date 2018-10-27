(** {3 The Symbol functionalities to refer for a Glycine-leftextended non-glycine Molecule_aminoacid.} *)

let nam_mod = "Polypeptide_subunit_symbol_v";;

module Als_t = Polypeptide_subunit_symbol_t
module Brl_v = Booted_repeated_list_v
module Dbt_v = Doublet_v
module Idx_p = Index_p
module Fgs_v = Fragment_symbol_v
module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Sgs_v = Segment_symbol_v

(** {6 Making.} *)

let make_of_count cnt =
  Als_t.Proline_leftextended_symbol cnt
;;

let make_of_count_of_molecule_aminoacid_regular_symbol cnt smb =
  let dbt = Dbt_v.make cnt smb in
  Als_t.Regular_leftextended_symbol dbt
;;
    
let make_of_count_of_molecule_aminoacid_fragmented_symbol cnt = function
  | Mas_t.Molecule_aminoacid_proline_symbol smb ->
      make_of_count cnt 
  | Mas_t.Molecule_aminoacid_regular_symbol smb ->
      make_of_count_of_molecule_aminoacid_regular_symbol cnt smb
;;

let make_of_polyglycinefragmentedended_symbol_booted_repeated_list smb_brl =
(* (g;g;..;g], f) -> (n, f) *)

    let smb_amf = Brl_v.boot_part_off_booted_repeated_list smb_brl in
    let cnt_gly = Brl_v.count smb_brl in 
    make_of_count_of_molecule_aminoacid_fragmented_symbol cnt_gly smb_amf
;;

(** {6 Extracting.} *)

let molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol = function
  | Als_t.Proline_leftextended_symbol _ -> 
      Mas_t.Molecule_aminoacid_proline_symbol Mas_t.Proline
  | Als_t.Regular_leftextended_symbol dbt -> 
      let smb_mar = Dbt_v.right_off_doublet dbt in
      Mas_t.Molecule_aminoacid_regular_symbol smb_mar
;;

let glycine_count_of_polypeptide_subunit_symbol = function
  | Als_t.Proline_leftextended_symbol cnt -> cnt
  | Als_t.Regular_leftextended_symbol dbt -> Dbt_v.left_off_doublet dbt
;;

let buried_fragment_symbol_backbone_of_polypeptide_subunit_symbol smb_alx =
  let cnt = glycine_count_of_polypeptide_subunit_symbol smb_alx in
  let smb_sgb = Sgs_v.polymerize_of_count_of_buried_segment_symbol cnt Sgs_v.peptideca_glycine_buried_b in
  let smb_fgb = Fgs_v.peptideca_regular_embedded_b in
  Fgs_v.extends_of_buried_segment_symbol_of_buried_fragment_symbol smb_sgb smb_fgb 
;;

(** {6 Converting.} *)

let name smb_plx =
  let smb_pef = 
    molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol 
      smb_plx in
  let nam_pef = Mas_v.name_molecule_aminoacid_fragmented_symbol smb_pef in 
  let cnt = glycine_count_of_polypeptide_subunit_symbol smb_plx in
  if cnt = Idx_p.zero
  then Format.sprintf "%s" nam_pef
  else Format.sprintf "Glycine%s%s" (Idx_p.name cnt) nam_pef
;; 

let shortname smb_plx =
  let smb_pef = 
    molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol 
      smb_plx in
  let nam_pef = Mas_v.shortname_molecule_aminoacid_fragmented_symbol smb_pef in 
  let cnt = glycine_count_of_polypeptide_subunit_symbol smb_plx in
  if cnt = Idx_p.zero
  then Format.sprintf "x%s" nam_pef
  else Format.sprintf "G%s%s" (Idx_p.name cnt) nam_pef
;; 

let print ppf smb_plx =
  let smb_pef = 
    molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol 
      smb_plx in
  let nam_pef = Mas_v.name_molecule_aminoacid_fragmented_symbol smb_pef in 
  let cnt = glycine_count_of_polypeptide_subunit_symbol smb_plx in
  if cnt = Idx_p.zero
  then Format.fprintf ppf "%s" nam_pef
  else Format.fprintf ppf "Glycine%a%s" Idx_p.print cnt nam_pef
;;


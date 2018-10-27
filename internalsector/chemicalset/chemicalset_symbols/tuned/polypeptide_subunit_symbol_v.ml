(** {3 The functionalities for a Symbol for a Polypeptide_subunit.} *)

let nam_cod = "polypeptide_subunit_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)

let make_of_count cnt =
  Polypeptide_subunit_symbol_t.Proline_leftextended cnt
;;

let make_of_count_of_molecule_aminoacid_fragmented_regular_symbol cnt smb =
  let dbt = Doublet_v.make cnt smb in
  Polypeptide_subunit_symbol_t.Regular_leftextended dbt
;;
    
let make_of_count_of_molecule_aminoacid_fragmented_symbol cnt = function
  | Molecule_aminoacid_fragmented_symbol_t.Proline ->
      make_of_count cnt 
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol smb ->
      make_of_count_of_molecule_aminoacid_fragmented_regular_symbol cnt smb
;;

let make_of_polyglycinefragmentedended_symbol_booted_repeated_list sym_brl =
(* (g;g;..;g], f) -> (n, f) *)

    let sym_amf = Booted_repeated_list_v.boot_part_off_booted_repeated_list sym_brl in
    let cnt_gly = Booted_repeated_list_v.count sym_brl in 
    make_of_count_of_molecule_aminoacid_fragmented_symbol cnt_gly sym_amf
;;

(** {6 Extracting.} *)

let molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol = function
  | Polypeptide_subunit_symbol_t.Proline_leftextended _ -> 
      Molecule_aminoacid_fragmented_symbol_t.Proline 
  | Polypeptide_subunit_symbol_t.Regular_leftextended dbt -> 
      let sym_mar = Doublet_v.right_off_doublet dbt in
      Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_fragmented_regular_symbol sym_mar
;;

let glycine_count_of_polypeptide_subunit_symbol = function
  | Polypeptide_subunit_symbol_t.Proline_leftextended cnt -> 
      cnt
  | Polypeptide_subunit_symbol_t.Regular_leftextended dbt -> 
      Doublet_v.left_off_doublet dbt
;;

let buried_fragment_symbol_backbone_of_polypeptide_subunit_symbol sym_alx =
  let cnt = glycine_count_of_polypeptide_subunit_symbol sym_alx in
  let sym_sgb = 
    Segment_symbol_v.polymerize_of_count_of_buried_segment_symbol 
      cnt Segment_symbol_v.peptideca_glycine_buried_b 
  in
  let sym_fgb = Fragment_symbol_v.peptideca_regular_embedded_b in
  Fragment_symbol_v.extends_of_buried_segment_symbol_of_buried_fragment_symbol sym_sgb sym_fgb 
;;

(** {6 Naming} *)

let name = function
  | Polypeptide_subunit_symbol_t.Proline_leftextended _ -> "proline_leftextended"
  | Polypeptide_subunit_symbol_t.Regular_leftextended _ -> "regular_leftextended"
;;

let name sym_plx =
  let sym_pef = 
    molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol 
      sym_plx in
  let nam_pef = Molecule_aminoacid_symbol_v.name_molecule_aminoacid_fragmented_symbol sym_pef in 
  let cnt = glycine_count_of_polypeptide_subunit_symbol sym_plx in
  if cnt = Index_p.zero
  then Format.sprintf "%s" nam_pef
  else Format.sprintf "Glycine%s%s" (Index_p.name cnt) nam_pef
;; 

let shortname sym_plx =
  let sym_pef = 
    molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol 
      sym_plx in
  let nam_pef = Molecule_aminoacid_symbol_v.shortname_molecule_aminoacid_fragmented_symbol sym_pef in 
  let cnt = glycine_count_of_polypeptide_subunit_symbol sym_plx in
  if cnt = Index_p.zero
  then Format.sprintf "x%s" nam_pef
  else Format.sprintf "G%s%s" (Index_p.name cnt) nam_pef
;; 


(** {6 Extracting} *)



(** {6 Querying} *)



(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let proline_leftextended s = Polypeptide_subunit_symbol_t.Proline_leftextended s;;

let regular_leftextended s = Polypeptide_subunit_symbol_t.Regular_leftextended s;;


(** created by ./generator polypeptide_subunit implementation symbol at 11:5 9 Feb 2012. *)




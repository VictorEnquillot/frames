(** {3 A Symbol for a Molecule.} *)

let nam_mod = "Molecule_symbol_v";;

(** {6 Modules.} *)

module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Mafs_t = Molecule_aminoacid_fragmented_symbol_t
module Mafs_v = Molecule_aminoacid_fragmented_symbol_v
module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Mass_t = Molecule_aminoacid_segmented_symbol_t
module Mass_v = Molecule_aminoacid_segmented_symbol_v
module Mas_t = Molecule_aminoacid_symbol_t
module Mas_v = Molecule_aminoacid_symbol_v
module Mbs_t = Molecule_bridged_symbol_t
module Mbs_v = Molecule_bridged_symbol_v
module Mds_t = Molecule_dendrimer_symbol_t
module Mds_v = Molecule_dendrimer_symbol_v
module Mf1s_t = Molecule_forked_oneforked_symbol_t
module Mf1s_v = Molecule_forked_oneforked_symbol_v
module Mf2s_t = Molecule_forked_twoforked_symbol_t
module Mf2s_v = Molecule_forked_twoforked_symbol_v
module Mf3s_t = Molecule_forked_threeforked_symbol_t
module Mf3s_v = Molecule_forked_threeforked_symbol_v
module Mfms_t = Molecule_forked_moreforked_symbol_t
module Mfms_v = Molecule_forked_moreforked_symbol_v
module Mfs_t = Molecule_forked_symbol_t
module Mfs_v = Molecule_forked_symbol_v
module Ml2s_t = Molecule_linear_diatomic_symbol_t
module Ml2s_v = Molecule_linear_diatomic_symbol_v
module Ml3s_t = Molecule_linear_triatomic_symbol_t
module Ml3s_v = Molecule_linear_triatomic_symbol_v
module Ml4s_t = Molecule_linear_tetratomic_symbol_t
module Ml4s_v = Molecule_linear_tetratomic_symbol_v
module Ml5s_t = Molecule_linear_pentatomic_symbol_t
module Ml5s_v = Molecule_linear_pentatomic_symbol_v
module Mlms_t = Molecule_linear_monoatomic_symbol_t
module Mlms_v = Molecule_linear_monoatomic_symbol_v
module Mlps_t = Molecule_linear_polyatomic_symbol_t
module Mlps_v = Molecule_linear_polyatomic_symbol_v
module Mls_t = Molecule_linear_symbol_t
module Mls_v = Molecule_linear_symbol_v
module Mos_t = Molecule_symbol_t
module Mps_t = Molecule_polymer_symbol_t
module Mps_v = Molecule_polymer_symbol_v
module Nas_t = Nucleicacid_symbol_t
module Nas_v = Nucleicacid_symbol_v
module Pgs_t = Polyglycine_symbol_t
module Pgs_v = Polyglycine_symbol_v
module Plrs_t = Polypeptide_regular_symbol_t
module Plrs_v = Polypeptide_regular_symbol_v
module Pls_t = Polypeptide_symbol_t
module Pls_v = Polypeptide_symbol_v
module Pps_t = Polyproline_symbol_t
module Pps_v = Polyproline_symbol_v

(** {6 Displaying.} *)

let name = function
  | Mos_t.Molecule_aminoacid_symbol smb_mam -> 
      Mas_v.name smb_mam
  | Mos_t.Molecule_bridged_symbol smb_mbd -> 
      Mbs_v.name smb_mbd
  | Mos_t.Molecule_dendrimer_symbol smb_mdn -> 
      Mds_v.name smb_mdn
  | Mos_t.Molecule_forked_symbol smb_mfk -> 
      Mfs_v.name smb_mfk
  | Mos_t.Molecule_linear_symbol smb_ml -> 
      Mls_v.name smb_ml
  | Mos_t.Molecule_nucleoside -> Format.sprintf "%s" "molecule_nucleoside"
  | Mos_t.Molecule_polymer_symbol smb_mp -> 
      Mps_v.name smb_mp
;;

let print ppf = function
  | Mos_t.Molecule_aminoacid_symbol smb_mam -> 
      Mas_v.print ppf smb_mam
  | Mos_t.Molecule_bridged_symbol smb_mbd -> 
      Mbs_v.print ppf smb_mbd
  | Mos_t.Molecule_dendrimer_symbol smb_mdn -> 
      Mds_v.print ppf smb_mdn
  | Mos_t.Molecule_forked_symbol smb_mfk -> 
      Mfs_v.print ppf smb_mfk
  | Mos_t.Molecule_linear_symbol smb_ml -> 
      Mls_v.print ppf smb_ml
  | Mos_t.Molecule_nucleoside -> Format.fprintf ppf "%s" "molecule_nucleoside"
  | Mos_t.Molecule_polymer_symbol smb_mp -> 
      Mps_v.print ppf smb_mp
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_aminoacid from Molecule.} *)

let molecule_aminoacid_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_aminoacid_symbol smb_mam -> smb_mam
  | s ->  print_fatal_error
      "molecule_aminoacid_symbol_off_molecule_symbol"
      "Molecule_aminoacid_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule.} *)

let molecule_aminoacid_segmented_symbol_off_molecule_symbol smb_mol =
  let smb_mam = molecule_aminoacid_symbol_off_molecule_symbol smb_mol in
    Mas_v.molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {12 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule.} *)

(* No Extraction from glycine 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

let molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_mol =
  let smb_mam = molecule_aminoacid_symbol_off_molecule_symbol smb_mol in
    Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {12 Extracting Proline from Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

(* No Extraction from proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule.} *)

let molecule_aminoacid_regular_symbol_off_molecule_symbol smb_mol =
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_mol in
    Mafs_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {6 Extracting Molecule_bridged from Molecule.} *)

let molecule_bridged_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_bridged_symbol smb_mbd -> smb_mbd
  | s ->  print_fatal_error
      "molecule_bridged_symbol_off_molecule_symbol"
      "Molecule_bridged_symbol" (name s)
;;

(** {9 Extracting Fake_b from Molecule_bridged from Molecule.} *)

(* No Extraction from Fake_b 0. *)

(** {9 Extracting Benzene from Molecule_bridged from Molecule.} *)

(* No Extraction from Benzene 0. *)

(** {9 Extracting Phenol from Molecule_bridged from Molecule.} *)

(* No Extraction from Phenol 0. *)

(** {9 Extracting Pyrrole from Molecule_bridged from Molecule.} *)

(* No Extraction from Pyrrole 0. *)

(** {6 Extracting Molecule_dendrimer from Molecule.} *)

let molecule_dendrimer_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_dendrimer_symbol smb_mdn -> smb_mdn
  | s ->  print_fatal_error
      "molecule_dendrimer_symbol_off_molecule_symbol"
      "Molecule_dendrimer_symbol" (name s)
;;

(** {9 Extracting Fake_d2 from Molecule_dendrimer from Molecule.} *)

(* No Extraction from Fake_d2 0. *)

(** {6 Extracting Molecule_forked from Molecule.} *)

let molecule_forked_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_forked_symbol smb_mfk -> smb_mfk
  | s ->  print_fatal_error
      "molecule_forked_symbol_off_molecule_symbol"
      "Molecule_forked_symbol" (name s)
;;

(** {9 Extracting Molecule_forked_oneforked from Molecule_forked from Molecule.} *)

let molecule_forked_oneforked_symbol_off_molecule_symbol smb_mol =
  let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
    Mfs_v.molecule_forked_oneforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Guanidine from Molecule_forked_oneforked from Molecule_forked from Molecule.} *)

(* No Extraction from Guanidine 0. *)

(** {9 Extracting Molecule_forked_twoforked from Molecule_forked from Molecule.} *)

let molecule_forked_twoforked_symbol_off_molecule_symbol smb_mol =
  let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
    Mfs_v.molecule_forked_twoforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Fake_2 from Molecule_forked_twoforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_2 0. *)

(** {9 Extracting Molecule_forked_threeforked from Molecule_forked from Molecule.} *)

let molecule_forked_threeforked_symbol_off_molecule_symbol smb_mol =
  let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
    Mfs_v.molecule_forked_threeforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Fake_3 from Molecule_forked_threeforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_3 0. *)

(** {9 Extracting Molecule_forked_moreforked from Molecule_forked from Molecule.} *)

let molecule_forked_moreforked_symbol_off_molecule_symbol smb_mol =
  let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
    Mfs_v.molecule_forked_moreforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Fake_4 from Molecule_forked_moreforked from Molecule_forked from Molecule.} *)

(* No Extraction from Fake_4 0. *)

(** {6 Extracting Molecule_linear from Molecule.} *)

let molecule_linear_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_linear_symbol smb_ml -> smb_ml
  | s ->  print_fatal_error
      "molecule_linear_symbol_off_molecule_symbol"
      "Molecule_linear_symbol" (name s)
;;

(** {9 Extracting Molecule_linear_monoatomic from Molecule_linear from Molecule.} *)

let molecule_linear_monoatomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear from Molecule.} *)

let atom_zerotied_symbol_off_molecule_symbol smb_mol =
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_symbol smb_mol in
    Mlms_v.atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
;;

(** {9 Extracting Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

let molecule_linear_diatomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_diatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Carbonmonoxide from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Carbonmonoxide 0. *)

(** {12 Extracting Dihydrogen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dihydrogen 0. *)

(** {12 Extracting Dinitrogen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dinitrogen 0. *)

(** {12 Extracting Dioxygen from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Dioxygen 0. *)

(** {12 Extracting Hydrogenchloride from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogenchloride 0. *)

(** {12 Extracting Hydrogenfluoride from Molecule_linear_diatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogenfluoride 0. *)

(** {9 Extracting Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

let molecule_linear_triatomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_triatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Hydrogensulfide from Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Hydrogensulfide 0. *)

(** {12 Extracting Water from Molecule_linear_triatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Water 0. *)

(** {9 Extracting Molecule_linear_tetratomic from Molecule_linear from Molecule.} *)

let molecule_linear_tetratomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_tetratomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Ammonia from Molecule_linear_tetratomic from Molecule_linear from Molecule.} *)

(* No Extraction from Ammonia 0. *)

(** {9 Extracting Molecule_linear_pentatomic from Molecule_linear from Molecule.} *)

let molecule_linear_pentatomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_pentatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Methane from Molecule_linear_pentatomic from Molecule_linear from Molecule.} *)

(* No Extraction from Methane 0. *)

(** {9 Extracting Molecule_linear_polyatomic from Molecule_linear from Molecule.} *)

let molecule_linear_polyatomic_symbol_off_molecule_symbol smb_mol =
  let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
    Mls_v.molecule_linear_polyatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Glycine from Molecule_linear_polyatomic from Molecule_linear from Molecule.} *)

(* No Extraction from glycine 0. *)

(** {6 Extracting Molecule_nucleoside from Molecule.} *)

(* No Extraction from molecule_nucleoside 0. *)

(** {6 Extracting Molecule_polymer from Molecule.} *)

let molecule_polymer_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_polymer_symbol smb_mp -> smb_mp
  | s ->  print_fatal_error
      "molecule_polymer_symbol_off_molecule_symbol"
      "Molecule_polymer_symbol" (name s)
;;

(** {9 Extracting Polypeptide from Molecule_polymer from Molecule.} *)

let polypeptide_symbol_off_molecule_symbol smb_mol =
  let smb_mp = molecule_polymer_symbol_off_molecule_symbol smb_mol in
    Mps_v.polypeptide_symbol_off_molecule_polymer_symbol smb_mp
;;

(** {12 Extracting Polypeptide_regular from Polypeptide from Molecule_polymer from Molecule.} *)

let polypeptide_regular_symbol_off_molecule_symbol smb_mol =
  let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
    Pls_v.polypeptide_regular_symbol_off_polypeptide_symbol smb_plp
;;

(** {12 Extracting Polyproline from Polypeptide from Molecule_polymer from Molecule.} *)

let polyproline_symbol_off_molecule_symbol smb_mol =
  let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
    Pls_v.polyproline_symbol_off_polypeptide_symbol smb_plp
;;

(** {12 Extracting Polyglycine from Polypeptide from Molecule_polymer from Molecule.} *)

let polyglycine_symbol_off_molecule_symbol smb_mol =
  let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
    Pls_v.polyglycine_symbol_off_polypeptide_symbol smb_plp
;;

(** {9 Extracting Nucleicacid from Molecule_polymer from Molecule.} *)

let nucleicacid_symbol_off_molecule_symbol smb_mol =
  let smb_mp = molecule_polymer_symbol_off_molecule_symbol smb_mol in
    Mps_v.nucleicacid_symbol_off_molecule_polymer_symbol smb_mp
;;

(** {12 Extracting Dna from Nucleicacid from Molecule_polymer from Molecule.} *)

(* No Extraction from Dna 0. *)

(** {12 Extracting Rna from Nucleicacid from Molecule_polymer from Molecule.} *)

(* No Extraction from Rna 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid in Molecule.} *)

let is_molecule_aminoacid_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_aminoacid_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule.} *)

let is_molecule_aminoacid_segmented_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_molecule_symbol smb_mol in
      Mas_v.is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {12 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule.} *)

(* No Query from glycine 0. *)

(** {9 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

let is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_molecule_symbol smb_mol in
      Mas_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {12 Querying Proline in Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

(* No Query from proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule.} *)

let is_molecule_aminoacid_regular_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_mol in
      Mafs_v.is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
    end
;;

(** {6 Querying Molecule_bridged in Molecule.} *)

let is_molecule_bridged_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_bridged_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fake_b in Molecule_bridged in Molecule.} *)

(* No Query from Fake_b 0. *)


(** {9 Querying Benzene in Molecule_bridged in Molecule.} *)

(* No Query from Benzene 0. *)


(** {9 Querying Phenol in Molecule_bridged in Molecule.} *)

(* No Query from Phenol 0. *)


(** {9 Querying Pyrrole in Molecule_bridged in Molecule.} *)

(* No Query from Pyrrole 0. *)


(** {6 Querying Molecule_dendrimer in Molecule.} *)

let is_molecule_dendrimer_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_dendrimer_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fake_d2 in Molecule_dendrimer in Molecule.} *)

(* No Query from Fake_d2 0. *)


(** {6 Querying Molecule_forked in Molecule.} *)

let is_molecule_forked_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_forked_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_forked_oneforked in Molecule_forked in Molecule.} *)

let is_molecule_forked_oneforked_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
      Mfs_v.is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Guanidine in Molecule_forked_oneforked in Molecule_forked in Molecule.} *)

(* No Query from Guanidine 0. *)

(** {9 Querying Molecule_forked_twoforked in Molecule_forked in Molecule.} *)

let is_molecule_forked_twoforked_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
      Mfs_v.is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Fake_2 in Molecule_forked_twoforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_2 0. *)

(** {9 Querying Molecule_forked_threeforked in Molecule_forked in Molecule.} *)

let is_molecule_forked_threeforked_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
      Mfs_v.is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Fake_3 in Molecule_forked_threeforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_3 0. *)

(** {9 Querying Molecule_forked_moreforked in Molecule_forked in Molecule.} *)

let is_molecule_forked_moreforked_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_molecule_symbol smb_mol in
      Mfs_v.is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Fake_4 in Molecule_forked_moreforked in Molecule_forked in Molecule.} *)

(* No Query from Fake_4 0. *)

(** {6 Querying Molecule_linear in Molecule.} *)

let is_molecule_linear_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_linear_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_linear_monoatomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_monoatomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear in Molecule.} *)

let is_atom_zerotied_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_symbol smb_mol in
      Mlms_v.is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
    end
;;

(** {9 Querying Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_diatomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Carbonmonoxide in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Carbonmonoxide 0. *)

(** {12 Querying Dihydrogen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dihydrogen 0. *)

(** {12 Querying Dinitrogen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dinitrogen 0. *)

(** {12 Querying Dioxygen in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Dioxygen 0. *)

(** {12 Querying Hydrogenchloride in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogenchloride 0. *)

(** {12 Querying Hydrogenfluoride in Molecule_linear_diatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogenfluoride 0. *)

(** {9 Querying Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_triatomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Hydrogensulfide in Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

(* No Query from Hydrogensulfide 0. *)

(** {12 Querying Water in Molecule_linear_triatomic in Molecule_linear in Molecule.} *)

(* No Query from Water 0. *)

(** {9 Querying Molecule_linear_tetratomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_tetratomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Ammonia in Molecule_linear_tetratomic in Molecule_linear in Molecule.} *)

(* No Query from Ammonia 0. *)

(** {9 Querying Molecule_linear_pentatomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_pentatomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Methane in Molecule_linear_pentatomic in Molecule_linear in Molecule.} *)

(* No Query from Methane 0. *)

(** {9 Querying Molecule_linear_polyatomic in Molecule_linear in Molecule.} *)

let is_molecule_linear_polyatomic_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_molecule_symbol smb_mol in
      Mls_v.is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Glycine in Molecule_linear_polyatomic in Molecule_linear in Molecule.} *)

(* No Query from glycine 0. *)

(** {6 Querying Molecule_nucleoside in Molecule.} *)

(* No Query from molecule_nucleoside 0. *)

(** {6 Querying Molecule_polymer in Molecule.} *)

let is_molecule_polymer_symbol_off_molecule_symbol = function
  | Mos_t.Molecule_polymer_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Polypeptide in Molecule_polymer in Molecule.} *)

let is_polypeptide_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_polymer_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mp = molecule_polymer_symbol_off_molecule_symbol smb_mol in
      Mps_v.is_polypeptide_symbol_off_molecule_polymer_symbol smb_mp
    end
;;

(** {12 Querying Polypeptide_regular in Polypeptide in Molecule_polymer in Molecule.} *)

let is_polypeptide_regular_symbol_off_molecule_symbol smb_mol =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
      Pls_v.is_polypeptide_regular_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {12 Querying Polyproline in Polypeptide in Molecule_polymer in Molecule.} *)

let is_polyproline_symbol_off_molecule_symbol smb_mol =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
      Pls_v.is_polyproline_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {12 Querying Polyglycine in Polypeptide in Molecule_polymer in Molecule.} *)

let is_polyglycine_symbol_off_molecule_symbol smb_mol =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_plp = polypeptide_symbol_off_molecule_symbol smb_mol in
      Pls_v.is_polyglycine_symbol_off_polypeptide_symbol smb_plp
    end
;;

(** {9 Querying Nucleicacid in Molecule_polymer in Molecule.} *)

let is_nucleicacid_symbol_off_molecule_symbol smb_mol =
  if not (is_molecule_polymer_symbol_off_molecule_symbol smb_mol)
  then false
  else
    begin
      let smb_mp = molecule_polymer_symbol_off_molecule_symbol smb_mol in
      Mps_v.is_nucleicacid_symbol_off_molecule_polymer_symbol smb_mp
    end
;;

(** {12 Querying Dna in Nucleicacid in Molecule_polymer in Molecule.} *)

(* No Query from Dna 0. *)

(** {12 Querying Rna in Nucleicacid in Molecule_polymer in Molecule.} *)

(* No Query from Rna 0. *)

(** {6 Upgrading from Molecule_aminoacid to Molecule.} *)

let molecule_symbol_of_molecule_aminoacid_symbol smb_mam =
  Mos_t.Molecule_aminoacid_symbol smb_mam
;;

(** {9 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid to Molecule.} *)

let molecule_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas in
  molecule_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {12 Upgrading from Glycine through Molecule_aminoacid_segmented through Molecule_aminoacid to Molecule.} *)

let glycine = molecule_symbol_of_molecule_aminoacid_segmented_symbol Mass_t.Glycine;;

(** {9 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

let molecule_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf in
  molecule_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {12 Upgrading from Proline through Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

let proline = molecule_symbol_of_molecule_aminoacid_fragmented_symbol Mafs_t.Proline;;

(** {12 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented through Molecule_aminoacid to Molecule.} *)

let molecule_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_maf = Mafs_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    molecule_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {6 Upgrading from Molecule_bridged to Molecule.} *)

let molecule_symbol_of_molecule_bridged_symbol smb_mbd =
  Mos_t.Molecule_bridged_symbol smb_mbd
;;

(** {9 Upgrading from Fake_b through Molecule_bridged to Molecule.} *)

let fake_b = molecule_symbol_of_molecule_bridged_symbol Mbs_t.Fake_b;;

(** {9 Upgrading from Benzene through Molecule_bridged to Molecule.} *)

let benzene = molecule_symbol_of_molecule_bridged_symbol Mbs_t.Benzene;;

(** {9 Upgrading from Phenol through Molecule_bridged to Molecule.} *)

let phenol = molecule_symbol_of_molecule_bridged_symbol Mbs_t.Phenol;;

(** {9 Upgrading from Pyrrole through Molecule_bridged to Molecule.} *)

let pyrrole = molecule_symbol_of_molecule_bridged_symbol Mbs_t.Pyrrole;;

(** {6 Upgrading from Molecule_dendrimer to Molecule.} *)

let molecule_symbol_of_molecule_dendrimer_symbol smb_mdn =
  Mos_t.Molecule_dendrimer_symbol smb_mdn
;;

(** {9 Upgrading from Fake_d2 through Molecule_dendrimer to Molecule.} *)

let fake_d2 = molecule_symbol_of_molecule_dendrimer_symbol Mds_t.Fake_d2;;

(** {6 Upgrading from Molecule_forked to Molecule.} *)

let molecule_symbol_of_molecule_forked_symbol smb_mfk =
  Mos_t.Molecule_forked_symbol smb_mfk
;;

(** {9 Upgrading from Molecule_forked_oneforked through Molecule_forked to Molecule.} *)

let molecule_symbol_of_molecule_forked_oneforked_symbol smb_mfo =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mfo in
  molecule_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Guanidine through Molecule_forked_oneforked through Molecule_forked to Molecule.} *)

let guanidine = molecule_symbol_of_molecule_forked_oneforked_symbol Mf1s_t.Guanidine;;

(** {9 Upgrading from Molecule_forked_twoforked through Molecule_forked to Molecule.} *)

let molecule_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 in
  molecule_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Fake_2 through Molecule_forked_twoforked through Molecule_forked to Molecule.} *)

let fake_2 = molecule_symbol_of_molecule_forked_twoforked_symbol Mf2s_t.Fake_2;;

(** {9 Upgrading from Molecule_forked_threeforked through Molecule_forked to Molecule.} *)

let molecule_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 in
  molecule_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Fake_3 through Molecule_forked_threeforked through Molecule_forked to Molecule.} *)

let fake_3 = molecule_symbol_of_molecule_forked_threeforked_symbol Mf3s_t.Fake_3;;

(** {9 Upgrading from Molecule_forked_moreforked through Molecule_forked to Molecule.} *)

let molecule_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm in
  molecule_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Fake_4 through Molecule_forked_moreforked through Molecule_forked to Molecule.} *)

let fake_4 = molecule_symbol_of_molecule_forked_moreforked_symbol Mfms_t.Fake_4;;

(** {6 Upgrading from Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_symbol smb_ml =
  Mos_t.Molecule_linear_symbol smb_ml
;;

(** {9 Upgrading from Molecule_linear_monoatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Atom_zerotied through Molecule_linear_monoatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_mlm = Mlms_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze in
    molecule_symbol_of_molecule_linear_monoatomic_symbol smb_mlm
;;

(** {9 Upgrading from Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_diatomic_symbol smb_ml2 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_ml2 in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Carbonmonoxide through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let carbonmonoxide = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Carbonmonoxide;;

(** {12 Upgrading from Dihydrogen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let dihydrogen = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dihydrogen;;

(** {12 Upgrading from Dinitrogen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let dinitrogen = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dinitrogen;;

(** {12 Upgrading from Dioxygen through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let dioxygen = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dioxygen;;

(** {12 Upgrading from Hydrogenchloride through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let hydrogenchloride = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Hydrogenchloride;;

(** {12 Upgrading from Hydrogenfluoride through Molecule_linear_diatomic through Molecule_linear to Molecule.} *)

let hydrogenfluoride = molecule_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Hydrogenfluoride;;

(** {9 Upgrading from Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_triatomic_symbol smb_ml3 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_ml3 in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Hydrogensulfide through Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

let hydrogensulfide = molecule_symbol_of_molecule_linear_triatomic_symbol Ml3s_t.Hydrogensulfide;;

(** {12 Upgrading from Water through Molecule_linear_triatomic through Molecule_linear to Molecule.} *)

let water = molecule_symbol_of_molecule_linear_triatomic_symbol Ml3s_t.Water;;

(** {9 Upgrading from Molecule_linear_tetratomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_tetratomic_symbol smb_ml4 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_ml4 in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Ammonia through Molecule_linear_tetratomic through Molecule_linear to Molecule.} *)

let ammonia = molecule_symbol_of_molecule_linear_tetratomic_symbol Ml4s_t.Ammonia;;

(** {9 Upgrading from Molecule_linear_pentatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_pentatomic_symbol smb_ml5 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_ml5 in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Methane through Molecule_linear_pentatomic through Molecule_linear to Molecule.} *)

let methane = molecule_symbol_of_molecule_linear_pentatomic_symbol Ml5s_t.Methane;;

(** {9 Upgrading from Molecule_linear_polyatomic through Molecule_linear to Molecule.} *)

let molecule_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp in
  molecule_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Glycine through Molecule_linear_polyatomic through Molecule_linear to Molecule.} *)

let glycine = molecule_symbol_of_molecule_linear_polyatomic_symbol Mlps_t.Glycine;;

(** {6 Upgrading from Molecule_nucleoside to Molecule.} *)

let molecule_nucleoside = Mos_t.Molecule_nucleoside;;

(** {6 Upgrading from Molecule_polymer to Molecule.} *)

let molecule_symbol_of_molecule_polymer_symbol smb_mp =
  Mos_t.Molecule_polymer_symbol smb_mp
;;

(** {9 Upgrading from Polypeptide through Molecule_polymer to Molecule.} *)

let molecule_symbol_of_polypeptide_symbol smb_plp =
  let smb_mp = Mps_v.molecule_polymer_symbol_of_polypeptide_symbol smb_plp in
  molecule_symbol_of_molecule_polymer_symbol smb_mp
;;

(** {12 Upgrading from Polypeptide_regular through Polypeptide through Molecule_polymer to Molecule.} *)

let molecule_symbol_of_polypeptide_regular_symbol smb_plr =
  let smb_plp = Pls_v.polypeptide_symbol_of_polypeptide_regular_symbol smb_plr in
    molecule_symbol_of_polypeptide_symbol smb_plp
;;

(** {12 Upgrading from Polyproline through Polypeptide through Molecule_polymer to Molecule.} *)

let molecule_symbol_of_polyproline_symbol smb_ppr =
  let smb_plp = Pls_v.polypeptide_symbol_of_polyproline_symbol smb_ppr in
    molecule_symbol_of_polypeptide_symbol smb_plp
;;

(** {12 Upgrading from Polyglycine through Polypeptide through Molecule_polymer to Molecule.} *)

let molecule_symbol_of_polyglycine_symbol smb_pgl =
  let smb_plp = Pls_v.polypeptide_symbol_of_polyglycine_symbol smb_pgl in
    molecule_symbol_of_polypeptide_symbol smb_plp
;;

(** {9 Upgrading from Nucleicacid through Molecule_polymer to Molecule.} *)

let molecule_symbol_of_nucleicacid_symbol smb_nca =
  let smb_mp = Mps_v.molecule_polymer_symbol_of_nucleicacid_symbol smb_nca in
  molecule_symbol_of_molecule_polymer_symbol smb_mp
;;

(** {12 Upgrading from Dna through Nucleicacid through Molecule_polymer to Molecule.} *)

let dna = molecule_symbol_of_nucleicacid_symbol Nas_t.Dna;;

(** {12 Upgrading from Rna through Nucleicacid through Molecule_polymer to Molecule.} *)

let rna = molecule_symbol_of_nucleicacid_symbol Nas_t.Rna;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule 13 January 2011. *)


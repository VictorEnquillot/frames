(** {3 The functionalities for a Symbol for a Molecule.} *)

let nam_cod = "molecule_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)




(** {6 Naming} *)


let name = function
  | Molecule_symbol_t.Molecule_notation _ -> "molecule_notation"
  | Molecule_symbol_t.Molecule_aminoacid_symbol sym_moa ->
      Molecule_aminoacid_symbol_v.name sym_moa
  | Molecule_symbol_t.Molecule_bridged_symbol sym_mob ->
      Molecule_bridged_symbol_v.name sym_mob
  | Molecule_symbol_t.Molecule_dendrimer_symbol sym_mod ->
      Molecule_dendrimer_symbol_v.name sym_mod
  | Molecule_symbol_t.Molecule_forked_symbol sym_mof ->
      Molecule_forked_symbol_v.name sym_mof
  | Molecule_symbol_t.Molecule_linear_symbol sym_mol ->
      Molecule_linear_symbol_v.name sym_mol
  | Molecule_symbol_t.Molecule_nucleicacid -> "molecule_nucleicacid"
  | Molecule_symbol_t.Molecule_nucleoside -> "molecule_nucleoside"
  | Molecule_symbol_t.Molecule_nucleotide -> "molecule_nucleotide"
  | Molecule_symbol_t.Molecule_polymer_symbol sym_mop ->
      Molecule_polymer_symbol_v.name sym_mop
;;


(** {6 Extracting} *)


let molecule_aminoacid_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_aminoacid_symbol sym_moa -> sym_moa
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_aminoacid_symbol_off_molecule_symbol"
      "Molecule_aminoacid_symbol"
      (name sym_moe) "check"
;;

let molecule_aminoacid_segmented_symbol_off_molecule_symbol sym_moe = 
  let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
    Molecule_aminoacid_symbol_v.molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol sym_moa
;;

let molecule_aminoacid_fragmented_symbol_off_molecule_symbol sym_moe = 
  let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
    Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_moa
;;

let molecule_aminoacid_fragmented_regular_symbol_off_molecule_symbol sym_moe = 
  let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
    Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_symbol sym_moa
;;

let molecule_bridged_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_bridged_symbol sym_mob -> sym_mob
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_bridged_symbol_off_molecule_symbol"
      "Molecule_bridged_symbol"
      (name sym_moe) "check"
;;

let molecule_dendrimer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_dendrimer_symbol sym_mod -> sym_mod
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_dendrimer_symbol_off_molecule_symbol"
      "Molecule_dendrimer_symbol"
      (name sym_moe) "check"
;;

let molecule_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_forked_symbol sym_mof -> sym_mof
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_forked_symbol_off_molecule_symbol"
      "Molecule_forked_symbol"
      (name sym_moe) "check"
;;

let molecule_forked_oneforked_symbol_off_molecule_symbol sym_moe = 
  let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
    Molecule_forked_symbol_v.molecule_forked_oneforked_symbol_off_molecule_forked_symbol sym_mof
;;

let molecule_forked_twoforked_symbol_off_molecule_symbol sym_moe = 
  let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
    Molecule_forked_symbol_v.molecule_forked_twoforked_symbol_off_molecule_forked_symbol sym_mof
;;

let molecule_forked_threeforked_symbol_off_molecule_symbol sym_moe = 
  let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
    Molecule_forked_symbol_v.molecule_forked_threeforked_symbol_off_molecule_forked_symbol sym_mof
;;

let molecule_forked_moreforked_symbol_off_molecule_symbol sym_moe = 
  let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
    Molecule_forked_symbol_v.molecule_forked_moreforked_symbol_off_molecule_forked_symbol sym_mof
;;

let molecule_linear_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_linear_symbol sym_mol -> sym_mol
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_symbol_off_molecule_symbol"
      "Molecule_linear_symbol"
      (name sym_moe) "check"
;;

let molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_anion_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_anion_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_anion_minusone_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_anion_minustwo_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_cation_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_cation_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_cation_plusone_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_cation_plustwo_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_cation_plusthree_symbol_off_molecule_linear_symbol sym_mol
;;

let atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_raregas_symbol_off_molecule_linear_symbol sym_mol
;;

let halfbridge_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.halfbridge_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_diatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_triatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_tetratomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_pentatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_linear_polyatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_polyatomic_symbol_off_molecule_linear_symbol sym_mol
;;

let molecule_polymer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_polymer_symbol sym_mop -> sym_mop
  | sym_moe -> Error_messages_v.print_fatal_error
      nam_cod "molecule_polymer_symbol_off_molecule_symbol"
      "Molecule_polymer_symbol"
      (name sym_moe) "check"
;;

let polypeptide_symbol_off_molecule_symbol sym_moe = 
  let sym_mop = molecule_polymer_symbol_off_molecule_symbol sym_moe in 
    Molecule_polymer_symbol_v.polypeptide_symbol_off_molecule_polymer_symbol sym_mop
;;


(** {6 Querying} *)


let is_molecule_aminoacid_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_aminoacid_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_segmented_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
     Molecule_aminoacid_symbol_v.is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol sym_moa
    end
;;

let is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
     Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol sym_moa
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_moa = molecule_aminoacid_symbol_off_molecule_symbol sym_moe in 
     Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_aminoacid_symbol sym_moa
    end
;;

let is_molecule_bridged_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_bridged_symbol _ -> true
  | _ -> false
;;

let is_molecule_dendrimer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_dendrimer_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_forked_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_oneforked_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
     Molecule_forked_symbol_v.is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol sym_mof
    end
;;

let is_molecule_forked_twoforked_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
     Molecule_forked_symbol_v.is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol sym_mof
    end
;;

let is_molecule_forked_threeforked_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
     Molecule_forked_symbol_v.is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol sym_mof
    end
;;

let is_molecule_forked_moreforked_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mof = molecule_forked_symbol_off_molecule_symbol sym_moe in 
     Molecule_forked_symbol_v.is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol sym_mof
    end
;;

let is_molecule_linear_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_linear_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_anion_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_anion_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_cation_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_cation_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_raregas_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_halfbridge_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_halfbridge_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_linear_polyatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol sym_mol
    end
;;

let is_molecule_polymer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_polymer_symbol _ -> true
  | _ -> false
;;

let is_polypeptide_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_polymer_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mop = molecule_polymer_symbol_off_molecule_symbol sym_moe in 
     Molecule_polymer_symbol_v.is_polypeptide_symbol_off_molecule_polymer_symbol sym_mop
    end
;;


(** {6 Upgrading} *)


let molecule_symbol_of_molecule_aminoacid_symbol sym_moa = 
  Molecule_symbol_t.Molecule_aminoacid_symbol sym_moa
;;

let molecule_symbol_of_molecule_aminoacid_segmented_symbol sym_mas = 
  let sym_moa = Molecule_aminoacid_symbol_v.molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol sym_mas in
    molecule_symbol_of_molecule_aminoacid_symbol sym_moa
;;

let molecule_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf = 
  let sym_moa = Molecule_aminoacid_symbol_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf in
    molecule_symbol_of_molecule_aminoacid_symbol sym_moa
;;

let molecule_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr = 
  let sym_moa = Molecule_aminoacid_symbol_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_afr in
    molecule_symbol_of_molecule_aminoacid_symbol sym_moa
;;

let molecule_symbol_of_molecule_bridged_symbol sym_mob = 
  Molecule_symbol_t.Molecule_bridged_symbol sym_mob
;;

let molecule_symbol_of_molecule_dendrimer_symbol sym_mod = 
  Molecule_symbol_t.Molecule_dendrimer_symbol sym_mod
;;

let molecule_symbol_of_molecule_forked_symbol sym_mof = 
  Molecule_symbol_t.Molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_forked_oneforked_symbol sym_mf1 = 
  let sym_mof = Molecule_forked_symbol_v.molecule_forked_symbol_of_molecule_forked_oneforked_symbol sym_mf1 in
    molecule_symbol_of_molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_forked_twoforked_symbol sym_mf2 = 
  let sym_mof = Molecule_forked_symbol_v.molecule_forked_symbol_of_molecule_forked_twoforked_symbol sym_mf2 in
    molecule_symbol_of_molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_forked_threeforked_symbol sym_mf3 = 
  let sym_mof = Molecule_forked_symbol_v.molecule_forked_symbol_of_molecule_forked_threeforked_symbol sym_mf3 in
    molecule_symbol_of_molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_forked_moreforked_symbol sym_mfm = 
  let sym_mof = Molecule_forked_symbol_v.molecule_forked_symbol_of_molecule_forked_moreforked_symbol sym_mfm in
    molecule_symbol_of_molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_linear_symbol sym_mol = 
  Molecule_symbol_t.Molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_monoatomic_symbol sym_mlm = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_symbol sym_at0 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_halfbridge_symbol sym_hae = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_halfbridge_symbol sym_hae in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_diatomic_symbol sym_mld in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_triatomic_symbol sym_mlt = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_triatomic_symbol sym_mlt in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_tetratomic_symbol sym_mlq = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_tetratomic_symbol sym_mlq in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_pentatomic_symbol sym_mlc = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_pentatomic_symbol sym_mlc in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_polyatomic_symbol sym_mlp = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_polyatomic_symbol sym_mlp in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_polymer_symbol sym_mop = 
  Molecule_symbol_t.Molecule_polymer_symbol sym_mop
;;

let molecule_symbol_of_polypeptide_symbol sym_pde = 
  let sym_mop = Molecule_polymer_symbol_v.molecule_polymer_symbol_of_polypeptide_symbol sym_pde in
    molecule_symbol_of_molecule_polymer_symbol sym_mop
;;


(** {6 Abbreviating} *)


let molecule_notation s = Molecule_symbol_t.Molecule_notation s;;

let glycine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.glycine;;

let proline = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.proline;;

let alanine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.alanine;;

let arginine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.arginine;;

let asparagine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.asparagine;;

let aspartic = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.aspartic;;

let cysteine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.cysteine;;

let glutamine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.glutamine;;

let glutamic = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.glutamic;;

let histidine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.histidine;;

let isoleucine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.isoleucine;;

let leucine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.leucine;;

let lysine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.lysine;;

let methionine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.methionine;;

let phenylalanine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.phenylalanine;;

let serine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.serine;;

let threonine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.threonine;;

let tryptophan = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.tryptophan;;

let tyrosine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.tyrosine;;

let valine = molecule_symbol_of_molecule_aminoacid_symbol Molecule_aminoacid_symbol_v.valine;;

let fake_b = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.fake_b;;

let benzene = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.benzene;;

let phenol = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.phenol;;

let pyrrole = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.pyrrole;;

let fake_d2 = molecule_symbol_of_molecule_dendrimer_symbol Molecule_dendrimer_symbol_v.fake_d2;;

let guanidine = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.guanidine;;

let fake_2 = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.fake_2;;

let fake_3 = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.fake_3;;

let fake_4 = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.fake_4;;

let f_1m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.f_1m;;

let h_1m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.h_1m;;

let cl_1m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cl_1m;;

let br_1m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.br_1m;;

let i_1m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.i_1m;;

let o_2m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.o_2m;;

let s_2m = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.s_2m;;

let h_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.h_1p;;

let k_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.k_1p;;

let li_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.li_1p;;

let na_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.na_1p;;

let ni_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ni_1p;;

let cu_1p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cu_1p;;

let mg_2p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.mg_2p;;

let ca_2p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ca_2p;;

let fe_2p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.fe_2p;;

let zn_2p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.zn_2p;;

let cu_2p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cu_2p;;

let fe_3p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.fe_3p;;

let ni_3p = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ni_3p;;

let ar = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ar;;

let he = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.he;;

let kr = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.kr;;

let ne = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ne;;

let xe = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.xe;;

let hbc = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hbc;;

let hbd = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hbd;;

let hbs = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hbs;;

let hbt = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hbt;;

let carbonmonoxide = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.carbonmonoxide;;

let dihydrogen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dihydrogen;;

let dinitrogen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dinitrogen;;

let dioxygen = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.dioxygen;;

let hydrogenchloride = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogenchloride;;

let hydrogenfluoride = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogenfluoride;;

let hydrogensulfide = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hydrogensulfide;;

let water = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.water;;

let ammonia = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ammonia;;

let methane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.methane;;

let glycine = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.glycine;;

let molecule_nucleicacid = Molecule_symbol_t.Molecule_nucleicacid;;

let molecule_nucleoside = Molecule_symbol_t.Molecule_nucleoside;;

let molecule_nucleotide = Molecule_symbol_t.Molecule_nucleotide;;

let polypeptide_frompdbid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.polypeptide_frompdbid s);;

let nucleicacid = molecule_symbol_of_molecule_polymer_symbol Molecule_polymer_symbol_v.nucleicacid;;


(** created by ./generator molecule implementation symbol at 10:6 9 Feb 2012. *)




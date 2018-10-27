(** {3 A Symbol for a Molecule.} *)

let nam_cod = "molecule_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mas_v = Molecule_aminoacid_symbol_v
module Mbs_v = Molecule_bridged_symbol_v
module Mds_v = Molecule_dendrimer_symbol_v
module Mfs_v = Molecule_forked_symbol_v
module Mls_v = Molecule_linear_symbol_v
module Mps_v = Molecule_polymer_symbol_v


let name = function
  | Mos_v smb_moa ->
      Mas_v.name smb_moa
  | Mos_v smb_mob ->
      Mbs_v.name smb_mob
  | Mos_v smb_mod ->
      Mds_v.name smb_mod
  | Mos_v smb_mof ->
      Mfs_v.name smb_mof
  | Mos_v smb_mol ->
      Mls_v.name smb_mol
  | Mos_t.Molecule_nucleoside -> "molecule_nucleoside"
  | Mos_v smb_mop ->
      Mps_v.name smb_mop
;;


let print ppf = function
  | Mos_v smb_moa ->
      Mas_v.print ppf smb_moa
  | Mos_v smb_mob ->
      Mbs_v.print ppf smb_mob
  | Mos_v smb_mod ->
      Mds_v.print ppf smb_mod
  | Mos_v smb_mof ->
      Mfs_v.print ppf smb_mof
  | Mos_v smb_mol ->
      Mls_v.print ppf smb_mol
  | Mos_v  ->
      .print ppf 
  | Mos_v smb_mop ->
      Mps_v.print ppf smb_mop
;;


(** {6 Extracting.} *)

let molecule_aminoacid_symbol_off_molecule_symbol = function
  | Mos_v smb_moa -> smb_moa
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_symbol_off_molecule_symbol"
     "Molecule_aminoacid_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_segmented_symbol_off_molecule_symbol smb_moe =
  let smb_moa = molecule_aminoacid_symbol_off_molecule_symbol smb_moe in
    Mas_v_off_molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_moe =
  let smb_moa = molecule_aminoacid_symbol_off_molecule_symbol smb_moe in
    Mas_v_off_molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_off_molecule_symbol smb_moe =
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_moe in
    Mafs_v_off_molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_bridged_symbol_off_molecule_symbol = function
  | Mos_v smb_mob -> smb_mob
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_bridged_symbol_off_molecule_symbol"
     "Molecule_bridged_symbol"
     (name s)
    "check"
;;

let molecule_dendrimer_symbol_off_molecule_symbol = function
  | Mos_v smb_mod -> smb_mod
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_dendrimer_symbol_off_molecule_symbol"
     "Molecule_dendrimer_symbol"
     (name s)
    "check"
;;

let molecule_forked_symbol_off_molecule_symbol = function
  | Mos_v smb_mof -> smb_mof
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_forked_symbol_off_molecule_symbol"
     "Molecule_forked_symbol"
     (name s)
    "check"
;;

let molecule_forked_oneforked_symbol_off_molecule_symbol smb_moe =
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
    Mfs_v_off_molecule_forked_symbol smb_mof
;;

let molecule_forked_twoforked_symbol_off_molecule_symbol smb_moe =
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
    Mfs_v_off_molecule_forked_symbol smb_mof
;;

let molecule_forked_threeforked_symbol_off_molecule_symbol smb_moe =
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
    Mfs_v_off_molecule_forked_symbol smb_mof
;;

let molecule_forked_moreforked_symbol_off_molecule_symbol smb_moe =
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
    Mfs_v_off_molecule_forked_symbol smb_mof
;;

let molecule_linear_symbol_off_molecule_symbol = function
  | Mos_v smb_mol -> smb_mol
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_symbol_off_molecule_symbol"
     "Molecule_linear_symbol"
     (name s)
    "check"
;;

let molecule_linear_monoatomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let atom_zerotied_symbol_off_molecule_symbol smb_moe =
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_symbol smb_moe in
    Mlms_v_off_molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_off_molecule_symbol smb_moe =
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_molecule_symbol smb_moe =
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_molecule_symbol smb_moe =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_symbol smb_moe in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_molecule_symbol smb_moe =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_symbol smb_moe in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_molecule_symbol smb_moe =
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_molecule_symbol smb_moe =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_molecule_symbol smb_moe =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_molecule_symbol smb_moe =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_molecule_symbol smb_moe =
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let molecule_linear_diatomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let molecule_linear_triatomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let molecule_linear_tetratomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let molecule_linear_pentatomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let molecule_linear_polyatomic_symbol_off_molecule_symbol smb_moe =
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
    Mls_v_off_molecule_linear_symbol smb_mol
;;

let molecule_polymer_symbol_off_molecule_symbol = function
  | Mos_v smb_mop -> smb_mop
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_polymer_symbol_off_molecule_symbol"
     "Molecule_polymer_symbol"
     (name s)
    "check"
;;

let polypeptide_symbol_off_molecule_symbol smb_moe =
  let smb_mop = molecule_polymer_symbol_off_molecule_symbol smb_moe in
    Mps_v_off_molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_off_molecule_symbol smb_moe =
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let polyproline_symbol_off_molecule_symbol smb_moe =
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let polyglycine_symbol_off_molecule_symbol smb_moe =
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let nucleicacid_symbol_off_molecule_symbol smb_moe =
  let smb_mop = molecule_polymer_symbol_off_molecule_symbol smb_moe in
    Mps_v_off_molecule_polymer_symbol smb_mop
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_aminoacid_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_segmented_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_moa = molecule_aminoacid_symbol_off_molecule_symbol smb_moe in
      Mas_v.is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_moa
    end
;;

let is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_aminoacid_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_moa = molecule_aminoacid_symbol_off_molecule_symbol smb_moe in
      Mas_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_moa
    end
;;

let is_molecule_aminoacid_regular_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_symbol smb_moe in
      Mafs_v.is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
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

let is_molecule_forked_oneforked_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
      Mfs_v.is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol smb_mof
    end
;;

let is_molecule_forked_twoforked_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
      Mfs_v.is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol smb_mof
    end
;;

let is_molecule_forked_threeforked_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
      Mfs_v.is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol smb_mof
    end
;;

let is_molecule_forked_moreforked_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_forked_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mof = molecule_forked_symbol_off_molecule_symbol smb_moe in
      Mfs_v.is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol smb_mof
    end
;;

let is_molecule_linear_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_linear_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_monoatomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_atom_zerotied_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_symbol smb_moe in
      Mlms_v.is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
    end
;;

let is_atom_zerotied_raregas_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_anion_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_symbol smb_moe in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_anion_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_symbol smb_moe in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_cation_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_cation_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_cation_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_symbol smb_moe in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_molecule_symbol smb_moe =
  if not (is_atom_zerotied_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_symbol smb_moe in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_molecule_linear_diatomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_molecule_linear_triatomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_molecule_linear_tetratomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_molecule_linear_pentatomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_molecule_linear_polyatomic_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mol = molecule_linear_symbol_off_molecule_symbol smb_moe in
      Mls_v.is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol smb_mol
    end
;;

let is_molecule_polymer_symbol_off_molecule_symbol = function
  | Molecule_symbol_t.Molecule_polymer_symbol _ -> true
  | _ -> false
;;

let is_polypeptide_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_polymer_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mop = molecule_polymer_symbol_off_molecule_symbol smb_moe in
      Mps_v.is_polypeptide_symbol_off_molecule_polymer_symbol smb_mop
    end
;;

let is_polypeptide_regular_symbol_off_molecule_symbol smb_moe =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
      Pds_v.is_polypeptide_regular_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_polyproline_symbol_off_molecule_symbol smb_moe =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
      Pds_v.is_polyproline_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_polyglycine_symbol_off_molecule_symbol smb_moe =
  if not (is_polypeptide_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_symbol smb_moe in
      Pds_v.is_polyglycine_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_nucleicacid_symbol_off_molecule_symbol smb_moe =
  if not (is_molecule_polymer_symbol_off_molecule_symbol smb_moe)
  then false
  else
    begin
  let smb_mop = molecule_polymer_symbol_off_molecule_symbol smb_moe in
      Mps_v.is_nucleicacid_symbol_off_molecule_polymer_symbol smb_mop
    end
;;


(** {6 Upgrading.} *)

let molecule_symbol_of_molecule_aminoacid_symbol smb_moa =
Mos_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
  let smb_moa = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas in
molecule_symbol_of_molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_symbol smb_moa =
Mass_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
  let smb_moa = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf in
molecule_symbol_of_molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_symbol smb_moa =
Mafs_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_maf = Mafs_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
molecule_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_symbol smb_moa =
Mars_v.molecule_aminoacid_symbol smb_moa
;;

let molecule_symbol_of_molecule_bridged_symbol smb_mob =
Mos_v.molecule_bridged_symbol smb_mob
;;

let molecule_bridged_symbol_of_molecule_bridged_symbol smb_mob =
Mbs_v.molecule_bridged_symbol smb_mob
;;

let molecule_bridged_symbol_of_molecule_bridged_symbol smb_mob =
Mbs_v.molecule_bridged_symbol smb_mob
;;

let molecule_bridged_symbol_of_molecule_bridged_symbol smb_mob =
Mbs_v.molecule_bridged_symbol smb_mob
;;

let molecule_bridged_symbol_of_molecule_bridged_symbol smb_mob =
Mbs_v.molecule_bridged_symbol smb_mob
;;

let molecule_symbol_of_molecule_dendrimer_symbol smb_mod =
Mos_v.molecule_dendrimer_symbol smb_mod
;;

let molecule_dendrimer_symbol_of_molecule_dendrimer_symbol smb_mod =
Mds_v.molecule_dendrimer_symbol smb_mod
;;

let molecule_symbol_of_molecule_forked_symbol smb_mof =
Mos_v.molecule_forked_symbol smb_mof
;;

let molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mf1 =
  let smb_mof = Mfs_v.molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mf1 in
molecule_symbol_of_molecule_forked_symbol smb_mof
;;

let molecule_forked_oneforked_symbol_of_molecule_forked_symbol smb_mof =
Mf1s_v.molecule_forked_symbol smb_mof
;;

let molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
  let smb_mof = Mfs_v.molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 in
molecule_symbol_of_molecule_forked_symbol smb_mof
;;

let molecule_forked_twoforked_symbol_of_molecule_forked_symbol smb_mof =
Mf2s_v.molecule_forked_symbol smb_mof
;;

let molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
  let smb_mof = Mfs_v.molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 in
molecule_symbol_of_molecule_forked_symbol smb_mof
;;

let molecule_forked_threeforked_symbol_of_molecule_forked_symbol smb_mof =
Mf3s_v.molecule_forked_symbol smb_mof
;;

let molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
  let smb_mof = Mfs_v.molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm in
molecule_symbol_of_molecule_forked_symbol smb_mof
;;

let molecule_forked_moreforked_symbol_of_molecule_forked_symbol smb_mof =
Mfms_v.molecule_forked_symbol smb_mof
;;

let molecule_symbol_of_molecule_linear_symbol smb_mol =
Mos_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0 =
  let smb_mlm = Mlms_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0 in
molecule_symbol_of_molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
molecule_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_symbol smb_mol =
A0rs_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_symbol smb_mol =
A0rs_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_symbol smb_mol =
A0rs_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_symbol smb_mol =
A0rs_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_symbol smb_mol =
A0rs_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
molecule_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
molecule_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_symbol smb_mol =
A0am1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_symbol smb_mol =
A0am1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_symbol smb_mol =
A0am1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_symbol smb_mol =
A0am1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_symbol smb_mol =
A0am1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
molecule_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_molecule_linear_symbol smb_mol =
A0am2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_anion_minus_two_symbol_of_molecule_linear_symbol smb_mol =
A0am2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
molecule_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
molecule_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_symbol smb_mol =
A0cp1s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
molecule_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_symbol smb_mol =
A0cp2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_symbol smb_mol =
A0cp2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_symbol smb_mol =
A0cp2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_symbol smb_mol =
A0cp2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_symbol smb_mol =
A0cp2s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
molecule_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_molecule_linear_symbol smb_mol =
A0cp3s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_cation_plus_three_symbol_of_molecule_linear_symbol smb_mol =
A0cp3s_v.molecule_linear_symbol smb_mol
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
molecule_symbol_of_atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_molecule_linear_symbol smb_mol =
Has_v.molecule_linear_symbol smb_mol
;;

let halfbridge_symbol_of_molecule_linear_symbol smb_mol =
Has_v.molecule_linear_symbol smb_mol
;;

let halfbridge_symbol_of_molecule_linear_symbol smb_mol =
Has_v.molecule_linear_symbol smb_mol
;;

let halfbridge_symbol_of_molecule_linear_symbol smb_mol =
Has_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_mld =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_mld in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlds_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_mlt =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_mlt in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_triatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlts_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_triatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlts_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_mlq =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_mlq in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_tetratomic_symbol_of_molecule_linear_symbol smb_mol =
Mlqs_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_mlc =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_mlc in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_pentatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlcs_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
  let smb_mol = Mls_v.molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp in
molecule_symbol_of_molecule_linear_symbol smb_mol
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlps_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlps_v.molecule_linear_symbol smb_mol
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_symbol smb_mol =
Mlps_v.molecule_linear_symbol smb_mol
;;

let molecule_nucleoside = Mos_t.Molecule_nucleoside;;

let molecule_symbol_of_molecule_polymer_symbol smb_mop =
Mos_v.molecule_polymer_symbol smb_mop
;;

let molecule_polymer_symbol_of_polypeptide_symbol smb_pde =
  let smb_mop = Mps_v.molecule_polymer_symbol_of_polypeptide_symbol smb_pde in
molecule_symbol_of_molecule_polymer_symbol smb_mop
;;

let polypeptide_symbol_of_polypeptide_regular_symbol smb_prg =
  let smb_pde = Pds_v.polypeptide_symbol_of_polypeptide_regular_symbol smb_prg in
molecule_symbol_of_polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;

let polypeptide_regular_symbol_of_molecule_polymer_symbol smb_mop =
Prs_v.molecule_polymer_symbol smb_mop
;;


let polypeptide_symbol_of_polyproline_symbol smb_ppn =
  let smb_pde = Pds_v.polypeptide_symbol_of_polyproline_symbol smb_ppn in
molecule_symbol_of_polypeptide_symbol smb_pde
;;

let polypeptide_symbol_of_polyglycine_symbol smb_pgn =
  let smb_pde = Pds_v.polypeptide_symbol_of_polyglycine_symbol smb_pgn in
molecule_symbol_of_polypeptide_symbol smb_pde
;;

let molecule_polymer_symbol_of_nucleicacid_symbol smb_nud =
  let smb_mop = Mps_v.molecule_polymer_symbol_of_nucleicacid_symbol smb_nud in
molecule_symbol_of_molecule_polymer_symbol smb_mop
;;

let nucleicacid_symbol_of_molecule_polymer_symbol smb_mop =
Nus_v.molecule_polymer_symbol smb_mop
;;

let nucleicacid_symbol_of_molecule_polymer_symbol smb_mop =
Nus_v.molecule_polymer_symbol smb_mop
;;



(** created by ./generator molecule v symbol at 11:8 26 Apr 2011. *)




(** {3 The functionalities for a Symbol for a Molecule.} *)

let nam_cod = "molecule_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_symbol_t.Molecule_bridged_symbol sym_mob ->
      Molecule_bridged_symbol_v.name sym_mob
  | Molecule_symbol_t.Molecule_dendrimer_symbol sym_mod ->
      Molecule_dendrimer_symbol_v.name sym_mod
  | Molecule_symbol_t.Molecule_forked_symbol sym_mof ->
      Molecule_forked_symbol_v.name sym_mof
  | Molecule_symbol_t.Molecule_linear_symbol sym_mol ->
      Molecule_linear_symbol_v.name sym_mol
  | Molecule_symbol_t.Molecule_polymer_symbol sym_mop ->
      Molecule_polymer_symbol_v.name sym_mop
;;


(** {6 Upgrading} *)


let molecule_symbol_of_molecule_bridged_symbol sym_mob = 
  Molecule_symbol_t.Molecule_bridged_symbol sym_mob
;;

let molecule_symbol_of_molecule_dendrimer_symbol sym_mod = 
  Molecule_symbol_t.Molecule_dendrimer_symbol sym_mod
;;

let molecule_symbol_of_molecule_forked_symbol sym_mof = 
  Molecule_symbol_t.Molecule_forked_symbol sym_mof
;;

let molecule_symbol_of_molecule_linear_symbol sym_mol = 
  Molecule_symbol_t.Molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_molecule_linear_monoatomic_symbol sym_mlm = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm in
    molecule_symbol_of_molecule_linear_symbol sym_mol
;;

let molecule_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
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

let molecule_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
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

let molecule_symbol_of_molecule_linear_overpentatomic_symbol sym_mlo = 
  let sym_mol = Molecule_linear_symbol_v.molecule_linear_symbol_of_molecule_linear_overpentatomic_symbol sym_mlo in
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


let benzene = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.benzene;;

let phenol = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.phenol;;

let pyrrole = molecule_symbol_of_molecule_bridged_symbol Molecule_bridged_symbol_v.pyrrole;;

let molecule_bridged_fromid s = molecule_symbol_of_molecule_bridged_symbol (Molecule_bridged_symbol_v.molecule_bridged_fromid s);;

let molecule_dendrimer_fromid s = molecule_symbol_of_molecule_dendrimer_symbol (Molecule_dendrimer_symbol_v.molecule_dendrimer_fromid s);;

let guanidine = molecule_symbol_of_molecule_forked_symbol Molecule_forked_symbol_v.guanidine;;

let molecule_forked_fromid s = molecule_symbol_of_molecule_forked_symbol (Molecule_forked_symbol_v.molecule_forked_fromid s);;

let fm1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.fm1;;

let hm1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hm1;;

let clm1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.clm1;;

let brm1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.brm1;;

let im1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.im1;;

let om2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.om2;;

let sm2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.sm2;;

let hp1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hp1;;

let kp1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.kp1;;

let lip1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.lip1;;

let nap1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.nap1;;

let nip1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.nip1;;

let cup1 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cup1;;

let mgp2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.mgp2;;

let cap2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cap2;;

let fep2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.fep2;;

let znp2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.znp2;;

let cup2 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.cup2;;

let fep3 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.fep3;;

let nip3 = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.nip3;;

let ar = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ar;;

let he = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.he;;

let kr = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.kr;;

let ne = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.ne;;

let xe = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.xe;;

let hb_s = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hb_s;;

let hb_c = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hb_c;;

let hb_d = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hb_d;;

let hb_t = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.hb_t;;

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

let propane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.propane;;

let butane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.butane;;

let nitromethane = molecule_symbol_of_molecule_linear_symbol Molecule_linear_symbol_v.nitromethane;;

let polypeptide_fromid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.polypeptide_fromid s);;

let nucleicacid_fromid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.nucleicacid_fromid s);;

let molecule_polymer_fromid s = molecule_symbol_of_molecule_polymer_symbol (Molecule_polymer_symbol_v.molecule_polymer_fromid s);;


(** {6 Making} *)


let make s = function
  | "benzene" -> benzene
  | "phenol" -> phenol
  | "pyrrole" -> pyrrole
  | "molecule_bridged_fromid" -> molecule_bridged_fromid s
  | "molecule_dendrimer_fromid" -> molecule_dendrimer_fromid s
  | "guanidine" -> guanidine
  | "molecule_forked_fromid" -> molecule_forked_fromid s
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | "hb_t" -> hb_t
  | "carbonmonoxide" -> carbonmonoxide
  | "dihydrogen" -> dihydrogen
  | "dinitrogen" -> dinitrogen
  | "dioxygen" -> dioxygen
  | "hydrogenchloride" -> hydrogenchloride
  | "hydrogenfluoride" -> hydrogenfluoride
  | "hydrogensulfide" -> hydrogensulfide
  | "water" -> water
  | "ammonia" -> ammonia
  | "methane" -> methane
  | "propane" -> propane
  | "butane" -> butane
  | "nitromethane" -> nitromethane
  | "polypeptide_fromid" -> polypeptide_fromid s
  | "nucleicacid_fromid" -> nucleicacid_fromid s
  | "molecule_polymer_fromid" -> molecule_polymer_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


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

let block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_symbol sym_mol
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

let atom_zerotied_halfbridge_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.atom_zerotied_halfbridge_symbol_off_molecule_linear_symbol sym_mol
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

let molecule_linear_overpentatomic_symbol_off_molecule_symbol sym_moe = 
  let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
    Molecule_linear_symbol_v.molecule_linear_overpentatomic_symbol_off_molecule_linear_symbol sym_mol
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

let is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_symbol sym_mol
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

let is_atom_zerotied_halfbridge_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_atom_zerotied_halfbridge_symbol_off_molecule_linear_symbol sym_mol
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

let is_molecule_linear_overpentatomic_symbol_off_molecule_symbol sym_moe =
  if not (is_molecule_linear_symbol_off_molecule_symbol sym_moe)
  then false
  else
    begin
     let sym_mol = molecule_linear_symbol_off_molecule_symbol sym_moe in 
     Molecule_linear_symbol_v.is_molecule_linear_overpentatomic_symbol_off_molecule_linear_symbol sym_mol
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


(** created by ./generator molecule implementation symbol at 15:3 13 Mar 2012. *)




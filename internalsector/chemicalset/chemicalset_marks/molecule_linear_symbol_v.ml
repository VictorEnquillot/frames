(** {3 The functionalities for a Symbol for a Molecule_linear.} *)

let nam_cod = "molecule_linear_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Molecule_linear_symbol_t.Molecule_linear_monoatomic_symbol sym_mlm ->
      Molecule_linear_monoatomic_symbol_v.name sym_mlm
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld ->
      Molecule_linear_diatomic_symbol_v.name sym_mld
  | Molecule_linear_symbol_t.Molecule_linear_triatomic_symbol sym_mlt ->
      Molecule_linear_triatomic_symbol_v.name sym_mlt
  | Molecule_linear_symbol_t.Molecule_linear_tetratomic_symbol sym_mlq ->
      Molecule_linear_tetratomic_symbol_v.name sym_mlq
  | Molecule_linear_symbol_t.Molecule_linear_pentatomic_symbol sym_mlc ->
      Molecule_linear_pentatomic_symbol_v.name sym_mlc
  | Molecule_linear_symbol_t.Molecule_linear_overpentatomic_symbol sym_mlo ->
      Molecule_linear_overpentatomic_symbol_v.name sym_mlo
;;


(** {6 Upgrading} *)


let molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm = 
  Molecule_linear_symbol_t.Molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_block_none_none_ax0e0_monoatomic_symbol sym_nam in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol sym_at0 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_mlm = Molecule_linear_monoatomic_symbol_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    molecule_linear_symbol_of_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld
;;

let molecule_linear_symbol_of_molecule_linear_triatomic_symbol sym_mlt = 
  Molecule_linear_symbol_t.Molecule_linear_triatomic_symbol sym_mlt
;;

let molecule_linear_symbol_of_molecule_linear_tetratomic_symbol sym_mlq = 
  Molecule_linear_symbol_t.Molecule_linear_tetratomic_symbol sym_mlq
;;

let molecule_linear_symbol_of_molecule_linear_pentatomic_symbol sym_mlc = 
  Molecule_linear_symbol_t.Molecule_linear_pentatomic_symbol sym_mlc
;;

let molecule_linear_symbol_of_molecule_linear_overpentatomic_symbol sym_mlo = 
  Molecule_linear_symbol_t.Molecule_linear_overpentatomic_symbol sym_mlo
;;


(** {6 Abbreviating} *)


let fm1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.fm1;;

let hm1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hm1;;

let clm1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.clm1;;

let brm1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.brm1;;

let im1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.im1;;

let om2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.om2;;

let sm2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.sm2;;

let hp1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hp1;;

let kp1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.kp1;;

let lip1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.lip1;;

let nap1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.nap1;;

let nip1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.nip1;;

let cup1 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.cup1;;

let mgp2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.mgp2;;

let cap2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.cap2;;

let fep2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.fep2;;

let znp2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.znp2;;

let cup2 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.cup2;;

let fep3 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.fep3;;

let nip3 = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.nip3;;

let ar = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.ar;;

let he = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.he;;

let kr = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.kr;;

let ne = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.ne;;

let xe = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.xe;;

let hb_s = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hb_s;;

let hb_c = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hb_c;;

let hb_d = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hb_d;;

let hb_t = molecule_linear_symbol_of_molecule_linear_monoatomic_symbol Molecule_linear_monoatomic_symbol_v.hb_t;;

let carbonmonoxide = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.carbonmonoxide;;

let dihydrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dihydrogen;;

let dinitrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dinitrogen;;

let dioxygen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.dioxygen;;

let hydrogenchloride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.hydrogenchloride;;

let hydrogenfluoride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Molecule_linear_diatomic_symbol_v.hydrogenfluoride;;

let hydrogensulfide = molecule_linear_symbol_of_molecule_linear_triatomic_symbol Molecule_linear_triatomic_symbol_v.hydrogensulfide;;

let water = molecule_linear_symbol_of_molecule_linear_triatomic_symbol Molecule_linear_triatomic_symbol_v.water;;

let ammonia = molecule_linear_symbol_of_molecule_linear_tetratomic_symbol Molecule_linear_tetratomic_symbol_v.ammonia;;

let methane = molecule_linear_symbol_of_molecule_linear_pentatomic_symbol Molecule_linear_pentatomic_symbol_v.methane;;

let propane = molecule_linear_symbol_of_molecule_linear_overpentatomic_symbol Molecule_linear_overpentatomic_symbol_v.propane;;

let butane = molecule_linear_symbol_of_molecule_linear_overpentatomic_symbol Molecule_linear_overpentatomic_symbol_v.butane;;

let nitromethane = molecule_linear_symbol_of_molecule_linear_overpentatomic_symbol Molecule_linear_overpentatomic_symbol_v.nitromethane;;


(** {6 Making} *)


let make s = function
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
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_monoatomic_symbol sym_mlm -> sym_mlm
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_monoatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_monoatomic_symbol"
      (name sym_mol) "check"
;;

let block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_anion_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_anion_minusone_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_anion_minusone_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_anion_minustwo_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_anion_minustwo_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_cation_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_cation_plusone_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_cation_plusone_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_cation_plustwo_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_cation_plustwo_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_cation_plusthree_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_cation_plusthree_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_raregas_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let atom_zerotied_halfbridge_symbol_off_molecule_linear_symbol sym_mol = 
  let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
    Molecule_linear_monoatomic_symbol_v.atom_zerotied_halfbridge_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
;;

let molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol sym_mld -> sym_mld
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_diatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_diatomic_symbol"
      (name sym_mol) "check"
;;

let molecule_linear_triatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_triatomic_symbol sym_mlt -> sym_mlt
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_triatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_triatomic_symbol"
      (name sym_mol) "check"
;;

let molecule_linear_tetratomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_tetratomic_symbol sym_mlq -> sym_mlq
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_tetratomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_tetratomic_symbol"
      (name sym_mol) "check"
;;

let molecule_linear_pentatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_pentatomic_symbol sym_mlc -> sym_mlc
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_pentatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_pentatomic_symbol"
      (name sym_mol) "check"
;;

let molecule_linear_overpentatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_overpentatomic_symbol sym_mlo -> sym_mlo
  | sym_mol -> Error_messages_v.print_fatal_error
      nam_cod "molecule_linear_overpentatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_overpentatomic_symbol"
      (name sym_mol) "check"
;;


(** {6 Querying} *)


let is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_monoatomic_symbol _ -> true
  | _ -> false
;;

let is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_block_none_none_ax0e0_monoatomic_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_anion_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_cation_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_raregas_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_molecule_linear_symbol sym_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol)
  then false
  else
    begin
     let sym_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol sym_mol in 
     Molecule_linear_monoatomic_symbol_v.is_atom_zerotied_halfbridge_symbol_off_molecule_linear_monoatomic_symbol sym_mlm
    end
;;

let is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_diatomic_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_triatomic_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_tetratomic_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_pentatomic_symbol _ -> true
  | _ -> false
;;

let is_molecule_linear_overpentatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_overpentatomic_symbol _ -> true
  | _ -> false
;;


(** created by ./generator molecule_linear implementation symbol at 15:4 13 Mar 2012. *)




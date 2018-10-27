(** {3 A Symbol for a Molecule_linear.} *)

let nam_cod = "molecule_linear_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mlms_v = Molecule_linear_monoatomic_symbol_v
module Mlds_v = Molecule_linear_diatomic_symbol_v
module Mlts_v = Molecule_linear_triatomic_symbol_v
module Mlqs_v = Molecule_linear_tetratomic_symbol_v
module Mlcs_v = Molecule_linear_pentatomic_symbol_v
module Mlps_v = Molecule_linear_polyatomic_symbol_v


let name = function
  | Mls_v smb_mlm ->
      Mlms_v.name smb_mlm
  | Mls_v smb_mld ->
      Mlds_v.name smb_mld
  | Mls_v smb_mlt ->
      Mlts_v.name smb_mlt
  | Mls_v smb_mlq ->
      Mlqs_v.name smb_mlq
  | Mls_v smb_mlc ->
      Mlcs_v.name smb_mlc
  | Mls_v smb_mlp ->
      Mlps_v.name smb_mlp
;;


let print ppf = function
  | Mls_v smb_mlm ->
      Mlms_v.print ppf smb_mlm
  | Mls_v smb_mld ->
      Mlds_v.print ppf smb_mld
  | Mls_v smb_mlt ->
      Mlts_v.print ppf smb_mlt
  | Mls_v smb_mlq ->
      Mlqs_v.print ppf smb_mlq
  | Mls_v smb_mlc ->
      Mlcs_v.print ppf smb_mlc
  | Mls_v smb_mlp ->
      Mlps_v.print ppf smb_mlp
;;


(** {6 Extracting.} *)

let molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mlm -> smb_mlm
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_monoatomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_monoatomic_symbol"
     (name s)
    "check"
;;

let atom_zerotied_symbol_off_molecule_linear_symbol smb_mol =
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_mol in
    Mlms_v_off_molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_off_molecule_linear_symbol smb_mol =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_molecule_linear_symbol smb_mol =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_molecule_linear_symbol smb_mol =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_molecule_linear_symbol smb_mol =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_molecule_linear_symbol smb_mol =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_molecule_linear_symbol smb_mol =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_molecule_linear_symbol smb_mol =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mld -> smb_mld
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_diatomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_diatomic_symbol"
     (name s)
    "check"
;;

let molecule_linear_triatomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mlt -> smb_mlt
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_triatomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_triatomic_symbol"
     (name s)
    "check"
;;

let molecule_linear_tetratomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mlq -> smb_mlq
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_tetratomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_tetratomic_symbol"
     (name s)
    "check"
;;

let molecule_linear_pentatomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mlc -> smb_mlc
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_pentatomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_pentatomic_symbol"
     (name s)
    "check"
;;

let molecule_linear_polyatomic_symbol_off_molecule_linear_symbol = function
  | Mls_v smb_mlp -> smb_mlp
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_linear_polyatomic_symbol_off_molecule_linear_symbol"
     "Molecule_linear_polyatomic_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_monoatomic_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_mol in
      Mlms_v.is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
    end
;;

let is_atom_zerotied_raregas_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_mol in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_mol in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_molecule_linear_symbol smb_mol =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_mol)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_symbol smb_mol in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
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

let is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol = function
  | Molecule_linear_symbol_t.Molecule_linear_polyatomic_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
Mls_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0 =
  let smb_mlm = Mlms_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0 in
molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
molecule_linear_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0rs_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0rs_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0rs_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0rs_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_raregas_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0rs_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
molecule_linear_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
molecule_linear_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_minus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
molecule_linear_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_anion_minus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0am2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
molecule_linear_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
molecule_linear_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_one_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp1s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
molecule_linear_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_two_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp2s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
molecule_linear_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp3s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_cation_plus_three_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
A0cp3s_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
molecule_linear_symbol_of_atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
Has_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let halfbridge_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
Has_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let halfbridge_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
Has_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let halfbridge_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
Has_v.molecule_linear_monoatomic_symbol smb_mlm
;;

let molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mls_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_diatomic_symbol_of_molecule_linear_diatomic_symbol smb_mld =
Mlds_v.molecule_linear_diatomic_symbol smb_mld
;;

let molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_mlt =
Mls_v.molecule_linear_triatomic_symbol smb_mlt
;;

let molecule_linear_triatomic_symbol_of_molecule_linear_triatomic_symbol smb_mlt =
Mlts_v.molecule_linear_triatomic_symbol smb_mlt
;;

let molecule_linear_triatomic_symbol_of_molecule_linear_triatomic_symbol smb_mlt =
Mlts_v.molecule_linear_triatomic_symbol smb_mlt
;;

let molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_mlq =
Mls_v.molecule_linear_tetratomic_symbol smb_mlq
;;

let molecule_linear_tetratomic_symbol_of_molecule_linear_tetratomic_symbol smb_mlq =
Mlqs_v.molecule_linear_tetratomic_symbol smb_mlq
;;

let molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_mlc =
Mls_v.molecule_linear_pentatomic_symbol smb_mlc
;;

let molecule_linear_pentatomic_symbol_of_molecule_linear_pentatomic_symbol smb_mlc =
Mlcs_v.molecule_linear_pentatomic_symbol smb_mlc
;;

let molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
Mls_v.molecule_linear_polyatomic_symbol smb_mlp
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
Mlps_v.molecule_linear_polyatomic_symbol smb_mlp
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
Mlps_v.molecule_linear_polyatomic_symbol smb_mlp
;;

let molecule_linear_polyatomic_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
Mlps_v.molecule_linear_polyatomic_symbol smb_mlp
;;



(** created by ./generator molecule_linear v symbol at 11:8 26 Apr 2011. *)




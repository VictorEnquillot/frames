(** {3 A Symbol for a Molecule_linear_monoatomic.} *)

let nam_cod = "molecule_linear_monoatomic_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0s_v = Atom_zerotied_symbol_v


let name = function
  | Mlms_v smb_at0 ->
      A0s_v.name smb_at0
;;


let print ppf = function
  | Mlms_v smb_at0 ->
      A0s_v.print ppf smb_at0
;;


(** {6 Extracting.} *)

let atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol = function
  | Mlms_v smb_at0 -> smb_at0
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol"
     "Atom_zerotied_symbol"
     (name s)
    "check"
;;

let atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;


(** {6 Querying.} *)

let is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol = function
  | Molecule_linear_monoatomic_symbol_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;


(** {6 Upgrading.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0 =
Mlms_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_symbol smb_at0 =
A0rs_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_symbol smb_at0 =
A0rs_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_symbol smb_at0 =
A0rs_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_symbol smb_at0 =
A0rs_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_symbol smb_at0 =
A0rs_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0am1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0am1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0am1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0am1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0am1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp1s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_atom_zerotied_symbol smb_at0 =
Has_v.atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_atom_zerotied_symbol smb_at0 =
Has_v.atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_atom_zerotied_symbol smb_at0 =
Has_v.atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_atom_zerotied_symbol smb_at0 =
Has_v.atom_zerotied_symbol smb_at0
;;



(** created by ./generator molecule_linear_monoatomic v symbol at 11:8 26 Apr 2011. *)




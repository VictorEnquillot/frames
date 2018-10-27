(** {3 A Symbol for a Fragment_closed.} *)

let nam_cod = "fragment_closed_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module B00s_v = Block_zerozero_symbol_v


let name = function
  | Fcs_t.Fragment_zerozero -> "fragment_zerozero"
  | Fcs_v smb_bzz ->
      B00s_v.name smb_bzz
  | Fcs_t.Segment_head_extends_fragment_leaf -> "segment_head_extends_fragment_leaf"
;;


let print ppf = function
  | Fcs_v  ->
      .print ppf 
  | Fcs_v smb_bzz ->
      B00s_v.print ppf smb_bzz
  | Fcs_v  ->
      .print ppf 
;;


(** {6 Extracting.} *)

let block_zerozero_symbol_off_fragment_closed_symbol = function
  | Fcs_v smb_bzz -> smb_bzz
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_symbol_off_fragment_closed_symbol"
     "Block_zerozero_symbol"
     (name s)
    "check"
;;

let atom_zerotied_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_off_fragment_closed_symbol smb_frc =
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc =
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_fragment_closed_symbol smb_frc =
  let smb_a0a = atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_fragment_closed_symbol smb_frc =
  let smb_a0a = atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc =
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_fragment_closed_symbol smb_frc =
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_fragment_closed_symbol smb_frc =
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_fragment_closed_symbol smb_frc =
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_fragment_closed_symbol smb_frc =
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let block_zerozero_diatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    B00s_v_off_block_zerozero_symbol smb_bzz
;;


(** {6 Querying.} *)

let is_block_zerozero_symbol_off_fragment_closed_symbol = function
  | Fragment_closed_symbol_t.Block_zerozero_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      B00s_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_atom_zerotied_raregas_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_block_zerozero_diatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      B00s_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_triatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      B00s_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_tetratomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      B00s_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

let is_block_zerozero_pentatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      B00s_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;


(** {6 Upgrading.} *)

let fragment_zerozero = Fcs_t.Fragment_zerozero;;

let fragment_closed_symbol_of_block_zerozero_symbol smb_bzz =
Fcs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_atom_zerotied_symbol smb_at0 =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_at0 in
fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
fragment_closed_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_raregas_symbol_of_block_zerozero_symbol smb_bzz =
A0rs_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
fragment_closed_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
fragment_closed_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0am1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
fragment_closed_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0am2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_anion_minus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0am2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
fragment_closed_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
fragment_closed_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_one_symbol_of_block_zerozero_symbol smb_bzz =
A0cp1s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
fragment_closed_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_two_symbol_of_block_zerozero_symbol smb_bzz =
A0cp2s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
fragment_closed_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_block_zerozero_symbol smb_bzz =
A0cp3s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_cation_plus_three_symbol_of_block_zerozero_symbol smb_bzz =
A0cp3s_v.block_zerozero_symbol smb_bzz
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
fragment_closed_symbol_of_atom_zerotied_symbol smb_at0
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let halfbridge_symbol_of_block_zerozero_symbol smb_bzz =
Has_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_zzd =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_zzd in
fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_diatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ds_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_zzt in
fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00ts_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_zzq =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_zzq in
fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_symbol smb_bzz =
B00qs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_symbol smb_bzz =
B00qs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_zzc =
  let smb_bzz = B00s_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_zzc in
fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00cs_v.block_zerozero_symbol smb_bzz
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_symbol smb_bzz =
B00cs_v.block_zerozero_symbol smb_bzz
;;

let segment_head_extends_fragment_leaf = Fcs_t.Segment_head_extends_fragment_leaf;;



(** created by ./generator fragment_closed v symbol at 11:8 26 Apr 2011. *)




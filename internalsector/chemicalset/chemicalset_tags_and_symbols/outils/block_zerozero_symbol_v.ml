(** {3 A Symbol for a Block_zerozero.} *)

let nam_cod = "block_zerozero_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0s_v = Atom_zerotied_symbol_v
module B00ds_v = Block_zerozero_diatomic_symbol_v
module B00ts_v = Block_zerozero_triatomic_symbol_v
module B00qs_v = Block_zerozero_tetratomic_symbol_v
module B00cs_v = Block_zerozero_pentatomic_symbol_v


let name = function
  | B00s_v smb_at0 ->
      A0s_v.name smb_at0
  | B00s_v smb_zzd ->
      B00ds_v.name smb_zzd
  | B00s_v smb_zzt ->
      B00ts_v.name smb_zzt
  | B00s_v smb_zzq ->
      B00qs_v.name smb_zzq
  | B00s_v smb_zzc ->
      B00cs_v.name smb_zzc
;;


let print ppf = function
  | B00s_v smb_at0 ->
      A0s_v.print ppf smb_at0
  | B00s_v smb_zzd ->
      B00ds_v.print ppf smb_zzd
  | B00s_v smb_zzt ->
      B00ts_v.print ppf smb_zzt
  | B00s_v smb_zzq ->
      B00qs_v.print ppf smb_zzq
  | B00s_v smb_zzc ->
      B00cs_v.print ppf smb_zzc
;;


(** {6 Extracting.} *)

let atom_zerotied_symbol_off_block_zerozero_symbol = function
  | B00s_v smb_at0 -> smb_at0
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_symbol_off_block_zerozero_symbol"
     "Atom_zerotied_symbol"
     (name s)
    "check"
;;

let atom_zerotied_raregas_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_a0a = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_a0a = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let block_zerozero_diatomic_symbol_off_block_zerozero_symbol = function
  | B00s_v smb_zzd -> smb_zzd
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_diatomic_symbol_off_block_zerozero_symbol"
     "Block_zerozero_diatomic_symbol"
     (name s)
    "check"
;;

let block_zerozero_triatomic_symbol_off_block_zerozero_symbol = function
  | B00s_v smb_zzt -> smb_zzt
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_triatomic_symbol_off_block_zerozero_symbol"
     "Block_zerozero_triatomic_symbol"
     (name s)
    "check"
;;

let block_zerozero_tetratomic_symbol_off_block_zerozero_symbol = function
  | B00s_v smb_zzq -> smb_zzq
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_tetratomic_symbol_off_block_zerozero_symbol"
     "Block_zerozero_tetratomic_symbol"
     (name s)
    "check"
;;

let block_zerozero_pentatomic_symbol_off_block_zerozero_symbol = function
  | B00s_v smb_zzc -> smb_zzc
  | s -> Erm_v.print_fatal_error nam_cod
     "block_zerozero_pentatomic_symbol_off_block_zerozero_symbol"
     "Block_zerozero_pentatomic_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_zerotied_symbol_off_block_zerozero_symbol = function
  | Block_zerozero_symbol_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_raregas_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol = function
  | Block_zerozero_symbol_t.Block_zerozero_diatomic_symbol _ -> true
  | _ -> false
;;

let is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol = function
  | Block_zerozero_symbol_t.Block_zerozero_triatomic_symbol _ -> true
  | _ -> false
;;

let is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol = function
  | Block_zerozero_symbol_t.Block_zerozero_tetratomic_symbol _ -> true
  | _ -> false
;;

let is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol = function
  | Block_zerozero_symbol_t.Block_zerozero_pentatomic_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let block_zerozero_symbol_of_atom_zerotied_symbol smb_at0 =
B00s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
block_zerozero_symbol_of_atom_zerotied_symbol smb_at0
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
block_zerozero_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
block_zerozero_symbol_of_atom_zerotied_anion_symbol smb_a0a
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
block_zerozero_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
block_zerozero_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_a0c
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
block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_a0c
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
block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
block_zerozero_symbol_of_atom_zerotied_symbol smb_at0
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

let block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_zzd =
B00s_v.block_zerozero_diatomic_symbol smb_zzd
;;

let block_zerozero_diatomic_symbol_of_block_zerozero_diatomic_symbol smb_zzd =
B00ds_v.block_zerozero_diatomic_symbol smb_zzd
;;

let block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00s_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00ts_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00ts_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00ts_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00ts_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_triatomic_symbol_of_block_zerozero_triatomic_symbol smb_zzt =
B00ts_v.block_zerozero_triatomic_symbol smb_zzt
;;

let block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_zzq =
B00s_v.block_zerozero_tetratomic_symbol smb_zzq
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_tetratomic_symbol smb_zzq =
B00qs_v.block_zerozero_tetratomic_symbol smb_zzq
;;

let block_zerozero_tetratomic_symbol_of_block_zerozero_tetratomic_symbol smb_zzq =
B00qs_v.block_zerozero_tetratomic_symbol smb_zzq
;;

let block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_zzc =
B00s_v.block_zerozero_pentatomic_symbol smb_zzc
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_pentatomic_symbol smb_zzc =
B00cs_v.block_zerozero_pentatomic_symbol smb_zzc
;;

let block_zerozero_pentatomic_symbol_of_block_zerozero_pentatomic_symbol smb_zzc =
B00cs_v.block_zerozero_pentatomic_symbol smb_zzc
;;



(** created by ./generator block_zerozero v symbol at 11:8 26 Apr 2011. *)




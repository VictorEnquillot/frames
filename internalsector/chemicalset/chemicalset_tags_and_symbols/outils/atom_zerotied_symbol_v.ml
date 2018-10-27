(** {3 A Symbol for a Atom_zerotied.} *)

let nam_cod = "atom_zerotied_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0rs_v = Atom_zerotied_raregas_symbol_v
module A0as_v = Atom_zerotied_anion_symbol_v
module A0cs_v = Atom_zerotied_cation_symbol_v
module Has_v = Halfbridge_symbol_v


let name = function
  | A0s_v smb_a0r ->
      A0rs_v.name smb_a0r
  | A0s_v smb_a0a ->
      A0as_v.name smb_a0a
  | A0s_v smb_a0c ->
      A0cs_v.name smb_a0c
  | A0s_v smb_hae ->
      Has_v.name smb_hae
;;


let print ppf = function
  | A0s_v smb_a0r ->
      A0rs_v.print ppf smb_a0r
  | A0s_v smb_a0a ->
      A0as_v.print ppf smb_a0a
  | A0s_v smb_a0c ->
      A0cs_v.print ppf smb_a0c
  | A0s_v smb_hae ->
      Has_v.print ppf smb_hae
;;


(** {6 Extracting.} *)

let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | A0s_v smb_a0r -> smb_a0r
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_raregas_symbol_off_atom_zerotied_symbol"
     "Atom_zerotied_raregas_symbol"
     (name s)
    "check"
;;

let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | A0s_v smb_a0a -> smb_a0a
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_anion_symbol_off_atom_zerotied_symbol"
     "Atom_zerotied_anion_symbol"
     (name s)
    "check"
;;

let atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_at0 =
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_at0 =
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | A0s_v smb_a0c -> smb_a0c
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_cation_symbol_off_atom_zerotied_symbol"
     "Atom_zerotied_cation_symbol"
     (name s)
    "check"
;;

let atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_at0 =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_at0 =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_at0 =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_atom_zerotied_symbol = function
  | A0s_v smb_hae -> smb_hae
  | s -> Erm_v.print_fatal_error nam_cod
     "halfbridge_symbol_off_atom_zerotied_symbol"
     "Halfbridge_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_raregas_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_anion_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_at0 =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_at0 =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0 in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_cation_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0 in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Halfbridge_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0s_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0rs_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0rs_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0rs_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0rs_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_raregas_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0rs_v.atom_zerotied_raregas_symbol smb_a0r
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am1s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am1s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am1s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am1s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_one_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am1s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am2s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0am2s_v.atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_one_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp1s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp2s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp2s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp2s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp2s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp2s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp3s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0cp3s_v.atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
A0s_v.halfbridge_symbol smb_hae
;;

let halfbridge_symbol_of_halfbridge_symbol smb_hae =
Has_v.halfbridge_symbol smb_hae
;;

let halfbridge_symbol_of_halfbridge_symbol smb_hae =
Has_v.halfbridge_symbol smb_hae
;;

let halfbridge_symbol_of_halfbridge_symbol smb_hae =
Has_v.halfbridge_symbol smb_hae
;;

let halfbridge_symbol_of_halfbridge_symbol smb_hae =
Has_v.halfbridge_symbol smb_hae
;;



(** created by ./generator atom_zerotied v symbol at 11:8 26 Apr 2011. *)




(** {6 Querying.} *)


let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | A0s_t.Atom_zerotied_raregas_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | A0s_t.Atom_zerotied_anion_symbol _ -> true
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
  | A0s_t.Atom_zerotied_cation_symbol _ -> true
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
  | A0s_t.Halfbridge_symbol _ -> true
  | _ -> false
;;



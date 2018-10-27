(** {6 Querying.} *)

let is_atom_zerotied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_raregas_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
      A0s_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
      A0s_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
      A0as_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_anion_minus_two_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
      A0as_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
      A0s_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_zerotied_cation_plus_one_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      A0cs_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_two_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      A0cs_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_atom_zerotied_cation_plus_three_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      A0cs_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_a0c
    end
;;

let is_halfbridge_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
      A0s_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_at0
    end
;;

let is_atom_onetied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_onetied_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
      A1s_v.is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol smb_at1
    end
;;

let is_atom_onetied_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
      A1s_v.is_atom_onetied_double_symbol_off_atom_onetied_symbol smb_at1
    end
;;

let is_atom_onetied_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
      A1s_v.is_atom_onetied_single_symbol_off_atom_onetied_symbol smb_at1
    end
;;

let is_atom_onetied_triple_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
      A1s_v.is_atom_onetied_triple_symbol_off_atom_onetied_symbol smb_at1
    end
;;

let is_atom_twotied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_twotied_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_single_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_single_single_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_single_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_single_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_single_triple_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_conjugated_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_twotied_double_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
      A2s_v.is_atom_twotied_double_double_symbol_off_atom_twotied_symbol smb_at2
    end
;;

let is_atom_threetied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_threetied_symbol _ -> true
  | _ -> false
;;

let is_atom_threetied_single_single_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
      A3s_v.is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_at3
    end
;;

let is_atom_threetied_single_single_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
      A3s_v.is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol smb_at3
    end
;;

let is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
      A3s_v.is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_at3
    end
;;

let is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
      A3s_v.is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_at3
    end
;;

let is_atom_threetied_double_double_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
      A3s_v.is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol smb_at3
    end
;;

let is_atom_fourtied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_fourtied_symbol _ -> true
  | _ -> false
;;

let is_atom_fivetied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_fivetied_symbol _ -> true
  | _ -> false
;;

let is_atom_sixtied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_sixtied_symbol _ -> true
  | _ -> false
;;



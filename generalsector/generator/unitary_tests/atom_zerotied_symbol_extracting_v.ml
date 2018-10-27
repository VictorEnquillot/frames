(** {6 Extracting.} *)


let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r -> smb_a0r
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_raregas_symbol_off_atom_zerotied_symbol"
     "Atom_zerotied_raregas_symbol"
     (name s)
    "check"
;;

let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | A0s_t.Atom_zerotied_anion_symbol smb_a0a -> smb_a0a
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
  | A0s_t.Atom_zerotied_cation_symbol smb_a0c -> smb_a0c
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
  | A0s_t.Halfbridge_symbol smb_hae -> smb_hae
  | s -> Erm_v.print_fatal_error nam_cod
     "halfbridge_symbol_off_atom_zerotied_symbol"
     "Halfbridge_symbol"
     (name s)
    "check"
;;



(** {3 A Symbol for a Atom.} *)

let nam_cod = "atom_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A0s_v = Atom_zerotied_symbol_v
module A1s_v = Atom_onetied_symbol_v
module A2s_v = Atom_twotied_symbol_v
module A3s_v = Atom_threetied_symbol_v
module A4s_v = Atom_fourtied_symbol_v
module A5s_v = Atom_fivetied_symbol_v
module A6s_v = Atom_sixtied_symbol_v


let name = function
  | Ats_v smb_at0 ->
      A0s_v.name smb_at0
  | Ats_v smb_at1 ->
      A1s_v.name smb_at1
  | Ats_v smb_at2 ->
      A2s_v.name smb_at2
  | Ats_v smb_at3 ->
      A3s_v.name smb_at3
  | Ats_v smb_at4 ->
      A4s_v.name smb_at4
  | Ats_v smb_at5 ->
      A5s_v.name smb_at5
  | Ats_v smb_at6 ->
      A6s_v.name smb_at6
;;


let print ppf = function
  | Ats_v smb_at0 ->
      A0s_v.print ppf smb_at0
  | Ats_v smb_at1 ->
      A1s_v.print ppf smb_at1
  | Ats_v smb_at2 ->
      A2s_v.print ppf smb_at2
  | Ats_v smb_at3 ->
      A3s_v.print ppf smb_at3
  | Ats_v smb_at4 ->
      A4s_v.print ppf smb_at4
  | Ats_v smb_at5 ->
      A5s_v.print ppf smb_at5
  | Ats_v smb_at6 ->
      A6s_v.print ppf smb_at6
;;


(** {6 Extracting.} *)

let atom_zerotied_symbol_off_atom_symbol = function
  | Ats_v smb_at0 -> smb_at0
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_zerotied_symbol_off_atom_symbol"
     "Atom_zerotied_symbol"
     (name s)
    "check"
;;

let atom_zerotied_raregas_symbol_off_atom_symbol smb_atm =
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_off_atom_symbol smb_atm =
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_off_atom_symbol smb_atm =
  let smb_a0a = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
    A0as_v_off_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_cation_symbol_off_atom_symbol smb_atm =
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_one_symbol_off_atom_symbol smb_atm =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_two_symbol_off_atom_symbol smb_atm =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_off_atom_symbol smb_atm =
  let smb_a0c = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    A0cs_v_off_atom_zerotied_cation_symbol smb_a0c
;;

let halfbridge_symbol_off_atom_symbol smb_atm =
  let smb_at0 = atom_zerotied_symbol_off_atom_symbol smb_atm in
    A0s_v_off_atom_zerotied_symbol smb_at0
;;

let atom_onetied_symbol_off_atom_symbol = function
  | Ats_v smb_at1 -> smb_at1
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_symbol_off_atom_symbol"
     "Atom_onetied_symbol"
     (name s)
    "check"
;;

let atom_onetied_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
    A1s_v_off_atom_onetied_symbol smb_at1
;;

let atom_onetied_double_symbol_off_atom_symbol smb_atm =
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
    A1s_v_off_atom_onetied_symbol smb_at1
;;

let atom_onetied_single_symbol_off_atom_symbol smb_atm =
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
    A1s_v_off_atom_onetied_symbol smb_at1
;;

let atom_onetied_triple_symbol_off_atom_symbol smb_atm =
  let smb_at1 = atom_onetied_symbol_off_atom_symbol smb_atm in
    A1s_v_off_atom_onetied_symbol smb_at1
;;

let atom_twotied_symbol_off_atom_symbol = function
  | Ats_v smb_at2 -> smb_at2
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_symbol_off_atom_symbol"
     "Atom_twotied_symbol"
     (name s)
    "check"
;;

let atom_twotied_single_single_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_double_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_triple_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_conjugated_double_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_twotied_double_double_symbol_off_atom_symbol smb_atm =
  let smb_at2 = atom_twotied_symbol_off_atom_symbol smb_atm in
    A2s_v_off_atom_twotied_symbol smb_at2
;;

let atom_threetied_symbol_off_atom_symbol = function
  | Ats_v smb_at3 -> smb_at3
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_symbol_off_atom_symbol"
     "Atom_threetied_symbol"
     (name s)
    "check"
;;

let atom_threetied_single_single_single_symbol_off_atom_symbol smb_atm =
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
    A3s_v_off_atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_double_symbol_off_atom_symbol smb_atm =
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
    A3s_v_off_atom_threetied_symbol smb_at3
;;

let atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
    A3s_v_off_atom_threetied_symbol smb_at3
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
    A3s_v_off_atom_threetied_symbol smb_at3
;;

let atom_threetied_double_double_double_symbol_off_atom_symbol smb_atm =
  let smb_at3 = atom_threetied_symbol_off_atom_symbol smb_atm in
    A3s_v_off_atom_threetied_symbol smb_at3
;;

let atom_fourtied_symbol_off_atom_symbol = function
  | Ats_v smb_at4 -> smb_at4
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_fourtied_symbol_off_atom_symbol"
     "Atom_fourtied_symbol"
     (name s)
    "check"
;;

let atom_fivetied_symbol_off_atom_symbol = function
  | Ats_v smb_at5 -> smb_at5
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_fivetied_symbol_off_atom_symbol"
     "Atom_fivetied_symbol"
     (name s)
    "check"
;;

let atom_sixtied_symbol_off_atom_symbol = function
  | Ats_v smb_at6 -> smb_at6
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_sixtied_symbol_off_atom_symbol"
     "Atom_sixtied_symbol"
     (name s)
    "check"
;;


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


(** {6 Upgrading.} *)

let atom_symbol_of_atom_zerotied_symbol smb_at0 =
Ats_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
atom_symbol_of_atom_zerotied_symbol smb_at0
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
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
atom_symbol_of_atom_zerotied_anion_symbol smb_a0a
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
atom_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_minus_two_symbol_of_atom_zerotied_symbol smb_at0 =
A0am2s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
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
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
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
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_plus_three_symbol_of_atom_zerotied_symbol smb_at0 =
A0cp3s_v.atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
atom_symbol_of_atom_zerotied_symbol smb_at0
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

let atom_symbol_of_atom_onetied_symbol smb_at1 =
Ats_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_a1c =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_a1c in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let atom_onetied_conjugated_symbol_of_atom_onetied_symbol smb_at1 =
A1cs_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_symbol_of_atom_onetied_double_symbol smb_a1d =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_double_symbol smb_a1d in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let atom_onetied_double_symbol_of_atom_onetied_symbol smb_at1 =
A1ds_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_symbol_of_atom_onetied_single_symbol smb_a1s =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_single_symbol smb_a1s in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let atom_onetied_single_symbol_of_atom_onetied_symbol smb_at1 =
A1ss_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_single_symbol_of_atom_onetied_symbol smb_at1 =
A1ss_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_symbol_of_atom_onetied_triple_symbol smb_a1t =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_triple_symbol smb_a1t in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let atom_onetied_triple_symbol_of_atom_onetied_symbol smb_at1 =
A1ts_v.atom_onetied_symbol smb_at1
;;

let atom_onetied_triple_symbol_of_atom_onetied_symbol smb_at1 =
A1ts_v.atom_onetied_symbol smb_at1
;;

let atom_symbol_of_atom_twotied_symbol smb_at2 =
Ats_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_2ss =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_2ss in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_single_symbol_of_atom_twotied_symbol smb_at2 =
A2sss_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_single_single_symbol_of_atom_twotied_symbol smb_at2 =
A2sss_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_single_single_symbol_of_atom_twotied_symbol smb_at2 =
A2sss_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_conjugated_symbol_of_atom_twotied_symbol smb_at2 =
A2scs_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_single_conjugated_symbol_of_atom_twotied_symbol smb_at2 =
A2scs_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_2sd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_2sd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_double_symbol_of_atom_twotied_symbol smb_at2 =
A2sds_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_2st =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_2st in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_single_triple_symbol_of_atom_twotied_symbol smb_at2 =
A2sts_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_single_triple_symbol_of_atom_twotied_symbol smb_at2 =
A2sts_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_conjugated_conjugated_symbol_of_atom_twotied_symbol smb_at2 =
A2ccs_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_conjugated_conjugated_symbol_of_atom_twotied_symbol smb_at2 =
A2ccs_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_conjugated_double_symbol_of_atom_twotied_symbol smb_at2 =
A2cds_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_2dd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_2dd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let atom_twotied_double_double_symbol_of_atom_twotied_symbol smb_at2 =
A2dds_v.atom_twotied_symbol smb_at2
;;

let atom_twotied_double_double_symbol_of_atom_twotied_symbol smb_at2 =
A2dds_v.atom_twotied_symbol smb_at2
;;

let atom_symbol_of_atom_threetied_symbol smb_at3 =
Ats_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_sss =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_sss in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_single_symbol_of_atom_threetied_symbol smb_at3 =
A3ssss_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_single_symbol_of_atom_threetied_symbol smb_at3 =
A3ssss_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_ssd in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_symbol smb_at3 =
A3ssds_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_symbol smb_at3 =
A3ssds_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_symbol smb_at3 =
A3ssds_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let atom_threetied_single_conjugated_conjugated_symbol_of_atom_threetied_symbol smb_at3 =
A3sccs_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_single_conjugated_conjugated_symbol_of_atom_threetied_symbol smb_at3 =
A3sccs_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_of_atom_threetied_symbol smb_at3 =
A3cccs_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_of_atom_threetied_symbol smb_at3 =
A3cccs_v.atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_ddd =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_ddd in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let atom_threetied_double_double_double_symbol_of_atom_threetied_symbol smb_at3 =
A3ddds_v.atom_threetied_symbol smb_at3
;;

let atom_symbol_of_atom_fourtied_symbol smb_at4 =
Ats_v.atom_fourtied_symbol smb_at4
;;

let atom_fourtied_symbol_of_atom_fourtied_symbol smb_at4 =
A4s_v.atom_fourtied_symbol smb_at4
;;

let atom_fourtied_symbol_of_atom_fourtied_symbol smb_at4 =
A4s_v.atom_fourtied_symbol smb_at4
;;

let atom_fourtied_symbol_of_atom_fourtied_symbol smb_at4 =
A4s_v.atom_fourtied_symbol smb_at4
;;

let atom_fourtied_symbol_of_atom_fourtied_symbol smb_at4 =
A4s_v.atom_fourtied_symbol smb_at4
;;

let atom_symbol_of_atom_fivetied_symbol smb_at5 =
Ats_v.atom_fivetied_symbol smb_at5
;;

let atom_fivetied_symbol_of_atom_fivetied_symbol smb_at5 =
A5s_v.atom_fivetied_symbol smb_at5
;;

let atom_symbol_of_atom_sixtied_symbol smb_at6 =
Ats_v.atom_sixtied_symbol smb_at6
;;

let atom_sixtied_symbol_of_atom_sixtied_symbol smb_at6 =
A6s_v.atom_sixtied_symbol smb_at6
;;



(** created by ./generator atom v symbol at 11:8 26 Apr 2011. *)




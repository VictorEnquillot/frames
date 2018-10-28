(** {3 A Symbol for a Atom.} *)

let nam_cod = "atom_symbol_v.ml";;


(** {6 Modules.} *)

module A6s_v = Atom_sixtied_symbol_v
module A5s_v = Atom_fivetied_symbol_v
module A4s_v = Atom_fourtied_symbol_v
module A3ddds_v = Atom_threetied_double_double_double_symbol_v
module A3cccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v
module A3sccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v
module A3ssds_v = Atom_threetied_single_single_double_symbol_v
module A3ssss_v = Atom_threetied_single_single_single_symbol_v
module A3s_v = Atom_threetied_symbol_v
module A2dds_v = Atom_twotied_double_double_symbol_v
module A2cds_v = Atom_twotied_conjugated_double_symbol_v
module A2ccs_v = Atom_twotied_conjugated_conjugated_symbol_v
module A2sts_v = Atom_twotied_single_triple_symbol_v
module A2sds_v = Atom_twotied_single_double_symbol_v
module A2scs_v = Atom_twotied_single_conjugated_symbol_v
module A2sss_v = Atom_twotied_single_single_symbol_v
module A2s_v = Atom_twotied_symbol_v
module A1ts_v = Atom_onetied_triple_symbol_v
module A1ss_v = Atom_onetied_single_symbol_v
module A1ds_v = Atom_onetied_double_symbol_v
module A1cs_v = Atom_onetied_conjugated_symbol_v
module A1s_v = Atom_onetied_symbol_v
module Has_v = Halfbridge_symbol_v
module A0cp3s_v = Atom_zerotied_cation_plus_three_symbol_v
module A0cp2s_v = Atom_zerotied_cation_plus_two_symbol_v
module A0cp1s_v = Atom_zerotied_cation_plus_one_symbol_v
module A0cs_v = Atom_zerotied_cation_symbol_v
module A0am2s_v = Atom_zerotied_anion_minus_two_symbol_v
module A0am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module A0as_v = Atom_zerotied_anion_symbol_v
module A0rs_v = Atom_zerotied_raregas_symbol_v
module A0s_v = Atom_zerotied_symbol_v

module A3ddds_t = Atom_threetied_double_double_double_symbol_t
module A3cccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module A3sccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module A3ssds_t = Atom_threetied_single_single_double_symbol_t
module A3ssss_t = Atom_threetied_single_single_single_symbol_t
module A2dds_t = Atom_twotied_double_double_symbol_t
module A2cds_t = Atom_twotied_conjugated_double_symbol_t
module A2ccs_t = Atom_twotied_conjugated_conjugated_symbol_t
module A2sts_t = Atom_twotied_single_triple_symbol_t
module A2sds_t = Atom_twotied_single_double_symbol_t
module A2scs_t = Atom_twotied_single_conjugated_symbol_t
module A2sss_t = Atom_twotied_single_single_symbol_t
module A1ts_t = Atom_onetied_triple_symbol_t
module A1ss_t = Atom_onetied_single_symbol_t
module A1ds_t = Atom_onetied_double_symbol_t
module A1cs_t = Atom_onetied_conjugated_symbol_t
module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t
module A0cp2s_t = Atom_zerotied_cation_plus_two_symbol_t
module A0cp1s_t = Atom_zerotied_cation_plus_one_symbol_t
module A0am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module A0am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Has_t = Halfbridge_symbol_t
module A0cs_t = Atom_zerotied_cation_symbol_t
module A0as_t = Atom_zerotied_anion_symbol_t
module A0rs_t = Atom_zerotied_raregas_symbol_t
module A6s_t = Atom_sixtied_symbol_t
module A5s_t = Atom_fivetied_symbol_t
module A4s_t = Atom_fourtied_symbol_t
module A3s_t = Atom_threetied_symbol_t
module A2s_t = Atom_twotied_symbol_t
module A1s_t = Atom_onetied_symbol_t
module A0s_t = Atom_zerotied_symbol_t
module Ats_t = Atom_symbol_t



(** {6 Naming.} *)

let name = function
  | Ats_t.Atom_zerotied_symbol smb_at0 ->
      A0s_v.name smb_at0
  | Ats_t.Atom_onetied_symbol smb_at1 ->
      A1s_v.name smb_at1
  | Ats_t.Atom_twotied_symbol smb_at2 ->
      A2s_v.name smb_at2
  | Ats_t.Atom_threetied_symbol smb_at3 ->
      A3s_v.name smb_at3
  | Ats_t.Atom_fourtied_symbol smb_at4 ->
      A4s_v.name smb_at4
  | Ats_t.Atom_fivetied_symbol smb_at5 ->
      A5s_v.name smb_at5
  | Ats_t.Atom_sixtied_symbol smb_at6 ->
      A6s_v.name smb_at6
;;


(** {6 Printing.} *)

let print ppf = function
  | Ats_t.Atom_zerotied_symbol smb_at0 ->
      A0s_v.print ppf smb_at0
  | Ats_t.Atom_onetied_symbol smb_at1 ->
      A1s_v.print ppf smb_at1
  | Ats_t.Atom_twotied_symbol smb_at2 ->
      A2s_v.print ppf smb_at2
  | Ats_t.Atom_threetied_symbol smb_at3 ->
      A3s_v.print ppf smb_at3
  | Ats_t.Atom_fourtied_symbol smb_at4 ->
      A4s_v.print ppf smb_at4
  | Ats_t.Atom_fivetied_symbol smb_at5 ->
      A5s_v.print ppf smb_at5
  | Ats_t.Atom_sixtied_symbol smb_at6 ->
      A6s_v.print ppf smb_at6
;;


(** {6 Extracting.} *)


let atom_zerotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_zerotied_symbol smb_at0 -> smb_at0
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
  | Ats_t.Atom_onetied_symbol smb_at1 -> smb_at1
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
  | Ats_t.Atom_twotied_symbol smb_at2 -> smb_at2
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
  | Ats_t.Atom_threetied_symbol smb_at3 -> smb_at3
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
  | Ats_t.Atom_fourtied_symbol smb_at4 -> smb_at4
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_fourtied_symbol_off_atom_symbol"
     "Atom_fourtied_symbol"
     (name s)
    "check"
;;

let atom_fivetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fivetied_symbol smb_at5 -> smb_at5
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_fivetied_symbol_off_atom_symbol"
     "Atom_fivetied_symbol"
     (name s)
    "check"
;;

let atom_sixtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_sixtied_symbol smb_at6 -> smb_at6
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_sixtied_symbol_off_atom_symbol"
     "Atom_sixtied_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)


let is_atom_zerotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_zerotied_symbol _ -> true
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
  | Ats_t.Atom_onetied_symbol _ -> true
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
  | Ats_t.Atom_twotied_symbol _ -> true
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
  | Ats_t.Atom_threetied_symbol _ -> true
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
  | Ats_t.Atom_fourtied_symbol _ -> true
  | _ -> false
;;

let is_atom_fivetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fivetied_symbol _ -> true
  | _ -> false
;;

let is_atom_sixtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_sixtied_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)


let atom_symbol_of_atom_zerotied_symbol smb_at0 =
Ats_t.Atom_zerotied_symbol smb_at0
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r in
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let ar = atom_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ar;;

let he = atom_symbol_of_atom_zerotied_raregas_symbol A0rs_t.He;;

let kr = atom_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Kr;;

let ne = atom_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ne;;

let xe = atom_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Xe;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a in
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
atom_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let f_1m = atom_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.F_1m;;

let h_1m = atom_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.H_1m;;

let cl_1m = atom_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Cl_1m;;

let br_1m = atom_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Br_1m;;

let i_1m = atom_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.I_1m;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
atom_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let o_2m = atom_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.O_2m;;

let s_2m = atom_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.S_2m;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c in
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let h_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.H_1p;;

let k_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.K_1p;;

let li_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Li_1p;;

let na_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Na_1p;;

let ni_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Ni_1p;;

let cu_1p = atom_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Cu_1p;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let mg_2p = atom_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Mg_2p;;

let ca_2p = atom_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Ca_2p;;

let fe_2p = atom_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Fe_2p;;

let zn_2p = atom_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Zn_2p;;

let cu_2p = atom_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Cu_2p;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
atom_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let fe_3p = atom_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Fe_3p;;

let ni_3p = atom_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Ni_3p;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
  let smb_at0 = A0s_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hae in
atom_symbol_of_atom_zerotied_symbol smb_at0
;;

let hbc = atom_symbol_of_halfbridge_symbol Has_t.Hbc;;

let hbd = atom_symbol_of_halfbridge_symbol Has_t.Hbd;;

let hbs = atom_symbol_of_halfbridge_symbol Has_t.Hbs;;

let hbt = atom_symbol_of_halfbridge_symbol Has_t.Hbt;;

let atom_symbol_of_atom_onetied_symbol smb_at1 =
Ats_t.Atom_onetied_symbol smb_at1
;;

let atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_a1c =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_a1c in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let o_c = atom_symbol_of_atom_onetied_conjugated_symbol A1cs_t.O_c;;

let atom_onetied_symbol_of_atom_onetied_double_symbol smb_a1d =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_double_symbol smb_a1d in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let o_d = atom_symbol_of_atom_onetied_double_symbol A1ds_t.O_d;;

let atom_onetied_symbol_of_atom_onetied_single_symbol smb_a1s =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_single_symbol smb_a1s in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let h_s = atom_symbol_of_atom_onetied_single_symbol A1ss_t.H_s;;

let f_s = atom_symbol_of_atom_onetied_single_symbol A1ss_t.F_s;;

let atom_onetied_symbol_of_atom_onetied_triple_symbol smb_a1t =
  let smb_at1 = A1s_v.atom_onetied_symbol_of_atom_onetied_triple_symbol smb_a1t in
atom_symbol_of_atom_onetied_symbol smb_at1
;;

let n_t = atom_symbol_of_atom_onetied_triple_symbol A1ts_t.N_t;;

let o_t = atom_symbol_of_atom_onetied_triple_symbol A1ts_t.O_t;;

let atom_symbol_of_atom_twotied_symbol smb_at2 =
Ats_t.Atom_twotied_symbol smb_at2
;;

let atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_2ss =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_2ss in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let cl_ss = atom_symbol_of_atom_twotied_single_single_symbol A2sss_t.Cl_ss;;

let f_ss = atom_symbol_of_atom_twotied_single_single_symbol A2sss_t.F_ss;;

let h_ss = atom_symbol_of_atom_twotied_single_single_symbol A2sss_t.H_ss;;

let atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let n_sc = atom_symbol_of_atom_twotied_single_conjugated_symbol A2scs_t.N_sc;;

let o_sc = atom_symbol_of_atom_twotied_single_conjugated_symbol A2scs_t.O_sc;;

let atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_2sd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_2sd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let n_sd = atom_symbol_of_atom_twotied_single_double_symbol A2sds_t.N_sd;;

let atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_2st =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_2st in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let c_st = atom_symbol_of_atom_twotied_single_triple_symbol A2sts_t.C_st;;

let n_st = atom_symbol_of_atom_twotied_single_triple_symbol A2sts_t.N_st;;

let atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let n_cc = atom_symbol_of_atom_twotied_conjugated_conjugated_symbol A2ccs_t.N_cc;;

let o_cc = atom_symbol_of_atom_twotied_conjugated_conjugated_symbol A2ccs_t.O_cc;;

let atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let c_cd = atom_symbol_of_atom_twotied_conjugated_double_symbol A2cds_t.C_cd;;

let atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_2dd =
  let smb_at2 = A2s_v.atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_2dd in
atom_symbol_of_atom_twotied_symbol smb_at2
;;

let c_dd = atom_symbol_of_atom_twotied_double_double_symbol A2dds_t.C_dd;;

let s_dd = atom_symbol_of_atom_twotied_double_double_symbol A2dds_t.S_dd;;

let atom_symbol_of_atom_threetied_symbol smb_at3 =
Ats_t.Atom_threetied_symbol smb_at3
;;

let atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_sss =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_sss in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let n_sss = atom_symbol_of_atom_threetied_single_single_single_symbol A3ssss_t.N_sss;;

let cl_sss = atom_symbol_of_atom_threetied_single_single_single_symbol A3ssss_t.Cl_sss;;

let atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_ssd in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let c_ssd = atom_symbol_of_atom_threetied_single_single_double_symbol A3ssds_t.C_ssd;;

let n_sdd = atom_symbol_of_atom_threetied_single_single_double_symbol A3ssds_t.N_sdd;;

let s_sdd = atom_symbol_of_atom_threetied_single_single_double_symbol A3ssds_t.S_sdd;;

let atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let c_scc = atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol A3sccs_t.C_scc;;

let n_scc = atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol A3sccs_t.N_scc;;

let atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let c_ccc = atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol A3cccs_t.C_ccc;;

let n_ccc = atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol A3cccs_t.N_ccc;;

let atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_ddd =
  let smb_at3 = A3s_v.atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_ddd in
atom_symbol_of_atom_threetied_symbol smb_at3
;;

let s_ddd = atom_symbol_of_atom_threetied_double_double_double_symbol A3ddds_t.S_ddd;;

let atom_symbol_of_atom_fourtied_symbol smb_at4 =
Ats_t.Atom_fourtied_symbol smb_at4
;;

let c_4s = atom_symbol_of_atom_fourtied_symbol A4s_t.C_4s;;

let n_4s = atom_symbol_of_atom_fourtied_symbol A4s_t.N_4s;;

let s_4s = atom_symbol_of_atom_fourtied_symbol A4s_t.S_4s;;

let xe_4s = atom_symbol_of_atom_fourtied_symbol A4s_t.Xe_4s;;

let atom_symbol_of_atom_fivetied_symbol smb_at5 =
Ats_t.Atom_fivetied_symbol smb_at5
;;

let cl_5s = atom_symbol_of_atom_fivetied_symbol A5s_t.Cl_5s;;

let atom_symbol_of_atom_sixtied_symbol smb_at6 =
Ats_t.Atom_sixtied_symbol smb_at6
;;

let s_6s = atom_symbol_of_atom_sixtied_symbol A6s_t.S_6s;;



(** created by ./generator atom v symbol at 18:46 11 May 2011. *)



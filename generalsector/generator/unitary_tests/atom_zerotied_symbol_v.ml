(** {3 A Symbol for a Atom_zerotied.} *)

let nam_cod = "atom_zerotied_symbol_v.ml";;


(** {6 Modules.} *)

module Has_v = Halfbridge_symbol_v
module A0cp3s_v = Atom_zerotied_cation_plus_three_symbol_v
module A0cp2s_v = Atom_zerotied_cation_plus_two_symbol_v
module A0cp1s_v = Atom_zerotied_cation_plus_one_symbol_v
module A0cs_v = Atom_zerotied_cation_symbol_v
module A0am2s_v = Atom_zerotied_anion_minus_two_symbol_v
module A0am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module A0as_v = Atom_zerotied_anion_symbol_v
module A0rs_v = Atom_zerotied_raregas_symbol_v

module A0cp3s_t = Atom_zerotied_cation_plus_three_symbol_t
module A0cp2s_t = Atom_zerotied_cation_plus_two_symbol_t
module A0cp1s_t = Atom_zerotied_cation_plus_one_symbol_t
module A0am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module A0am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Has_t = Halfbridge_symbol_t
module A0cs_t = Atom_zerotied_cation_symbol_t
module A0as_t = Atom_zerotied_anion_symbol_t
module A0rs_t = Atom_zerotied_raregas_symbol_t
module A0s_t = Atom_zerotied_symbol_t



(** {6 Naming.} *)

let name = function
  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->
      A0rs_v.name smb_a0r
  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->
      A0as_v.name smb_a0a
  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->
      A0cs_v.name smb_a0c
  | A0s_t.Halfbridge_symbol smb_hae ->
      Has_v.name smb_hae
;;


(** {6 Printing.} *)

let print ppf = function
  | A0s_t.Atom_zerotied_raregas_symbol smb_a0r ->
      A0rs_v.print ppf smb_a0r
  | A0s_t.Atom_zerotied_anion_symbol smb_a0a ->
      A0as_v.print ppf smb_a0a
  | A0s_t.Atom_zerotied_cation_symbol smb_a0c ->
      A0cs_v.print ppf smb_a0c
  | A0s_t.Halfbridge_symbol smb_hae ->
      Has_v.print ppf smb_hae
;;


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


(** {6 Upgrading.} *)


let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_a0r =
A0s_t.Atom_zerotied_raregas_symbol smb_a0r
;;

let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ar;;

let he = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.He;;

let kr = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Kr;;

let ne = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Ne;;

let xe = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol A0rs_t.Xe;;

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a =
A0s_t.Atom_zerotied_anion_symbol smb_a0a
;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let f_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.F_1m;;

let h_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.H_1m;;

let cl_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Cl_1m;;

let br_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.Br_1m;;

let i_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol A0am1s_t.I_1m;;

let atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_a0a = A0as_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_a0a
;;

let o_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.O_2m;;

let s_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol A0am2s_t.S_2m;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c =
A0s_t.Atom_zerotied_cation_symbol smb_a0c
;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_cp1 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let h_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.H_1p;;

let k_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.K_1p;;

let li_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Li_1p;;

let na_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Na_1p;;

let ni_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Ni_1p;;

let cu_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol A0cp1s_t.Cu_1p;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_cp2 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let mg_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Mg_2p;;

let ca_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Ca_2p;;

let fe_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Fe_2p;;

let zn_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Zn_2p;;

let cu_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol A0cp2s_t.Cu_2p;;

let atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 =
  let smb_a0c = A0cs_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_cp3 in
atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_a0c
;;

let fe_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Fe_3p;;

let ni_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol A0cp3s_t.Ni_3p;;

let atom_zerotied_symbol_of_halfbridge_symbol smb_hae =
A0s_t.Halfbridge_symbol smb_hae
;;

let hbc = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbc;;

let hbd = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbd;;

let hbs = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbs;;

let hbt = atom_zerotied_symbol_of_halfbridge_symbol Has_t.Hbt;;



(** created by ./generator atom_zerotied v symbol at 18:46 11 May 2011. *)




(** {3 A Symbol for a Atom_zerotied.} *)

let nam_mod = "Atom_zerotied_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t
module Ac1s_v = Atom_zerotied_cation_plus_one_symbol_v
module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t
module Ac2s_v = Atom_zerotied_cation_plus_two_symbol_v
module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t
module Ac3s_v = Atom_zerotied_cation_plus_three_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module Am2s_v = Atom_zerotied_anion_minus_two_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v

(** {6 Displaying.} *)

let name = function
  | Azes_t.Atom_zerotied_raregas_symbol smb_arg -> 
      Args_v.name smb_arg
  | Azes_t.Atom_zerotied_anion_symbol smb_aza -> 
      Aans_v.name smb_aza
  | Azes_t.Atom_zerotied_cation_symbol smb_acn -> 
      Acns_v.name smb_acn
  | Azes_t.Halfbridge_symbol smb_hbd -> 
      Hbs_v.name smb_hbd
;;

let print ppf = function
  | Azes_t.Atom_zerotied_raregas_symbol smb_arg -> 
      Args_v.print ppf smb_arg
  | Azes_t.Atom_zerotied_anion_symbol smb_aza -> 
      Aans_v.print ppf smb_aza
  | Azes_t.Atom_zerotied_cation_symbol smb_acn -> 
      Acns_v.print ppf smb_acn
  | Azes_t.Halfbridge_symbol smb_hbd -> 
      Hbs_v.print ppf smb_hbd
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_zerotied_raregas from Atom_zerotied.} *)

let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_raregas_symbol smb_arg -> smb_arg
  | s ->  print_fatal_error
      "atom_zerotied_raregas_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_raregas_symbol" (name s)
;;

(** {9 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from ar 0. *)

(** {9 Extracting He from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from he 0. *)

(** {9 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from kr 0. *)

(** {9 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from ne 0. *)

(** {9 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from xe 0. *)

(** {6 Extracting Atom_zerotied_anion from Atom_zerotied.} *)

let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_anion_symbol smb_aza -> smb_aza
  | s ->  print_fatal_error
      "atom_zerotied_anion_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_anion_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

let atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_aze =
  let smb_aza = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze in
    Aans_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Extracting F_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from f_1m 0. *)

(** {12 Extracting H_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from h_1m 0. *)

(** {12 Extracting Cl_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from cl_1m 0. *)

(** {12 Extracting Br_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from br_1m 0. *)

(** {12 Extracting I_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from i_1m 0. *)

(** {9 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

let atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_aze =
  let smb_aza = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze in
    Aans_v.atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Extracting O_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from o_2m 0. *)

(** {12 Extracting S_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from s_2m 0. *)

(** {6 Extracting Atom_zerotied_cation from Atom_zerotied.} *)

let atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_cation_symbol smb_acn -> smb_acn
  | s ->  print_fatal_error
      "atom_zerotied_cation_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_cation_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

let atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_aze =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
    Acns_v.atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting H_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from h_1p 0. *)

(** {12 Extracting K_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from k_1p 0. *)

(** {12 Extracting Li_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from li_1p 0. *)

(** {12 Extracting Na_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from na_1p 0. *)

(** {12 Extracting Ni_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ni_1p 0. *)

(** {12 Extracting Cu_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from cu_1p 0. *)

(** {9 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

let atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_aze =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
    Acns_v.atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Mg_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from mg_2p 0. *)

(** {12 Extracting Ca_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ca_2p 0. *)

(** {12 Extracting Fe_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from fe_2p 0. *)

(** {12 Extracting Zn_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from zn_2p 0. *)

(** {12 Extracting Cu_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from cu_2p 0. *)

(** {9 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

let atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_aze =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
    Acns_v.atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Fe_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from fe_3p 0. *)

(** {12 Extracting Ni_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ni_3p 0. *)

(** {6 Extracting Halfbridge from Atom_zerotied.} *)

let halfbridge_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Halfbridge_symbol smb_hbd -> smb_hbd
  | s ->  print_fatal_error
      "halfbridge_symbol_off_atom_zerotied_symbol"
      "Halfbridge_symbol" (name s)
;;

(** {9 Extracting Hbc from Halfbridge from Atom_zerotied.} *)

(* No Extraction from Hbc 0. *)

(** {9 Extracting Hbd from Halfbridge from Atom_zerotied.} *)

(* No Extraction from Hbd 0. *)

(** {9 Extracting Hbs from Halfbridge from Atom_zerotied.} *)

(* No Extraction from Hbs 0. *)

(** {9 Extracting Hbt from Halfbridge from Atom_zerotied.} *)

(* No Extraction from Hbt 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_raregas in Atom_zerotied.} *)

let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_raregas_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ar in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from ar 0. *)


(** {9 Querying He in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from he 0. *)


(** {9 Querying Kr in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from kr 0. *)


(** {9 Querying Ne in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from ne 0. *)


(** {9 Querying Xe in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from xe 0. *)


(** {6 Querying Atom_zerotied_anion in Atom_zerotied.} *)

let is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_anion_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol smb_aze =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze in
      Aans_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {12 Querying F_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from f_1m 0. *)

(** {12 Querying H_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from h_1m 0. *)

(** {12 Querying Cl_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from cl_1m 0. *)

(** {12 Querying Br_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from br_1m 0. *)

(** {12 Querying I_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from i_1m 0. *)

(** {9 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

let is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol smb_aze =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze in
      Aans_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {12 Querying O_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from o_2m 0. *)

(** {12 Querying S_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from s_2m 0. *)

(** {6 Querying Atom_zerotied_cation in Atom_zerotied.} *)

let is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Atom_zerotied_cation_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol smb_aze =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
      Acns_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying H_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from h_1p 0. *)

(** {12 Querying K_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from k_1p 0. *)

(** {12 Querying Li_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from li_1p 0. *)

(** {12 Querying Na_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from na_1p 0. *)

(** {12 Querying Ni_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ni_1p 0. *)

(** {12 Querying Cu_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from cu_1p 0. *)

(** {9 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

let is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol smb_aze =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
      Acns_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Mg_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from mg_2p 0. *)

(** {12 Querying Ca_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ca_2p 0. *)

(** {12 Querying Fe_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from fe_2p 0. *)

(** {12 Querying Zn_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from zn_2p 0. *)

(** {12 Querying Cu_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from cu_2p 0. *)

(** {9 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

let is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol smb_aze =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze in
      Acns_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Fe_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from fe_3p 0. *)

(** {12 Querying Ni_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ni_3p 0. *)

(** {6 Querying Halfbridge in Atom_zerotied.} *)

let is_halfbridge_symbol_off_atom_zerotied_symbol = function
  | Azes_t.Halfbridge_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Hbc in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbc 0. *)


(** {9 Querying Hbd in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbd 0. *)


(** {9 Querying Hbs in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbs 0. *)


(** {9 Querying Hbt in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbt 0. *)


(** {6 Upgrading from Atom_zerotied_raregas to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  Azes_t.Atom_zerotied_raregas_symbol smb_arg
;;

(** {9 Upgrading from Ar through Atom_zerotied_raregas to Atom_zerotied.} *)

let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Args_t.Ar;;

(** {9 Upgrading from He through Atom_zerotied_raregas to Atom_zerotied.} *)

let he = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Args_t.He;;

(** {9 Upgrading from Kr through Atom_zerotied_raregas to Atom_zerotied.} *)

let kr = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Args_t.Kr;;

(** {9 Upgrading from Ne through Atom_zerotied_raregas to Atom_zerotied.} *)

let ne = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Args_t.Ne;;

(** {9 Upgrading from Xe through Atom_zerotied_raregas to Atom_zerotied.} *)

let xe = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Args_t.Xe;;

(** {6 Upgrading from Atom_zerotied_anion to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza =
  Azes_t.Atom_zerotied_anion_symbol smb_aza
;;

(** {9 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
  atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Upgrading from F_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let f_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.F_1m;;

(** {12 Upgrading from H_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let h_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.H_1m;;

(** {12 Upgrading from Cl_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let cl_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.Cl_1m;;

(** {12 Upgrading from Br_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let br_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.Br_1m;;

(** {12 Upgrading from I_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

let i_1m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol Am1s_t.I_1m;;

(** {9 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
  atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Upgrading from O_2m through Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

let o_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol Am2s_t.O_2m;;

(** {12 Upgrading from S_2m through Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

let s_2m = atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol Am2s_t.S_2m;;

(** {6 Upgrading from Atom_zerotied_cation to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn =
  Azes_t.Atom_zerotied_cation_symbol smb_acn
;;

(** {9 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 in
  atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from H_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let h_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.H_1p;;

(** {12 Upgrading from K_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let k_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.K_1p;;

(** {12 Upgrading from Li_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let li_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Li_1p;;

(** {12 Upgrading from Na_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let na_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Na_1p;;

(** {12 Upgrading from Ni_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let ni_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Ni_1p;;

(** {12 Upgrading from Cu_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

let cu_1p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol Ac1s_t.Cu_1p;;

(** {9 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 in
  atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Mg_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let mg_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Mg_2p;;

(** {12 Upgrading from Ca_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let ca_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Ca_2p;;

(** {12 Upgrading from Fe_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let fe_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Fe_2p;;

(** {12 Upgrading from Zn_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let zn_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Zn_2p;;

(** {12 Upgrading from Cu_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

let cu_2p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol Ac2s_t.Cu_2p;;

(** {9 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

let atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 in
  atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Fe_3p through Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

let fe_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol Ac3s_t.Fe_3p;;

(** {12 Upgrading from Ni_3p through Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

let ni_3p = atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol Ac3s_t.Ni_3p;;

(** {6 Upgrading from Halfbridge to Atom_zerotied.} *)

let atom_zerotied_symbol_of_halfbridge_symbol smb_hbd =
  Azes_t.Halfbridge_symbol smb_hbd
;;

(** {9 Upgrading from Hbc through Halfbridge to Atom_zerotied.} *)

let hbc = atom_zerotied_symbol_of_halfbridge_symbol Hbs_t.Hbc;;

(** {9 Upgrading from Hbd through Halfbridge to Atom_zerotied.} *)

let hbd = atom_zerotied_symbol_of_halfbridge_symbol Hbs_t.Hbd;;

(** {9 Upgrading from Hbs through Halfbridge to Atom_zerotied.} *)

let hbs = atom_zerotied_symbol_of_halfbridge_symbol Hbs_t.Hbs;;

(** {9 Upgrading from Hbt through Halfbridge to Atom_zerotied.} *)

let hbt = atom_zerotied_symbol_of_halfbridge_symbol Hbs_t.Hbt;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied 12 January 2011. *)


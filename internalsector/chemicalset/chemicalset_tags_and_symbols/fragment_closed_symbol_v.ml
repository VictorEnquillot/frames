(** {3 A Symbol for a Fragment_closed.} *)

let nam_mod = "Fragment_closed_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Bzzds_t = Block_zerozero_diatomic_symbol_t
module Bzzds_v = Block_zerozero_diatomic_symbol_v
module Bzzps_t = Block_zerozero_pentatomic_symbol_t
module Bzzps_v = Block_zerozero_pentatomic_symbol_v
module Bzzqs_t = Block_zerozero_tetratomic_symbol_t
module Bzzqs_v = Block_zerozero_tetratomic_symbol_v
module Bzzs_t = Block_zerozero_symbol_t
module Bzzs_v = Block_zerozero_symbol_v
module Bzzts_t = Block_zerozero_triatomic_symbol_t
module Bzzts_v = Block_zerozero_triatomic_symbol_v
module Fcs_t = Fragment_closed_symbol_t
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v

(** {6 Displaying.} *)

let name = function
  | Fcs_t.Fragment_zerozero -> Format.sprintf "%s" "fragment_zerozero"
  | Fcs_t.Block_zerozero_symbol smb_bzz -> 
      Bzzs_v.name smb_bzz
  | Fcs_t.Segment_head_extends_fragment_leaf -> Format.sprintf "%s" "segment_head_extends_fragment_leaf"
;;

let print ppf = function
  | Fcs_t.Fragment_zerozero -> Format.fprintf ppf "%s" "fragment_zerozero"
  | Fcs_t.Block_zerozero_symbol smb_bzz -> 
      Bzzs_v.print ppf smb_bzz
  | Fcs_t.Segment_head_extends_fragment_leaf -> Format.fprintf ppf "%s" "segment_head_extends_fragment_leaf"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found fragment_closed_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fragment_zerozero from Fragment_closed.} *)

(* No Extraction from fragment_zerozero 0. *)

(** {6 Extracting Block_zerozero from Fragment_closed.} *)

let block_zerozero_symbol_off_fragment_closed_symbol = function
  | Fcs_t.Block_zerozero_symbol smb_bzz -> smb_bzz
  | s ->  print_fatal_error
      "block_zerozero_symbol_off_fragment_closed_symbol"
      "Block_zerozero_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied from Block_zerozero from Fragment_closed.} *)

let atom_zerotied_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    Bzzs_v.atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

let atom_zerotied_raregas_symbol_off_fragment_closed_symbol smb_frc =
  let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

let atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc =
  let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

let atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc =
  let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

let halfbridge_symbol_off_fragment_closed_symbol smb_frc =
  let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {9 Extracting Block_zerozero_diatomic from Block_zerozero from Fragment_closed.} *)

let block_zerozero_diatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    Bzzs_v.block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from co_zz 0. *)

(** {9 Extracting Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

let block_zerozero_triatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    Bzzs_v.block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Co2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from co2_zz 0. *)

(** {12 Extracting No2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from no2_zz 0. *)

(** {12 Extracting Oh2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from oh2_zz 0. *)

(** {12 Extracting Sh2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from sh2_zz 0. *)

(** {12 Extracting So2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from so2_zz 0. *)

(** {9 Extracting Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

let block_zerozero_tetratomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    Bzzs_v.block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from cho2_1m 0. *)

(** {12 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from nh2 0. *)

(** {9 Extracting Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

let block_zerozero_pentatomic_symbol_off_fragment_closed_symbol smb_frc =
  let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
    Bzzs_v.block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from ch4_zz 0. *)

(** {12 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Extracting Segment_head_extends_fragment_leaf from Fragment_closed.} *)

(* No Extraction from segment_head_extends_fragment_leaf 0. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_zerozero in Fragment_closed.} *)

(* No Query from fragment_zerozero 0. *)

(** {6 Querying Block_zerozero in Fragment_closed.} *)

let is_block_zerozero_symbol_off_fragment_closed_symbol = function
  | Fcs_t.Block_zerozero_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied in Block_zerozero in Fragment_closed.} *)

let is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      Bzzs_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

let is_atom_zerotied_raregas_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

let is_atom_zerotied_anion_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

let is_atom_zerotied_cation_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Halfbridge in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

let is_halfbridge_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_atom_zerotied_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_fragment_closed_symbol smb_frc in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {9 Querying Block_zerozero_diatomic in Block_zerozero in Fragment_closed.} *)

let is_block_zerozero_diatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      Bzzs_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from co_zz 0. *)

(** {9 Querying Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

let is_block_zerozero_triatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      Bzzs_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Co2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from co2_zz 0. *)

(** {12 Querying No2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from no2_zz 0. *)

(** {12 Querying Oh2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from oh2_zz 0. *)

(** {12 Querying Sh2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from sh2_zz 0. *)

(** {12 Querying So2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from so2_zz 0. *)

(** {9 Querying Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

let is_block_zerozero_tetratomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      Bzzs_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

(* No Query from cho2_1m 0. *)

(** {12 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

(* No Query from nh2 0. *)

(** {9 Querying Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

let is_block_zerozero_pentatomic_symbol_off_fragment_closed_symbol smb_frc =
  if not (is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_closed_symbol smb_frc in
      Bzzs_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from ch4_zz 0. *)

(** {12 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Querying Segment_head_extends_fragment_leaf in Fragment_closed.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)

(** {6 Upgrading from Fragment_zerozero to Fragment_closed.} *)

let fragment_zerozero = Fcs_t.Fragment_zerozero;;

(** {6 Upgrading from Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_block_zerozero_symbol smb_bzz =
  Fcs_t.Block_zerozero_symbol smb_bzz
;;

(** {9 Upgrading from Atom_zerotied through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_aze in
  fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
    fragment_closed_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
    fragment_closed_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
    fragment_closed_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
    fragment_closed_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Block_zerozero_diatomic through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_block_zerozero_diatomic_symbol smb_bzzd =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_bzzd in
  fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Co_zz through Block_zerozero_diatomic through Block_zerozero to Fragment_closed.} *)

let co_zz = fragment_closed_symbol_of_block_zerozero_diatomic_symbol Bzzds_t.Co_zz;;

(** {9 Upgrading from Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_block_zerozero_triatomic_symbol smb_bzzt =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_bzzt in
  fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Co2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let co2_zz = fragment_closed_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Co2_zz;;

(** {12 Upgrading from No2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let no2_zz = fragment_closed_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.No2_zz;;

(** {12 Upgrading from Oh2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let oh2_zz = fragment_closed_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Oh2_zz;;

(** {12 Upgrading from Sh2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let sh2_zz = fragment_closed_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Sh2_zz;;

(** {12 Upgrading from So2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

let so2_zz = fragment_closed_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.So2_zz;;

(** {9 Upgrading from Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq in
  fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Cho2_1m through Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

let cho2_1m = fragment_closed_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Cho2_1m;;

(** {12 Upgrading from Nh2 through Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

let nh2 = fragment_closed_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Nh2;;

(** {9 Upgrading from Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

let fragment_closed_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp in
  fragment_closed_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Ch4_zz through Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

let ch4_zz = fragment_closed_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Ch4_zz;;

(** {12 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

let nh4_zz_1p = fragment_closed_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Nh4_zz_1p;;

(** {6 Upgrading from Segment_head_extends_fragment_leaf to Fragment_closed.} *)

let segment_head_extends_fragment_leaf = Fcs_t.Segment_head_extends_fragment_leaf;;

(** created by ./do_entitysum_symbol_v_ml.sh fragment_closed 12 January 2011. *)


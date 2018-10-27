(** {3 A Symbol for a Block_zerozero.} *)

let nam_mod = "Block_zerozero_symbol_v";;

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
module Azes_v = Atom_zerotied_symbol_v
module Bzzds_t = Block_zerozero_diatomic_symbol_t
module Bzzds_v = Block_zerozero_diatomic_symbol_v
module Bzzps_t = Block_zerozero_pentatomic_symbol_t
module Bzzps_v = Block_zerozero_pentatomic_symbol_v
module Bzzqs_t = Block_zerozero_tetratomic_symbol_t
module Bzzqs_v = Block_zerozero_tetratomic_symbol_v
module Bzzs_t = Block_zerozero_symbol_t
module Bzzts_t = Block_zerozero_triatomic_symbol_t
module Bzzts_v = Block_zerozero_triatomic_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bzzs_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.name smb_aze
  | Bzzs_t.Block_zerozero_diatomic_symbol smb_bzzd -> 
      Bzzds_v.name smb_bzzd
  | Bzzs_t.Block_zerozero_triatomic_symbol smb_bzzt -> 
      Bzzts_v.name smb_bzzt
  | Bzzs_t.Block_zerozero_tetratomic_symbol smb_bzzq -> 
      Bzzqs_v.name smb_bzzq
  | Bzzs_t.Block_zerozero_pentatomic_symbol smb_bzzp -> 
      Bzzps_v.name smb_bzzp
;;

let print ppf = function
  | Bzzs_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.print ppf smb_aze
  | Bzzs_t.Block_zerozero_diatomic_symbol smb_bzzd -> 
      Bzzds_v.print ppf smb_bzzd
  | Bzzs_t.Block_zerozero_triatomic_symbol smb_bzzt -> 
      Bzzts_v.print ppf smb_bzzt
  | Bzzs_t.Block_zerozero_tetratomic_symbol smb_bzzq -> 
      Bzzqs_v.print ppf smb_bzzq
  | Bzzs_t.Block_zerozero_pentatomic_symbol smb_bzzp -> 
      Bzzps_v.print ppf smb_bzzp
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerozero_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Atom_zerotied_symbol smb_aze -> smb_aze
  | s ->  print_fatal_error
      "atom_zerotied_symbol_off_block_zerozero_symbol"
      "Atom_zerotied_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_raregas_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from ar 0. *)

(** {12 Extracting He from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from he 0. *)

(** {12 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from kr 0. *)

(** {12 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from ne 0. *)

(** {12 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from xe 0. *)

(** {9 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aza = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
    Aans_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aza = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
    Aans_v.atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    Acns_v.atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    Acns_v.atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Block_zerozero.} *)

let atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
    Acns_v.atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Block_zerozero.} *)

let halfbridge_symbol_off_block_zerozero_symbol smb_bzz =
  let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Hbc from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbc 0. *)

(** {12 Extracting Hbd from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbd 0. *)

(** {12 Extracting Hbs from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbs 0. *)

(** {12 Extracting Hbt from Halfbridge from Atom_zerotied from Block_zerozero.} *)

(* No Extraction from Hbt 0. *)

(** {6 Extracting Block_zerozero_diatomic from Block_zerozero.} *)

let block_zerozero_diatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_diatomic_symbol smb_bzzd -> smb_bzzd
  | s ->  print_fatal_error
      "block_zerozero_diatomic_symbol_off_block_zerozero_symbol"
      "Block_zerozero_diatomic_symbol" (name s)
;;

(** {9 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero.} *)

(* No Extraction from co_zz 0. *)

(** {6 Extracting Block_zerozero_triatomic from Block_zerozero.} *)

let block_zerozero_triatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_triatomic_symbol smb_bzzt -> smb_bzzt
  | s ->  print_fatal_error
      "block_zerozero_triatomic_symbol_off_block_zerozero_symbol"
      "Block_zerozero_triatomic_symbol" (name s)
;;

(** {9 Extracting Co2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from co2_zz 0. *)

(** {9 Extracting No2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from no2_zz 0. *)

(** {9 Extracting Oh2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from oh2_zz 0. *)

(** {9 Extracting Sh2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from sh2_zz 0. *)

(** {9 Extracting So2_zz from Block_zerozero_triatomic from Block_zerozero.} *)

(* No Extraction from so2_zz 0. *)

(** {6 Extracting Block_zerozero_tetratomic from Block_zerozero.} *)

let block_zerozero_tetratomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_tetratomic_symbol smb_bzzq -> smb_bzzq
  | s ->  print_fatal_error
      "block_zerozero_tetratomic_symbol_off_block_zerozero_symbol"
      "Block_zerozero_tetratomic_symbol" (name s)
;;

(** {9 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero.} *)

(* No Extraction from cho2_1m 0. *)

(** {9 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero.} *)

(* No Extraction from nh2 0. *)

(** {6 Extracting Block_zerozero_pentatomic from Block_zerozero.} *)

let block_zerozero_pentatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_pentatomic_symbol smb_bzzp -> smb_bzzp
  | s ->  print_fatal_error
      "block_zerozero_pentatomic_symbol_off_block_zerozero_symbol"
      "Block_zerozero_pentatomic_symbol" (name s)
;;

(** {9 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero.} *)

(* No Extraction from ch4_zz 0. *)

(** {9 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_raregas_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Ar in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from ar 0. *)

(** {12 Querying He in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from he 0. *)

(** {12 Querying Kr in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from kr 0. *)

(** {12 Querying Ne in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from ne 0. *)

(** {12 Querying Xe in Atom_zerotied_raregas in Atom_zerotied in Block_zerozero.} *)

(* No Query from xe 0. *)

(** {9 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
      Aans_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_anion_minus_two_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_block_zerozero_symbol smb_bzz in
      Aans_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      Acns_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_cation_plus_two_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      Acns_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Block_zerozero.} *)

let is_atom_zerotied_cation_plus_three_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_block_zerozero_symbol smb_bzz in
      Acns_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {9 Querying Halfbridge in Atom_zerotied in Block_zerozero.} *)

let is_halfbridge_symbol_off_block_zerozero_symbol smb_bzz =
  if not (is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Hbc in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbc 0. *)

(** {12 Querying Hbd in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbd 0. *)

(** {12 Querying Hbs in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbs 0. *)

(** {12 Querying Hbt in Halfbridge in Atom_zerotied in Block_zerozero.} *)

(* No Query from Hbt 0. *)

(** {6 Querying Block_zerozero_diatomic in Block_zerozero.} *)

let is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_diatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero.} *)

(* No Query from co_zz 0. *)


(** {6 Querying Block_zerozero_triatomic in Block_zerozero.} *)

let is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_triatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Co2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from co2_zz 0. *)


(** {9 Querying No2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from no2_zz 0. *)


(** {9 Querying Oh2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from oh2_zz 0. *)


(** {9 Querying Sh2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from sh2_zz 0. *)


(** {9 Querying So2_zz in Block_zerozero_triatomic in Block_zerozero.} *)

(* No Query from so2_zz 0. *)


(** {6 Querying Block_zerozero_tetratomic in Block_zerozero.} *)

let is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_tetratomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero.} *)

(* No Query from cho2_1m 0. *)


(** {9 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero.} *)

(* No Query from nh2 0. *)


(** {6 Querying Block_zerozero_pentatomic in Block_zerozero.} *)

let is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol = function
  | Bzzs_t.Block_zerozero_pentatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero.} *)

(* No Query from ch4_zz 0. *)


(** {9 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero.} *)

(* No Query from nh4_zz_1p 0. *)


(** {6 Upgrading from Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_symbol smb_aze =
  Bzzs_t.Atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
  block_zerozero_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let ar = block_zerozero_symbol_of_atom_zerotied_raregas_symbol Args_t.Ar;;

(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let he = block_zerozero_symbol_of_atom_zerotied_raregas_symbol Args_t.He;;

(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let kr = block_zerozero_symbol_of_atom_zerotied_raregas_symbol Args_t.Kr;;

(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let ne = block_zerozero_symbol_of_atom_zerotied_raregas_symbol Args_t.Ne;;

(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Block_zerozero.} *)

let xe = block_zerozero_symbol_of_atom_zerotied_raregas_symbol Args_t.Xe;;

(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
  block_zerozero_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
    block_zerozero_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
    block_zerozero_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
  block_zerozero_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 in
    block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 in
    block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 in
    block_zerozero_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Block_zerozero.} *)

let block_zerozero_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
  block_zerozero_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Block_zerozero.} *)

let hbc = block_zerozero_symbol_of_halfbridge_symbol Hbs_t.Hbc;;

(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Block_zerozero.} *)

let hbd = block_zerozero_symbol_of_halfbridge_symbol Hbs_t.Hbd;;

(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Block_zerozero.} *)

let hbs = block_zerozero_symbol_of_halfbridge_symbol Hbs_t.Hbs;;

(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Block_zerozero.} *)

let hbt = block_zerozero_symbol_of_halfbridge_symbol Hbs_t.Hbt;;

(** {6 Upgrading from Block_zerozero_diatomic to Block_zerozero.} *)

let block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_bzzd =
  Bzzs_t.Block_zerozero_diatomic_symbol smb_bzzd
;;

(** {9 Upgrading from Co_zz through Block_zerozero_diatomic to Block_zerozero.} *)

let co_zz = block_zerozero_symbol_of_block_zerozero_diatomic_symbol Bzzds_t.Co_zz;;

(** {6 Upgrading from Block_zerozero_triatomic to Block_zerozero.} *)

let block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_bzzt =
  Bzzs_t.Block_zerozero_triatomic_symbol smb_bzzt
;;

(** {9 Upgrading from Co2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

let co2_zz = block_zerozero_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Co2_zz;;

(** {9 Upgrading from No2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

let no2_zz = block_zerozero_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.No2_zz;;

(** {9 Upgrading from Oh2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

let oh2_zz = block_zerozero_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Oh2_zz;;

(** {9 Upgrading from Sh2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

let sh2_zz = block_zerozero_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.Sh2_zz;;

(** {9 Upgrading from So2_zz through Block_zerozero_triatomic to Block_zerozero.} *)

let so2_zz = block_zerozero_symbol_of_block_zerozero_triatomic_symbol Bzzts_t.So2_zz;;

(** {6 Upgrading from Block_zerozero_tetratomic to Block_zerozero.} *)

let block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq =
  Bzzs_t.Block_zerozero_tetratomic_symbol smb_bzzq
;;

(** {9 Upgrading from Cho2_1m through Block_zerozero_tetratomic to Block_zerozero.} *)

let cho2_1m = block_zerozero_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Cho2_1m;;

(** {9 Upgrading from Nh2 through Block_zerozero_tetratomic to Block_zerozero.} *)

let nh2 = block_zerozero_symbol_of_block_zerozero_tetratomic_symbol Bzzqs_t.Nh2;;

(** {6 Upgrading from Block_zerozero_pentatomic to Block_zerozero.} *)

let block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp =
  Bzzs_t.Block_zerozero_pentatomic_symbol smb_bzzp
;;

(** {9 Upgrading from Ch4_zz through Block_zerozero_pentatomic to Block_zerozero.} *)

let ch4_zz = block_zerozero_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Ch4_zz;;

(** {9 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic to Block_zerozero.} *)

let nh4_zz_1p = block_zerozero_symbol_of_block_zerozero_pentatomic_symbol Bzzps_t.Nh4_zz_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerozero 12 January 2011. *)


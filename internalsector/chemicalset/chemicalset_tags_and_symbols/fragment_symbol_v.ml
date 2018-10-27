(** {3 A Symbol for a Fragment.} *)

let nam_mod = "Fragment_symbol_v";;

(** {6 Modules.} *)

module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Bobs_t = Block_onebifork_symbol_t
module Bobs_v = Block_onebifork_symbol_v
module Bofs_t = Block_onefork_symbol_t
module Bofs_v = Block_onefork_symbol_v
module Bots_t = Block_onetrifork_symbol_t
module Bots_v = Block_onetrifork_symbol_v
module Bzbs_t = Block_zerobifork_symbol_t
module Bzbs_v = Block_zerobifork_symbol_v
module Bzfs_t = Block_zerofork_symbol_t
module Bzfs_v = Block_zerofork_symbol_v
module Bzqs_t = Block_zeroquadrifork_symbol_t
module Bzqs_v = Block_zeroquadrifork_symbol_v
module Bzts_t = Block_zerotrifork_symbol_t
module Bzts_v = Block_zerotrifork_symbol_v
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
module Fbs_t = Fragment_buried_symbol_t
module Fbs_v = Fragment_buried_symbol_v
module Fcs_t = Fragment_closed_symbol_t
module Fcs_v = Fragment_closed_symbol_v
module Fhs_t = Fragment_head_symbol_t
module Fhs_v = Fragment_head_symbol_v
module Frls_t = Fragment_leaf_symbol_t
module Frls_v = Fragment_leaf_symbol_v
module Frs_t = Fragment_symbol_t

(** {6 Displaying.} *)

let name = function
  | Frs_t.Fragment_closed_symbol smb_frc -> 
      Fcs_v.name smb_frc
  | Frs_t.Fragment_head_symbol smb_frh -> 
      Fhs_v.name smb_frh
  | Frs_t.Fragment_buried_symbol smb_frb -> 
      Fbs_v.name smb_frb
  | Frs_t.Fragment_leaf_symbol smb_frl -> 
      Frls_v.name smb_frl
;;

let print ppf = function
  | Frs_t.Fragment_closed_symbol smb_frc -> 
      Fcs_v.print ppf smb_frc
  | Frs_t.Fragment_head_symbol smb_frh -> 
      Fhs_v.print ppf smb_frh
  | Frs_t.Fragment_buried_symbol smb_frb -> 
      Fbs_v.print ppf smb_frb
  | Frs_t.Fragment_leaf_symbol smb_frl -> 
      Frls_v.print ppf smb_frl
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found fragment_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fragment_closed from Fragment.} *)

let fragment_closed_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_closed_symbol smb_frc -> smb_frc
  | s ->  print_fatal_error
      "fragment_closed_symbol_off_fragment_symbol"
      "Fragment_closed_symbol" (name s)
;;

(** {9 Extracting Fragment_zerozero from Fragment_closed from Fragment.} *)

(* No Extraction from fragment_zerozero 0. *)

(** {9 Extracting Block_zerozero from Fragment_closed from Fragment.} *)

let block_zerozero_symbol_off_fragment_symbol smb_frg =
  let smb_frc = fragment_closed_symbol_off_fragment_symbol smb_frg in
    Fcs_v.block_zerozero_symbol_off_fragment_closed_symbol smb_frc
;;

(** {12 Extracting Atom_zerotied from Block_zerozero from Fragment_closed from Fragment.} *)

let atom_zerotied_symbol_off_fragment_symbol smb_frg =
  let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
    Bzzs_v.atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_diatomic from Block_zerozero from Fragment_closed from Fragment.} *)

let block_zerozero_diatomic_symbol_off_fragment_symbol smb_frg =
  let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
    Bzzs_v.block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_triatomic from Block_zerozero from Fragment_closed from Fragment.} *)

let block_zerozero_triatomic_symbol_off_fragment_symbol smb_frg =
  let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
    Bzzs_v.block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_tetratomic from Block_zerozero from Fragment_closed from Fragment.} *)

let block_zerozero_tetratomic_symbol_off_fragment_symbol smb_frg =
  let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
    Bzzs_v.block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_pentatomic from Block_zerozero from Fragment_closed from Fragment.} *)

let block_zerozero_pentatomic_symbol_off_fragment_symbol smb_frg =
  let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
    Bzzs_v.block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {9 Extracting Segment_head_extends_fragment_leaf from Fragment_closed from Fragment.} *)

(* No Extraction from segment_head_extends_fragment_leaf 0. *)

(** {6 Extracting Fragment_head from Fragment.} *)

let fragment_head_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_head_symbol smb_frh -> smb_frh
  | s ->  print_fatal_error
      "fragment_head_symbol_off_fragment_symbol"
      "Fragment_head_symbol" (name s)
;;

(** {9 Extracting Fragment_head_halfbridge from Fragment_head from Fragment.} *)

(* No Extraction from fragment_head_halfbridge 0. *)

(** {9 Extracting Block_zerofork from Fragment_head from Fragment.} *)

let block_zerofork_symbol_off_fragment_symbol smb_frg =
  let smb_frh = fragment_head_symbol_off_fragment_symbol smb_frg in
    Fhs_v.block_zerofork_symbol_off_fragment_head_symbol smb_frh
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_head from Fragment.} *)

let block_zerobifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_head from Fragment.} *)

let block_zerotrifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_head from Fragment.} *)

let block_zeroquadrifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {9 Extracting Fragment_zerofork from Fragment_head from Fragment.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_head from Fragment.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Extracting Fragment_buried from Fragment.} *)

let fragment_buried_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_buried_symbol smb_frb -> smb_frb
  | s ->  print_fatal_error
      "fragment_buried_symbol_off_fragment_symbol"
      "Fragment_buried_symbol" (name s)
;;

(** {9 Extracting Fragment_onefork from Fragment_buried from Fragment.} *)

(* No Extraction from fragment_onefork 0. *)

(** {9 Extracting Block_onefork from Fragment_buried from Fragment.} *)

let block_onefork_symbol_off_fragment_symbol smb_frg =
  let smb_frb = fragment_buried_symbol_off_fragment_symbol smb_frg in
    Fbs_v.block_onefork_symbol_off_fragment_buried_symbol smb_frb
;;

(** {12 Extracting Block_onebifork from Block_onefork from Fragment_buried from Fragment.} *)

let block_onebifork_symbol_off_fragment_symbol smb_frg =
  let smb_bof = block_onefork_symbol_off_fragment_symbol smb_frg in
    Bofs_v.block_onebifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {12 Extracting Block_onetrifork from Block_onefork from Fragment_buried from Fragment.} *)

let block_onetrifork_symbol_off_fragment_symbol smb_frg =
  let smb_bof = block_onefork_symbol_off_fragment_symbol smb_frg in
    Bofs_v.block_onetrifork_symbol_off_block_onefork_symbol smb_bof
;;

(** {9 Extracting Polysegment_buried_leftextended from Fragment_buried from Fragment.} *)

(* No Extraction from polysegment_buried_leftextended 0. *)

(** {6 Extracting Fragment_leaf from Fragment.} *)

let fragment_leaf_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_leaf_symbol smb_frl -> smb_frl
  | s ->  print_fatal_error
      "fragment_leaf_symbol_off_fragment_symbol"
      "Fragment_leaf_symbol" (name s)
;;

(** {9 Extracting Fragment_halfbridgetail from Fragment_leaf from Fragment.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {9 Extracting Fragment_halfbridge from Fragment_leaf from Fragment.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {9 Extracting Block_zerofork from Fragment_leaf from Fragment.} *)

let block_zerofork_symbol_off_fragment_symbol smb_frg =
  let smb_frl = fragment_leaf_symbol_off_fragment_symbol smb_frg in
    Frls_v.block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_leaf from Fragment.} *)

let block_zerobifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_leaf from Fragment.} *)

let block_zerotrifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_leaf from Fragment.} *)

let block_zeroquadrifork_symbol_off_fragment_symbol smb_frg =
  let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {9 Extracting Fragment_zerofork from Fragment_leaf from Fragment.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Fragment.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_closed in Fragment.} *)

let is_fragment_closed_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_closed_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_zerozero in Fragment_closed in Fragment.} *)

(* No Query from fragment_zerozero 0. *)


(** {9 Querying Block_zerozero in Fragment_closed in Fragment.} *)

let is_block_zerozero_symbol_off_fragment_symbol smb_frg =
  if not (is_fragment_closed_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_frc = fragment_closed_symbol_off_fragment_symbol smb_frg in
      Fcs_v.is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc
    end
;;

(** {12 Querying Atom_zerotied in Block_zerozero in Fragment_closed in Fragment.} *)

let is_atom_zerotied_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerozero_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
      Bzzs_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_diatomic in Block_zerozero in Fragment_closed in Fragment.} *)

let is_block_zerozero_diatomic_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerozero_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
      Bzzs_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_triatomic in Block_zerozero in Fragment_closed in Fragment.} *)

let is_block_zerozero_triatomic_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerozero_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
      Bzzs_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_tetratomic in Block_zerozero in Fragment_closed in Fragment.} *)

let is_block_zerozero_tetratomic_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerozero_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
      Bzzs_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_pentatomic in Block_zerozero in Fragment_closed in Fragment.} *)

let is_block_zerozero_pentatomic_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerozero_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_fragment_symbol smb_frg in
      Bzzs_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {9 Querying Segment_head_extends_fragment_leaf in Fragment_closed in Fragment.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)


(** {6 Querying Fragment_head in Fragment.} *)

let is_fragment_head_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_head_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_head_halfbridge in Fragment_head in Fragment.} *)

(* No Query from fragment_head_halfbridge 0. *)


(** {9 Querying Block_zerofork in Fragment_head in Fragment.} *)

let is_block_zerofork_symbol_off_fragment_symbol smb_frg =
  if not (is_fragment_head_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_frh = fragment_head_symbol_off_fragment_symbol smb_frg in
      Fhs_v.is_block_zerofork_symbol_off_fragment_head_symbol smb_frh
    end
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_head in Fragment.} *)

let is_block_zerobifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_head in Fragment.} *)

let is_block_zerotrifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_head in Fragment.} *)

let is_block_zeroquadrifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {9 Querying Fragment_zerofork in Fragment_head in Fragment.} *)

(* No Query from fragment_zerofork 0. *)


(** {9 Querying Segment_head_extends_fragment_buried in Fragment_head in Fragment.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)


(** {6 Querying Fragment_buried in Fragment.} *)

let is_fragment_buried_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_buried_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_onefork in Fragment_buried in Fragment.} *)

(* No Query from fragment_onefork 0. *)


(** {9 Querying Block_onefork in Fragment_buried in Fragment.} *)

let is_block_onefork_symbol_off_fragment_symbol smb_frg =
  if not (is_fragment_buried_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_frb = fragment_buried_symbol_off_fragment_symbol smb_frg in
      Fbs_v.is_block_onefork_symbol_off_fragment_buried_symbol smb_frb
    end
;;

(** {12 Querying Block_onebifork in Block_onefork in Fragment_buried in Fragment.} *)

let is_block_onebifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_onefork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_fragment_symbol smb_frg in
      Bofs_v.is_block_onebifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {12 Querying Block_onetrifork in Block_onefork in Fragment_buried in Fragment.} *)

let is_block_onetrifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_onefork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bof = block_onefork_symbol_off_fragment_symbol smb_frg in
      Bofs_v.is_block_onetrifork_symbol_off_block_onefork_symbol smb_bof
    end
;;

(** {9 Querying Polysegment_buried_leftextended in Fragment_buried in Fragment.} *)

(* No Query from polysegment_buried_leftextended 0. *)


(** {6 Querying Fragment_leaf in Fragment.} *)

let is_fragment_leaf_symbol_off_fragment_symbol = function
  | Frs_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_halfbridgetail in Fragment_leaf in Fragment.} *)

(* No Query from fragment_halfbridgetail 0. *)


(** {9 Querying Fragment_halfbridge in Fragment_leaf in Fragment.} *)

(* No Query from fragment_halfbridge 0. *)


(** {9 Querying Block_zerofork in Fragment_leaf in Fragment.} *)

let is_block_zerofork_symbol_off_fragment_symbol smb_frg =
  if not (is_fragment_leaf_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_frl = fragment_leaf_symbol_off_fragment_symbol smb_frg in
      Frls_v.is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
    end
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_leaf in Fragment.} *)

let is_block_zerobifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_leaf in Fragment.} *)

let is_block_zerotrifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_leaf in Fragment.} *)

let is_block_zeroquadrifork_symbol_off_fragment_symbol smb_frg =
  if not (is_block_zerofork_symbol_off_fragment_symbol smb_frg)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_symbol smb_frg in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {9 Querying Fragment_zerofork in Fragment_leaf in Fragment.} *)

(* No Query from fragment_zerofork 0. *)


(** {9 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Fragment.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)


(** {6 Upgrading from Fragment_closed to Fragment.} *)

let fragment_symbol_of_fragment_closed_symbol smb_frc =
  Frs_t.Fragment_closed_symbol smb_frc
;;

(** {9 Upgrading from Fragment_zerozero through Fragment_closed to Fragment.} *)

let fragment_zerozero = fragment_symbol_of_fragment_closed_symbol Fcs_t.Fragment_zerozero;;

(** {9 Upgrading from Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_block_zerozero_symbol smb_bzz =
  let smb_frc = Fcs_v.fragment_closed_symbol_of_block_zerozero_symbol smb_bzz in
  fragment_symbol_of_fragment_closed_symbol smb_frc
;;

(** {12 Upgrading from Atom_zerotied through Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_aze in
    fragment_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_diatomic through Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_block_zerozero_diatomic_symbol smb_bzzd =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_bzzd in
    fragment_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_triatomic through Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_block_zerozero_triatomic_symbol smb_bzzt =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_bzzt in
    fragment_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_tetratomic through Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq in
    fragment_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_pentatomic through Block_zerozero through Fragment_closed to Fragment.} *)

let fragment_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp in
    fragment_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {9 Upgrading from Segment_head_extends_fragment_leaf through Fragment_closed to Fragment.} *)

let segment_head_extends_fragment_leaf = fragment_symbol_of_fragment_closed_symbol Fcs_t.Segment_head_extends_fragment_leaf;;

(** {6 Upgrading from Fragment_head to Fragment.} *)

let fragment_symbol_of_fragment_head_symbol smb_frh =
  Frs_t.Fragment_head_symbol smb_frh
;;

(** {9 Upgrading from Fragment_head_halfbridge through Fragment_head to Fragment.} *)

let fragment_head_halfbridge = fragment_symbol_of_fragment_head_symbol Fhs_t.Fragment_head_halfbridge;;

(** {9 Upgrading from Block_zerofork through Fragment_head to Fragment.} *)

let fragment_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frh = Fhs_v.fragment_head_symbol_of_block_zerofork_symbol smb_bzf in
  fragment_symbol_of_fragment_head_symbol smb_frh
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_head to Fragment.} *)

let fragment_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_head to Fragment.} *)

let fragment_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_head to Fragment.} *)

let fragment_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_head to Fragment.} *)

let fragment_zerofork = fragment_symbol_of_fragment_head_symbol Fhs_t.Fragment_zerofork;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_head to Fragment.} *)

let segment_head_extends_fragment_buried = fragment_symbol_of_fragment_head_symbol Fhs_t.Segment_head_extends_fragment_buried;;

(** {6 Upgrading from Fragment_buried to Fragment.} *)

let fragment_symbol_of_fragment_buried_symbol smb_frb =
  Frs_t.Fragment_buried_symbol smb_frb
;;

(** {9 Upgrading from Fragment_onefork through Fragment_buried to Fragment.} *)

let fragment_onefork = fragment_symbol_of_fragment_buried_symbol Fbs_t.Fragment_onefork;;

(** {9 Upgrading from Block_onefork through Fragment_buried to Fragment.} *)

let fragment_symbol_of_block_onefork_symbol smb_bof =
  let smb_frb = Fbs_v.fragment_buried_symbol_of_block_onefork_symbol smb_bof in
  fragment_symbol_of_fragment_buried_symbol smb_frb
;;

(** {12 Upgrading from Block_onebifork through Block_onefork through Fragment_buried to Fragment.} *)

let fragment_symbol_of_block_onebifork_symbol smb_bob =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onebifork_symbol smb_bob in
    fragment_symbol_of_block_onefork_symbol smb_bof
;;

(** {12 Upgrading from Block_onetrifork through Block_onefork through Fragment_buried to Fragment.} *)

let fragment_symbol_of_block_onetrifork_symbol smb_bot =
  let smb_bof = Bofs_v.block_onefork_symbol_of_block_onetrifork_symbol smb_bot in
    fragment_symbol_of_block_onefork_symbol smb_bof
;;

(** {9 Upgrading from Polysegment_buried_leftextended through Fragment_buried to Fragment.} *)

let polysegment_buried_leftextended = fragment_symbol_of_fragment_buried_symbol Fbs_t.Polysegment_buried_leftextended;;

(** {6 Upgrading from Fragment_leaf to Fragment.} *)

let fragment_symbol_of_fragment_leaf_symbol smb_frl =
  Frs_t.Fragment_leaf_symbol smb_frl
;;

(** {9 Upgrading from Fragment_halfbridgetail through Fragment_leaf to Fragment.} *)

let fragment_halfbridgetail = fragment_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridgetail;;

(** {9 Upgrading from Fragment_halfbridge through Fragment_leaf to Fragment.} *)

let fragment_halfbridge = fragment_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridge;;

(** {9 Upgrading from Block_zerofork through Fragment_leaf to Fragment.} *)

let fragment_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frl = Frls_v.fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf in
  fragment_symbol_of_fragment_leaf_symbol smb_frl
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_leaf to Fragment.} *)

let fragment_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_leaf to Fragment.} *)

let fragment_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_leaf to Fragment.} *)

let fragment_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
    fragment_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_leaf to Fragment.} *)

let fragment_zerofork = fragment_symbol_of_fragment_leaf_symbol Frls_t.Fragment_zerofork;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf to Fragment.} *)

let segment_head_extends_fragment_buried = fragment_symbol_of_fragment_leaf_symbol Frls_t.Segment_head_extends_fragment_buried;;

(** created by ./do_entitysum_symbol_v_ml.sh fragment 12 January 2011. *)


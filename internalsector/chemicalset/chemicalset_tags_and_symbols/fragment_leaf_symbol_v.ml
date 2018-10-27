(** {3 A Symbol for a Fragment_leaf.} *)

let nam_mod = "Fragment_leaf_symbol_v";;

(** {6 Modules.} *)

module Bzbs_t = Block_zerobifork_symbol_t
module Bzbs_v = Block_zerobifork_symbol_v
module Bzfs_t = Block_zerofork_symbol_t
module Bzfs_v = Block_zerofork_symbol_v
module Bzqs_t = Block_zeroquadrifork_symbol_t
module Bzqs_v = Block_zeroquadrifork_symbol_v
module Bzts_t = Block_zerotrifork_symbol_t
module Bzts_v = Block_zerotrifork_symbol_v
module Frls_t = Fragment_leaf_symbol_t

(** {6 Displaying.} *)

let name = function
  | Frls_t.Fragment_halfbridgetail -> Format.sprintf "%s" "fragment_halfbridgetail"
  | Frls_t.Fragment_halfbridge -> Format.sprintf "%s" "fragment_halfbridge"
  | Frls_t.Block_zerofork_symbol smb_bzf -> 
      Bzfs_v.name smb_bzf
  | Frls_t.Fragment_zerofork -> Format.sprintf "%s" "fragment_zerofork"
  | Frls_t.Segment_head_extends_fragment_buried -> Format.sprintf "%s" "segment_head_extends_fragment_buried"
;;

let print ppf = function
  | Frls_t.Fragment_halfbridgetail -> Format.fprintf ppf "%s" "fragment_halfbridgetail"
  | Frls_t.Fragment_halfbridge -> Format.fprintf ppf "%s" "fragment_halfbridge"
  | Frls_t.Block_zerofork_symbol smb_bzf -> 
      Bzfs_v.print ppf smb_bzf
  | Frls_t.Fragment_zerofork -> Format.fprintf ppf "%s" "fragment_zerofork"
  | Frls_t.Segment_head_extends_fragment_buried -> Format.fprintf ppf "%s" "segment_head_extends_fragment_buried"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found fragment_leaf_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fragment_halfbridgetail from Fragment_leaf.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {6 Extracting Fragment_halfbridge from Fragment_leaf.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {6 Extracting Block_zerofork from Fragment_leaf.} *)

let block_zerofork_symbol_off_fragment_leaf_symbol = function
  | Frls_t.Block_zerofork_symbol smb_bzf -> smb_bzf
  | s ->  print_fatal_error
      "block_zerofork_symbol_off_fragment_leaf_symbol"
      "Block_zerofork_symbol" (name s)
;;

(** {9 Extracting Block_zerobifork from Block_zerofork from Fragment_leaf.} *)

let block_zerobifork_symbol_off_fragment_leaf_symbol smb_frl =
  let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Ch_zsc from Block_zerobifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from ch_zsc 0. *)

(** {12 Extracting Ch_zsd from Block_zerobifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from ch_zsd 0. *)

(** {12 Extracting Nh_zs2 from Block_zerobifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from nh_zs2 0. *)

(** {9 Extracting Block_zerotrifork from Block_zerofork from Fragment_leaf.} *)

let block_zerotrifork_symbol_off_fragment_leaf_symbol smb_frl =
  let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Ch_s3 from Block_zerotrifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from ch_s3 0. *)

(** {12 Extracting N_s3 from Block_zerotrifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from n_s3 0. *)

(** {9 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_leaf.} *)

let block_zeroquadrifork_symbol_off_fragment_leaf_symbol smb_frl =
  let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting C_q from Block_zeroquadrifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from c_q 0. *)

(** {12 Extracting N_q_1p from Block_zeroquadrifork from Block_zerofork from Fragment_leaf.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Extracting Fragment_zerofork from Fragment_leaf.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {6 Extracting Segment_head_extends_fragment_buried from Fragment_leaf.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_halfbridgetail in Fragment_leaf.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {6 Querying Fragment_halfbridge in Fragment_leaf.} *)

(* No Query from fragment_halfbridge 0. *)

(** {6 Querying Block_zerofork in Fragment_leaf.} *)

let is_block_zerofork_symbol_off_fragment_leaf_symbol = function
  | Frls_t.Block_zerofork_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_zerobifork in Block_zerofork in Fragment_leaf.} *)

let is_block_zerobifork_symbol_off_fragment_leaf_symbol smb_frl =
  if not (is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Ch_zsc in Block_zerobifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from ch_zsc 0. *)

(** {12 Querying Ch_zsd in Block_zerobifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from ch_zsd 0. *)

(** {12 Querying Nh_zs2 in Block_zerobifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from nh_zs2 0. *)

(** {9 Querying Block_zerotrifork in Block_zerofork in Fragment_leaf.} *)

let is_block_zerotrifork_symbol_off_fragment_leaf_symbol smb_frl =
  if not (is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Ch_s3 in Block_zerotrifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from ch_s3 0. *)

(** {12 Querying N_s3 in Block_zerotrifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from n_s3 0. *)

(** {9 Querying Block_zeroquadrifork in Block_zerofork in Fragment_leaf.} *)

let is_block_zeroquadrifork_symbol_off_fragment_leaf_symbol smb_frl =
  if not (is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_fragment_leaf_symbol smb_frl in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying C_q in Block_zeroquadrifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from c_q 0. *)

(** {12 Querying N_q_1p in Block_zeroquadrifork in Block_zerofork in Fragment_leaf.} *)

(* No Query from n_q_1p 0. *)

(** {6 Querying Fragment_zerofork in Fragment_leaf.} *)

(* No Query from fragment_zerofork 0. *)

(** {6 Querying Segment_head_extends_fragment_buried in Fragment_leaf.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Upgrading from Fragment_halfbridgetail to Fragment_leaf.} *)

let fragment_halfbridgetail = Frls_t.Fragment_halfbridgetail;;

(** {6 Upgrading from Fragment_halfbridge to Fragment_leaf.} *)

let fragment_halfbridge = Frls_t.Fragment_halfbridge;;

(** {6 Upgrading from Block_zerofork to Fragment_leaf.} *)

let fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf =
  Frls_t.Block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Block_zerobifork through Block_zerofork to Fragment_leaf.} *)

let fragment_leaf_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
  fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Ch_zsc through Block_zerobifork through Block_zerofork to Fragment_leaf.} *)

let ch_zsc = fragment_leaf_symbol_of_block_zerobifork_symbol Bzbs_t.Ch_zsc;;

(** {12 Upgrading from Ch_zsd through Block_zerobifork through Block_zerofork to Fragment_leaf.} *)

let ch_zsd = fragment_leaf_symbol_of_block_zerobifork_symbol Bzbs_t.Ch_zsd;;

(** {12 Upgrading from Nh_zs2 through Block_zerobifork through Block_zerofork to Fragment_leaf.} *)

let nh_zs2 = fragment_leaf_symbol_of_block_zerobifork_symbol Bzbs_t.Nh_zs2;;

(** {9 Upgrading from Block_zerotrifork through Block_zerofork to Fragment_leaf.} *)

let fragment_leaf_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
  fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Ch_s3 through Block_zerotrifork through Block_zerofork to Fragment_leaf.} *)

let ch_s3 = fragment_leaf_symbol_of_block_zerotrifork_symbol Bzts_t.Ch_s3;;

(** {12 Upgrading from N_s3 through Block_zerotrifork through Block_zerofork to Fragment_leaf.} *)

let n_s3 = fragment_leaf_symbol_of_block_zerotrifork_symbol Bzts_t.N_s3;;

(** {9 Upgrading from Block_zeroquadrifork through Block_zerofork to Fragment_leaf.} *)

let fragment_leaf_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
  fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from C_q through Block_zeroquadrifork through Block_zerofork to Fragment_leaf.} *)

let c_q = fragment_leaf_symbol_of_block_zeroquadrifork_symbol Bzqs_t.C_q;;

(** {12 Upgrading from N_q_1p through Block_zeroquadrifork through Block_zerofork to Fragment_leaf.} *)

let n_q_1p = fragment_leaf_symbol_of_block_zeroquadrifork_symbol Bzqs_t.N_q_1p;;

(** {6 Upgrading from Fragment_zerofork to Fragment_leaf.} *)

let fragment_zerofork = Frls_t.Fragment_zerofork;;

(** {6 Upgrading from Segment_head_extends_fragment_buried to Fragment_leaf.} *)

let segment_head_extends_fragment_buried = Frls_t.Segment_head_extends_fragment_buried;;

(** created by ./do_entitysum_symbol_v_ml.sh fragment_leaf 12 January 2011. *)


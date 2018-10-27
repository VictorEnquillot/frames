(** {3 A Symbol for a Grouping.} *)

let nam_cod = "grouping_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module _v = Empty_v
module Fls_v = Fragment_leaf_symbol_v
module Gps_v = Grouping_polyfragment_symbol_v
module Gbs_v = Grouping_bridged_symbol_v


let name = function
  | Grs_v _ ->
      _v.name _
  | Grs_v smb_frl ->
      Fls_v.name smb_frl
  | Grs_v smb_grp ->
      Gps_v.name smb_grp
  | Grs_v smb_grb ->
      Gbs_v.name smb_grb
;;


let print ppf = function
  | Grs_v _ ->
      _v.print ppf _
  | Grs_v smb_frl ->
      Fls_v.print ppf smb_frl
  | Grs_v smb_grp ->
      Gps_v.print ppf smb_grp
  | Grs_v smb_grb ->
      Gbs_v.print ppf smb_grb
;;


(** {6 Extracting.} *)

let empty_off_grouping_symbol = function
  | Grs_v _ -> _
  | s -> Erm_v.print_fatal_error nam_cod
     "empty_off_grouping_symbol"
     "Empty"
     (name s)
    "check"
;;

let fragment_leaf_symbol_off_grouping_symbol = function
  | Grs_v smb_frl -> smb_frl
  | s -> Erm_v.print_fatal_error nam_cod
     "fragment_leaf_symbol_off_grouping_symbol"
     "Fragment_leaf_symbol"
     (name s)
    "check"
;;

let block_zerofork_symbol_off_grouping_symbol smb_grg =
  let smb_frl = fragment_leaf_symbol_off_grouping_symbol smb_grg in
    Fls_v_off_fragment_leaf_symbol smb_frl
;;

let block_zerobifork_symbol_off_grouping_symbol smb_grg =
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_off_grouping_symbol smb_grg =
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_off_grouping_symbol smb_grg =
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
    B0s_v_off_block_zerofork_symbol smb_bl0
;;

let grouping_polyfragment_symbol_off_grouping_symbol = function
  | Grs_v smb_grp -> smb_grp
  | s -> Erm_v.print_fatal_error nam_cod
     "grouping_polyfragment_symbol_off_grouping_symbol"
     "Grouping_polyfragment_symbol"
     (name s)
    "check"
;;

let grouping_bridged_symbol_off_grouping_symbol = function
  | Grs_v smb_grb -> smb_grb
  | s -> Erm_v.print_fatal_error nam_cod
     "grouping_bridged_symbol_off_grouping_symbol"
     "Grouping_bridged_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_empty_off_grouping_symbol = function
  | Grouping_symbol_t.Empty _ -> true
  | _ -> false
;;

let is_fragment_leaf_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

let is_block_zerofork_symbol_off_grouping_symbol smb_grg =
  if not (is_fragment_leaf_symbol_off_grouping_symbol smb_grg)
  then false
  else
    begin
  let smb_frl = fragment_leaf_symbol_off_grouping_symbol smb_grg in
      Fls_v.is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
    end
;;

let is_block_zerobifork_symbol_off_grouping_symbol smb_grg =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grg)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
      B0s_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zerotrifork_symbol_off_grouping_symbol smb_grg =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grg)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
      B0s_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_block_zeroquadrifork_symbol_off_grouping_symbol smb_grg =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grg)
  then false
  else
    begin
  let smb_bl0 = block_zerofork_symbol_off_grouping_symbol smb_grg in
      B0s_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bl0
    end
;;

let is_grouping_polyfragment_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Grouping_polyfragment_symbol _ -> true
  | _ -> false
;;

let is_grouping_bridged_symbol_off_grouping_symbol = function
  | Grouping_symbol_t.Grouping_bridged_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let grouping_symbol_of_empty _ =
Grs_v.empty _
;;

let grouping_symbol_of_fragment_leaf_symbol smb_frl =
Grs_v.fragment_leaf_symbol smb_frl
;;

let fragment_leaf_symbol_of_fragment_leaf_symbol smb_frl =
Fls_v.fragment_leaf_symbol smb_frl
;;

let fragment_leaf_symbol_of_fragment_leaf_symbol smb_frl =
Fls_v.fragment_leaf_symbol smb_frl
;;

let fragment_leaf_symbol_of_block_zerofork_symbol smb_bl0 =
  let smb_frl = Fls_v.fragment_leaf_symbol_of_block_zerofork_symbol smb_bl0 in
grouping_symbol_of_fragment_leaf_symbol smb_frl
;;

let block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
grouping_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerobifork_symbol_of_fragment_leaf_symbol smb_frl =
B0bs_v.fragment_leaf_symbol smb_frl
;;

let block_zerobifork_symbol_of_fragment_leaf_symbol smb_frl =
B0bs_v.fragment_leaf_symbol smb_frl
;;

let block_zerobifork_symbol_of_fragment_leaf_symbol smb_frl =
B0bs_v.fragment_leaf_symbol smb_frl
;;

let block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
grouping_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zerotrifork_symbol_of_fragment_leaf_symbol smb_frl =
B0ts_v.fragment_leaf_symbol smb_frl
;;

let block_zerotrifork_symbol_of_fragment_leaf_symbol smb_frl =
B0ts_v.fragment_leaf_symbol smb_frl
;;

let block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bl0 = B0s_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
grouping_symbol_of_block_zerofork_symbol smb_bl0
;;

let block_zeroquadrifork_symbol_of_fragment_leaf_symbol smb_frl =
B0qs_v.fragment_leaf_symbol smb_frl
;;

let block_zeroquadrifork_symbol_of_fragment_leaf_symbol smb_frl =
B0qs_v.fragment_leaf_symbol smb_frl
;;

let fragment_leaf_symbol_of_fragment_leaf_symbol smb_frl =
Fls_v.fragment_leaf_symbol smb_frl
;;

let fragment_leaf_symbol_of_fragment_leaf_symbol smb_frl =
Fls_v.fragment_leaf_symbol smb_frl
;;

let grouping_symbol_of_grouping_polyfragment_symbol smb_grp =
Grs_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_polyfragment_symbol_of_grouping_polyfragment_symbol smb_grp =
Gps_v.grouping_polyfragment_symbol smb_grp
;;

let grouping_symbol_of_grouping_bridged_symbol smb_grb =
Grs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;

let grouping_bridged_symbol_of_grouping_bridged_symbol smb_grb =
Gbs_v.grouping_bridged_symbol smb_grb
;;



(** created by ./generator grouping v symbol at 11:8 26 Apr 2011. *)




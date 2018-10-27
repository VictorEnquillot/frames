(** {3 A Symbol for a Grouping.} *)

let nam_mod = "Grouping_symbol_v";;

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
module Frls_v = Fragment_leaf_symbol_v
module Gbs_t = Grouping_bridged_symbol_t
module Gbs_v = Grouping_bridged_symbol_v
module Gps_t = Grouping_polyfragment_symbol_t
module Gps_v = Grouping_polyfragment_symbol_v
module Grs_t = Grouping_symbol_t

(** {6 Displaying.} *)

let name = function
  | Grs_t.Empty -> Format.sprintf "%s" "empty"
  | Grs_t.Fragment_leaf_symbol smb_frl -> 
      Frls_v.name smb_frl
  | Grs_t.Grouping_polyfragment_symbol smb_gpf -> 
      Gps_v.name smb_gpf
  | Grs_t.Grouping_bridged_symbol smb_grb -> 
      Gbs_v.name smb_grb
;;

let print ppf = function
  | Grs_t.Empty -> Format.fprintf ppf "%s" "empty"
  | Grs_t.Fragment_leaf_symbol smb_frl -> 
      Frls_v.print ppf smb_frl
  | Grs_t.Grouping_polyfragment_symbol smb_gpf -> 
      Gps_v.print ppf smb_gpf
  | Grs_t.Grouping_bridged_symbol smb_grb -> 
      Gbs_v.print ppf smb_grb
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found grouping_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Empty from Grouping.} *)

(* No Extraction from empty 0. *)

(** {6 Extracting Fragment_leaf from Grouping.} *)

let fragment_leaf_symbol_off_grouping_symbol = function
  | Grs_t.Fragment_leaf_symbol smb_frl -> smb_frl
  | s ->  print_fatal_error
      "fragment_leaf_symbol_off_grouping_symbol"
      "Fragment_leaf_symbol" (name s)
;;

(** {9 Extracting Fragment_halfbridgetail from Fragment_leaf from Grouping.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {9 Extracting Fragment_halfbridge from Fragment_leaf from Grouping.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {9 Extracting Block_zerofork from Fragment_leaf from Grouping.} *)

let block_zerofork_symbol_off_grouping_symbol smb_grp =
  let smb_frl = fragment_leaf_symbol_off_grouping_symbol smb_grp in
    Frls_v.block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_leaf from Grouping.} *)

let block_zerobifork_symbol_off_grouping_symbol smb_grp =
  let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_leaf from Grouping.} *)

let block_zerotrifork_symbol_off_grouping_symbol smb_grp =
  let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_leaf from Grouping.} *)

let block_zeroquadrifork_symbol_off_grouping_symbol smb_grp =
  let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {9 Extracting Fragment_zerofork from Fragment_leaf from Grouping.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Grouping.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Extracting Grouping_polyfragment from Grouping.} *)

let grouping_polyfragment_symbol_off_grouping_symbol = function
  | Grs_t.Grouping_polyfragment_symbol smb_gpf -> smb_gpf
  | s ->  print_fatal_error
      "grouping_polyfragment_symbol_off_grouping_symbol"
      "Grouping_polyfragment_symbol" (name s)
;;

(** {9 Extracting DiMethineTriMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from DiMethineTriMethyl 0. *)

(** {9 Extracting Ethcaracidmethyllamine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Ethcaracidmethyllamine 0. *)

(** {9 Extracting Ethcaracidmethylramine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Ethcaracidmethylramine 0. *)

(** {9 Extracting Ethineacidlamine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Ethineacidlamine 0. *)

(** {9 Extracting Ethineacidramine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Ethineacidramine 0. *)

(** {9 Extracting Guanidine from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Guanidine 0. *)

(** {9 Extracting Guanidinium from Grouping_polyfragment from Grouping.} *)

(* No Extraction from Guanidinium 0. *)

(** {9 Extracting MetheneMethineDiMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from MetheneMethineDiMethyl 0. *)

(** {9 Extracting MethineDiMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from MethineDiMethyl 0. *)

(** {9 Extracting MethineEthylMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from MethineEthylMethyl 0. *)

(** {9 Extracting MethinolMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from MethinolMethyl 0. *)

(** {9 Extracting TriMetheneGuanidinium from Grouping_polyfragment from Grouping.} *)

(* No Extraction from TriMetheneGuanidinium 0. *)

(** {9 Extracting TriMethineTetraMethyl from Grouping_polyfragment from Grouping.} *)

(* No Extraction from TriMethineTetraMethyl 0. *)

(** {6 Extracting Grouping_bridged from Grouping.} *)

let grouping_bridged_symbol_off_grouping_symbol = function
  | Grs_t.Grouping_bridged_symbol smb_grb -> smb_grb
  | s ->  print_fatal_error
      "grouping_bridged_symbol_off_grouping_symbol"
      "Grouping_bridged_symbol" (name s)
;;

(** {9 Extracting Benzale from Grouping_bridged from Grouping.} *)

(* No Extraction from Benzale 0. *)

(** {9 Extracting Benzole from Grouping_bridged from Grouping.} *)

(* No Extraction from Benzole 0. *)

(** {9 Extracting Benzyl from Grouping_bridged from Grouping.} *)

(* No Extraction from Benzyl 0. *)

(** {9 Extracting Indole from Grouping_bridged from Grouping.} *)

(* No Extraction from Indole 0. *)

(** {9 Extracting Metheneimidazole from Grouping_bridged from Grouping.} *)

(* No Extraction from Metheneimidazole 0. *)

(** {9 Extracting MetheneIndole from Grouping_bridged from Grouping.} *)

(* No Extraction from MetheneIndole 0. *)

(** {9 Extracting Dimethonecarbonhydroxyldimethone from Grouping_bridged from Grouping.} *)

(* No Extraction from Dimethonecarbonhydroxyldimethone 0. *)

(** {9 Extracting Dimethone from Grouping_bridged from Grouping.} *)

(* No Extraction from Dimethone 0. *)

(** {9 Extracting Phenol from Grouping_bridged from Grouping.} *)

(* No Extraction from Phenol 0. *)

(** {9 Extracting Pyrrole from Grouping_bridged from Grouping.} *)

(* No Extraction from Pyrrole 0. *)

(** {9 Extracting Methenephenol from Grouping_bridged from Grouping.} *)

(* No Extraction from Methenephenol 0. *)

(** {6 Querying.} *)

(** {6 Querying Empty in Grouping.} *)

(* No Query from empty 0. *)

(** {6 Querying Fragment_leaf in Grouping.} *)

let is_fragment_leaf_symbol_off_grouping_symbol = function
  | Grs_t.Fragment_leaf_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_halfbridgetail in Fragment_leaf in Grouping.} *)

(* No Query from fragment_halfbridgetail 0. *)


(** {9 Querying Fragment_halfbridge in Fragment_leaf in Grouping.} *)

(* No Query from fragment_halfbridge 0. *)


(** {9 Querying Block_zerofork in Fragment_leaf in Grouping.} *)

let is_block_zerofork_symbol_off_grouping_symbol smb_grp =
  if not (is_fragment_leaf_symbol_off_grouping_symbol smb_grp)
  then false
  else
    begin
      let smb_frl = fragment_leaf_symbol_off_grouping_symbol smb_grp in
      Frls_v.is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
    end
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_leaf in Grouping.} *)

let is_block_zerobifork_symbol_off_grouping_symbol smb_grp =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grp)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_leaf in Grouping.} *)

let is_block_zerotrifork_symbol_off_grouping_symbol smb_grp =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grp)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_leaf in Grouping.} *)

let is_block_zeroquadrifork_symbol_off_grouping_symbol smb_grp =
  if not (is_block_zerofork_symbol_off_grouping_symbol smb_grp)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_grouping_symbol smb_grp in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {9 Querying Fragment_zerofork in Fragment_leaf in Grouping.} *)

(* No Query from fragment_zerofork 0. *)


(** {9 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Grouping.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)


(** {6 Querying Grouping_polyfragment in Grouping.} *)

let is_grouping_polyfragment_symbol_off_grouping_symbol = function
  | Grs_t.Grouping_polyfragment_symbol _ -> true
  | _ -> false
;;

(** {9 Querying DiMethineTriMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from DiMethineTriMethyl 0. *)


(** {9 Querying Ethcaracidmethyllamine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethcaracidmethyllamine 0. *)


(** {9 Querying Ethcaracidmethylramine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethcaracidmethylramine 0. *)


(** {9 Querying Ethineacidlamine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethineacidlamine 0. *)


(** {9 Querying Ethineacidramine in Grouping_polyfragment in Grouping.} *)

(* No Query from Ethineacidramine 0. *)


(** {9 Querying Guanidine in Grouping_polyfragment in Grouping.} *)

(* No Query from Guanidine 0. *)


(** {9 Querying Guanidinium in Grouping_polyfragment in Grouping.} *)

(* No Query from Guanidinium 0. *)


(** {9 Querying MetheneMethineDiMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MetheneMethineDiMethyl 0. *)


(** {9 Querying MethineDiMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethineDiMethyl 0. *)


(** {9 Querying MethineEthylMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethineEthylMethyl 0. *)


(** {9 Querying MethinolMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from MethinolMethyl 0. *)


(** {9 Querying TriMetheneGuanidinium in Grouping_polyfragment in Grouping.} *)

(* No Query from TriMetheneGuanidinium 0. *)


(** {9 Querying TriMethineTetraMethyl in Grouping_polyfragment in Grouping.} *)

(* No Query from TriMethineTetraMethyl 0. *)


(** {6 Querying Grouping_bridged in Grouping.} *)

let is_grouping_bridged_symbol_off_grouping_symbol = function
  | Grs_t.Grouping_bridged_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Benzale in Grouping_bridged in Grouping.} *)

(* No Query from Benzale 0. *)


(** {9 Querying Benzole in Grouping_bridged in Grouping.} *)

(* No Query from Benzole 0. *)


(** {9 Querying Benzyl in Grouping_bridged in Grouping.} *)

(* No Query from Benzyl 0. *)


(** {9 Querying Indole in Grouping_bridged in Grouping.} *)

(* No Query from Indole 0. *)


(** {9 Querying Metheneimidazole in Grouping_bridged in Grouping.} *)

(* No Query from Metheneimidazole 0. *)


(** {9 Querying MetheneIndole in Grouping_bridged in Grouping.} *)

(* No Query from MetheneIndole 0. *)


(** {9 Querying Dimethonecarbonhydroxyldimethone in Grouping_bridged in Grouping.} *)

(* No Query from Dimethonecarbonhydroxyldimethone 0. *)


(** {9 Querying Dimethone in Grouping_bridged in Grouping.} *)

(* No Query from Dimethone 0. *)


(** {9 Querying Phenol in Grouping_bridged in Grouping.} *)

(* No Query from Phenol 0. *)


(** {9 Querying Pyrrole in Grouping_bridged in Grouping.} *)

(* No Query from Pyrrole 0. *)


(** {9 Querying Methenephenol in Grouping_bridged in Grouping.} *)

(* No Query from Methenephenol 0. *)


(** {6 Upgrading from Empty to Grouping.} *)

let empty = Grs_t.Empty;;

(** {6 Upgrading from Fragment_leaf to Grouping.} *)

let grouping_symbol_of_fragment_leaf_symbol smb_frl =
  Grs_t.Fragment_leaf_symbol smb_frl
;;

(** {9 Upgrading from Fragment_halfbridgetail through Fragment_leaf to Grouping.} *)

let fragment_halfbridgetail = grouping_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridgetail;;

(** {9 Upgrading from Fragment_halfbridge through Fragment_leaf to Grouping.} *)

let fragment_halfbridge = grouping_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridge;;

(** {9 Upgrading from Block_zerofork through Fragment_leaf to Grouping.} *)

let grouping_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frl = Frls_v.fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf in
  grouping_symbol_of_fragment_leaf_symbol smb_frl
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_leaf to Grouping.} *)

let grouping_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
    grouping_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_leaf to Grouping.} *)

let grouping_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
    grouping_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_leaf to Grouping.} *)

let grouping_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
    grouping_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_leaf to Grouping.} *)

let fragment_zerofork = grouping_symbol_of_fragment_leaf_symbol Frls_t.Fragment_zerofork;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf to Grouping.} *)

let segment_head_extends_fragment_buried = grouping_symbol_of_fragment_leaf_symbol Frls_t.Segment_head_extends_fragment_buried;;

(** {6 Upgrading from Grouping_polyfragment to Grouping.} *)

let grouping_symbol_of_grouping_polyfragment_symbol smb_gpf =
  Grs_t.Grouping_polyfragment_symbol smb_gpf
;;

(** {9 Upgrading from DiMethineTriMethyl through Grouping_polyfragment to Grouping.} *)

let dimethinetrimethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.DiMethineTriMethyl;;

(** {9 Upgrading from Ethcaracidmethyllamine through Grouping_polyfragment to Grouping.} *)

let ethcaracidmethyllamine = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Ethcaracidmethyllamine;;

(** {9 Upgrading from Ethcaracidmethylramine through Grouping_polyfragment to Grouping.} *)

let ethcaracidmethylramine = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Ethcaracidmethylramine;;

(** {9 Upgrading from Ethineacidlamine through Grouping_polyfragment to Grouping.} *)

let ethineacidlamine = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Ethineacidlamine;;

(** {9 Upgrading from Ethineacidramine through Grouping_polyfragment to Grouping.} *)

let ethineacidramine = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Ethineacidramine;;

(** {9 Upgrading from Guanidine through Grouping_polyfragment to Grouping.} *)

let guanidine = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Guanidine;;

(** {9 Upgrading from Guanidinium through Grouping_polyfragment to Grouping.} *)

let guanidinium = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.Guanidinium;;

(** {9 Upgrading from MetheneMethineDiMethyl through Grouping_polyfragment to Grouping.} *)

let methenemethinedimethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.MetheneMethineDiMethyl;;

(** {9 Upgrading from MethineDiMethyl through Grouping_polyfragment to Grouping.} *)

let methinedimethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.MethineDiMethyl;;

(** {9 Upgrading from MethineEthylMethyl through Grouping_polyfragment to Grouping.} *)

let methineethylmethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.MethineEthylMethyl;;

(** {9 Upgrading from MethinolMethyl through Grouping_polyfragment to Grouping.} *)

let methinolmethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.MethinolMethyl;;

(** {9 Upgrading from TriMetheneGuanidinium through Grouping_polyfragment to Grouping.} *)

let trimetheneguanidinium = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.TriMetheneGuanidinium;;

(** {9 Upgrading from TriMethineTetraMethyl through Grouping_polyfragment to Grouping.} *)

let trimethinetetramethyl = grouping_symbol_of_grouping_polyfragment_symbol Gps_t.TriMethineTetraMethyl;;

(** {6 Upgrading from Grouping_bridged to Grouping.} *)

let grouping_symbol_of_grouping_bridged_symbol smb_grb =
  Grs_t.Grouping_bridged_symbol smb_grb
;;

(** {9 Upgrading from Benzale through Grouping_bridged to Grouping.} *)

let benzale = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Benzale;;

(** {9 Upgrading from Benzole through Grouping_bridged to Grouping.} *)

let benzole = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Benzole;;

(** {9 Upgrading from Benzyl through Grouping_bridged to Grouping.} *)

let benzyl = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Benzyl;;

(** {9 Upgrading from Indole through Grouping_bridged to Grouping.} *)

let indole = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Indole;;

(** {9 Upgrading from Metheneimidazole through Grouping_bridged to Grouping.} *)

let metheneimidazole = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Metheneimidazole;;

(** {9 Upgrading from MetheneIndole through Grouping_bridged to Grouping.} *)

let metheneindole = grouping_symbol_of_grouping_bridged_symbol Gbs_t.MetheneIndole;;

(** {9 Upgrading from Dimethonecarbonhydroxyldimethone through Grouping_bridged to Grouping.} *)

let dimethonecarbonhydroxyldimethone = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Dimethonecarbonhydroxyldimethone;;

(** {9 Upgrading from Dimethone through Grouping_bridged to Grouping.} *)

let dimethone = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Dimethone;;

(** {9 Upgrading from Phenol through Grouping_bridged to Grouping.} *)

let phenol = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Phenol;;

(** {9 Upgrading from Pyrrole through Grouping_bridged to Grouping.} *)

let pyrrole = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Pyrrole;;

(** {9 Upgrading from Methenephenol through Grouping_bridged to Grouping.} *)

let methenephenol = grouping_symbol_of_grouping_bridged_symbol Gbs_t.Methenephenol;;

(** created by ./do_entitysum_symbol_v_ml.sh grouping 12 January 2011. *)


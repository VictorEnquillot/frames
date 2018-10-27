(** {3 A Tag functionalities for a Hsbf_single.} *)

let mod_nam = "Hsbf_single_tag_v";;

(** {6 Modules.} *)

module Hsi_v = Hsbf_single_index_v
module Hss_v = Hsbf_single_symbol_v
module HsS_v = Hsbf_single_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hss_v.print HsS_v.print Hsi_v.print 
;;

let name = 
  Tag_v.name Hss_v.name HsS_v.name Hsi_v.name 
;;

(** {3 A Tag functionalities for a Hsbf_pack.} *)

let mod_nam = "Hsbf_pack_tag_v";;

(** {6 Modules.} *)

module Hpi_v = Hsbf_pack_index_v
module Hps_v = Hsbf_pack_symbol_v
module HpS_v = Hsbf_pack_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hps_v.print HpS_v.print Hpi_v.print 
;;

let name = 
  Tag_v.name Hps_v.name HpS_v.name Hpi_v.name 
;;

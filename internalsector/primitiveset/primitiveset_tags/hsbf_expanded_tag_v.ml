(** {3 A Tag functionalities for a Hsbf_expanded.} *)

let mod_nam = "Hsbf_expanded_tag_v";;

(** {6 Modules.} *)

module Hxi_v = Hsbf_expanded_index_v
module Hxs_v = Hsbf_expanded_symbol_v
module HxS_v = Hsbf_expanded_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hxs_v.print HxS_v.print Hxi_v.print 
;;

let name = 
  Tag_v.name Hxs_v.name HxS_v.name Hxi_v.name 
;;

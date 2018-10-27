(** {3 A Tag functionalities for a Hsbf_bundle.} *)

let mod_nam = "Hsbf_bundle_tag_v";;

(** {6 Modules.} *)

module Hbi_v = Hsbf_bundle_index_v
module Hbs_v = Hsbf_bundle_symbol_v
module HbS_v = Hsbf_bundle_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hbs_v.print HbS_v.print Hbi_v.print 
;;

let name = 
  Tag_v.name Hbs_v.name HbS_v.name Hbi_v.name 
;;

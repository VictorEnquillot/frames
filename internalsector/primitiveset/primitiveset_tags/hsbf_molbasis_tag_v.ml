(** {3 A Tag functionalities for a Hsbf_molbasis.} *)

let mod_nam = "Hsbf_molbasis_tag_v";;

(** {6 Modules.} *)

module Hmi_v = Hsbf_molbasis_index_v
module Hms_v = Hsbf_molbasis_symbol_v
module HmS_v = Hsbf_molbasis_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hms_v.print HmS_v.print Hmi_v.print 
;;

let name = 
  Tag_v.name Hms_v.name HmS_v.name Hmi_v.name 
;;

(** {3 A Tag functionalities for Point.} *)

let mod_nam = "Point_tag_v";;

(** {6 Modules.} *)

module Pni_v = Point_index_v
module Pns_v = Point_symbol_v
module PnS_v = Point_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Pns_v.print PnS_v.print Pni_v.print 
;;

let name = 
  Tag_v.name Pns_v.name PnS_v.name Pni_v.name 
;;
